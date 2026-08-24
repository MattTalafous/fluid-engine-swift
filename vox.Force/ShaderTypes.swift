import Foundation
import simd

// apparently i care about commit messages now

struct FragmentUniforms {
    var lightCount: UInt32 = 0
    var cameraPosition: SIMD3<Float> = .zero
}

enum VertexAttribute: UInt32 {
    case position = 0
    case normal = 1
    case uv = 2
    case tangent = 3
    case bitangent = 4
    case color = 5
    case joints = 6
    case weights = 7
}

let Position = VertexAttribute.position
let Normal = VertexAttribute.normal
let UV = VertexAttribute.uv
let Tangent = VertexAttribute.tangent
let Bitangent = VertexAttribute.bitangent
let Color = VertexAttribute.color
let Joints = VertexAttribute.joints
let Weights = VertexAttribute.weights

enum BufferIndex: UInt32 {
    case vertices = 0
}

let BufferIndexVertices = BufferIndex.vertices
