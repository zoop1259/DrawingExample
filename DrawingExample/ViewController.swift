//
//  ViewController.swift
//  DrawingExample
//
//  Created by 강대민 on 2022/05/31.
//

import UIKit
import PencilKit

class ViewController: UIViewController, PKCanvasViewDelegate {

    private let canvasView: PKCanvasView = {
       let canvas = PKCanvasView()
        //캔버스 뷰자체에선 마우스만으로 그릴 수 없기 떄문에 그리기 정책을 사용해야 한다.
        canvas.drawingPolicy = .anyInput
        return canvas
    }()
    
    //그림저장
    let drawing = PKDrawing()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        canvasView.drawing = drawing
        canvasView.delegate = self
        view.addSubview(canvasView)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        canvasView.frame = view.bounds
    }
    
    //도구 선택기 만들기
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        //도구선택기
        let toolPicker = PKToolPicker()
        toolPicker.setVisible(true, forFirstResponder: canvasView)
        toolPicker.addObserver(canvasView)
        //캔버스뷰가 첫 응답자가 될 때 자신에게 초점을 맞춘다.
        canvasView.becomeFirstResponder()
    }

    //canvas delegate
    
    func canvasViewDrawingDidChange(_ canvasView: PKCanvasView) {
        //그릴떄
    }

    func canvasViewDidBeginUsingTool(_ canvasView: PKCanvasView) {
        //도구 사용
    }
    
    func canvasViewDidEndUsingTool(_ canvasView: PKCanvasView) {
        //도구 사용
    }
    
    func canvasViewDidFinishRendering(_ canvasView: PKCanvasView) {
        //랜더링을 끝냈을때.
    }
    

}

