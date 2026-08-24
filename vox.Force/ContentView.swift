//
//  ContentView.swift
//  vox.Force
//
//  Created by Feng Yang on 2020/7/23.
//  Copyright © 2020 Feng Yang. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let renderer = Renderer()
    @State private var mode = 0

    var body: some View {
        ZStack(alignment: .top) {
            MetalKitView(view: renderer)
                .edgesIgnoringSafeArea(.all)

            Button(action: {
                mode = (mode + 1) % 3

                switch mode {
                case 0:
                    renderer.RenderableObj = FlipSolver2Renderable()
                    renderer.ray = nil
                    renderer.partcles = nil

                case 1:
                    renderer.RenderableObj = nil
                    renderer.ray = RayMarching()
                    renderer.partcles = nil

                default:
                    renderer.RenderableObj = nil
                    renderer.ray = nil

                    let particles = Particles()

                    let emitter = Particles.fire(
                        size: renderer.metalView.drawableSize
                    )

                    emitter.position = [0, -10]
                    particles.emitters.append(emitter)

                    renderer.partcles = particles
                }
            }) {
                Text("Change Render Mode")
                    .padding(.horizontal, 18)
                    .padding(.vertical, 10)
                    .background(
                        SwiftUI.Color.black.opacity(0.65)
                    )
                    .foregroundColor(
                        SwiftUI.Color.white
                    )
                    .cornerRadius(10)
            }
            .padding(.top, 12)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
