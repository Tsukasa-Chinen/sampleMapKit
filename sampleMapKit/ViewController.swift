//
//  ViewController.swift
//  sampleMapKit
//
//  Created by Tsukasa Chinen on 2017/11/08.
//  Copyright © 2017年 Tsukasa Chinen. All rights reserved.
//

import UIKit
/* 地図用のフレームワークを読み込み */
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        /** アヤラを中心とした地図を表示 **/

        /* 1.中心となる場所の座標オブジェクトを作成 */
        let codinate = CLLocationCoordinate2D(latitude: 10.317347, longitude: 123.905758)

        /* 2.縮尺を設定 */
        let span = MKCoordinateSpanMake(0.08, 0.08)

        /* 3.範囲オブジェクトを作成 */
        let region = MKCoordinateRegionMake(codinate, span)

        /* 4.MapViewに範囲オブジェクトを設定 */
        mapView.setRegion(region, animated: true)

        /** アラヤ（中心）にピンを立てる **/
        /* 1.pinオブジェクトを生成 */
        let centerPin = MKPointAnnotation()

        /* 2.pinの座標を設定 */
        centerPin.coordinate = codinate

        /* 3.タイトル、サブタイトルを設定（タップ時にでる吹き出しの情報） */
        centerPin.title = "アヤラショッピングモール"
        centerPin.subtitle = "なんでもあるよ"

        /* 4.mapViewにPinを追加 */
        mapView.addAnnotation(centerPin)
        
        // TODO: 08/11/2017 Homework ピンを3本立ててGithubにプッシュ
        let jolibee01 = CLLocationCoordinate2D(latitude: 10.307078, longitude: 123.894326)
        let jolibee01Pin = MKPointAnnotation()

        jolibee01Pin.coordinate = jolibee01
        jolibee01Pin.title = "ジョリビー01"
        jolibee01Pin.subtitle = "パスタがオススメ！"
        mapView.addAnnotation(jolibee01Pin)

        let jolibee02 = CLLocationCoordinate2D(latitude: 10.315302, longitude: 123.885206)
        let jolibee02Pin = MKPointAnnotation()
        
        jolibee02Pin.coordinate = jolibee02
        jolibee02Pin.title = "ジョリビー02"
        jolibee02Pin.subtitle = "バーガーがオススメ！"
        mapView.addAnnotation(jolibee02Pin)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

