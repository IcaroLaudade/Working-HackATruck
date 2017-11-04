//
//  MapViewController.swift
//  WorkingZCriarConta
//
//  Created by Student on 23/10/17.
//  Copyright © 2017 Student. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation
class MyPointAnnotation : MKPointAnnotation {
    var pinTintColor: UIColor?
    //Criando imagem pra colocar no botão dentro da annotation "Nome pizza estava na minha pasta assets"
    // var imagemPizza: UIImage = UIImage(named: "pizza")!
}

class MapViewController: UIViewController,CLLocationManagerDelegate,MKMapViewDelegate {
    var prestadorServico = [PrestadorServico]()
    var locationManager = CLLocationManager()
    var userLocation = CLLocation()
    var nomePrestador = ""
    var categoria = ""
    var servico = ""
     let btn = UIButton(type: .detailDisclosure)
  /* */
    @IBOutlet weak var map: MKMapView!
    
   
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        map.delegate = self
        addGesture()
        for location in carregarPins() {
            
            let annotation = MyPointAnnotation()
            annotation.title = location["title"] as? String
            annotation.coordinate = CLLocationCoordinate2D(latitude: location["latitude"] as! Double, longitude: location["longitude"] as! Double)
            map.addAnnotation(annotation)
        }
        
    }
    func carregarPins()->[Dictionary<String,Any>]{
        let prestadorDAO = PrestadorServicoDAO()
        print (categoria + "=------")
        prestadorServico = prestadorDAO.getPrestadorPorCategoria(categoriaFiltro: categoria,servico:servico, atendimentoDomiciliar: true, buscarSePossuiLojaFisica: false)
        let locations = [
            ["title": "\(String(describing: prestadorServico[0].nome))",    "latitude": -22.80554, "longitude": -43.309228],
            ["title": "\(String(describing: prestadorServico[1].nome))", "latitude": -22.80554, "longitude": -43.409228],
            ["title": "\(String(describing: prestadorServico[2].nome))",  "latitude": -22.70554, "longitude": -43.209228]
        ]
    return locations
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView?{
        
        if annotation is MKUserLocation {
            return nil
        }
        
        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: "myAnnotation") as? MKPinAnnotationView
        
        if annotationView == nil {
            annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: "myAnnotation")
        } else {
            annotationView?.annotation = annotation
        }
        
        if let annotation = annotation as? MyPointAnnotation {
            
            // Atribuindo a imagem para o nosso Botão
            // btn.setImage(annotation.imagemPizza, for: UIControlState())
            annotationView?.pinTintColor = annotation.pinTintColor
            annotationView?.canShowCallout = true
            annotationView?.rightCalloutAccessoryView = btn
            
        }
        
        return annotationView
    }
    
    func addGesture(){
        
        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(addAnnotationToMap(gestureRecognizer:)))
        
        longPress.minimumPressDuration = 1.0
        
        //mapView.addGestureRecognizer(longPress)
    }
    
    func addAnnotationToMap(gestureRecognizer: UIGestureRecognizer){
        
        let touchPoint = gestureRecognizer.location(in: map)
        let newCoordinate: CLLocationCoordinate2D = map.convert(touchPoint, toCoordinateFrom: map)
        
        let newAnnotation = MyPointAnnotation()
        newAnnotation.coordinate = newCoordinate
        newAnnotation.pinTintColor = .blue
        newAnnotation.title = "HackaTruck"
        
        map.addAnnotation(newAnnotation)
        
    }
    
    //Essa é a funcão que vai realizar a navegação para a proxima View quando clicarmos no Botão dentro da descrição do nosso PIN
    func mapView(_ MapView: MKMapView, annotationView: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        
        //Verificamos se é o botão desejado
        if control == annotationView.rightCalloutAccessoryView {
            self.nomePrestador = ((annotationView.annotation?.title)!)!
            //Aqui fazemos a nossa navegação passando o identificador da nossa segue: "mostra"
            //Obs: essa segue é feita da nossa View para a Proxima.
            performSegue(withIdentifier: "mapaToPrestadorSegue", sender: self)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mapaToPrestadorSegue" {
            
            // obtendo uma instância da nova viewController que será exibida
            if let dadosPrestadorServico = segue.destination as? PrestadorServicoViewController {
                
                dadosPrestadorServico.nome = nomePrestador
               // dadosPrestadorServico = self.lojaFisica.isOn
            }
        }
    }

    
    
}

        
