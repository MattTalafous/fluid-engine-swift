import Foundation
import simd

// MARK: - Old SIMD compatibility helpers

typealias matrix_float2x2 = simd_float2x2
typealias matrix_float3x3 = simd_float3x3
typealias matrix_float4x4 = simd_float4x4

@inline(__always)
func length(_ v: SIMD2<Float>) -> Float {
    simd_length(v)
}

@inline(__always)
func length(_ v: SIMD3<Float>) -> Float {
    simd_length(v)
}

@inline(__always)
func length(_ v: SIMD4<Float>) -> Float {
    simd_length(v)
}

@inline(__always)
func length_squared(_ v: SIMD2<Float>) -> Float {
    simd_length_squared(v)
}

@inline(__always)
func length_squared(_ v: SIMD3<Float>) -> Float {
    simd_length_squared(v)
}

@inline(__always)
func length_squared(_ v: SIMD4<Float>) -> Float {
    simd_length_squared(v)
}

@inline(__always)
func dot(_ a: SIMD2<Float>, _ b: SIMD2<Float>) -> Float {
    simd_dot(a, b)
}

@inline(__always)
func dot(_ a: SIMD3<Float>, _ b: SIMD3<Float>) -> Float {
    simd_dot(a, b)
}

@inline(__always)
func dot(_ a: SIMD4<Float>, _ b: SIMD4<Float>) -> Float {
    simd_dot(a, b)
}

@inline(__always)
func cross(_ a: SIMD3<Float>, _ b: SIMD3<Float>) -> SIMD3<Float> {
    simd_cross(a, b)
}

@inline(__always)
func normalize(_ v: SIMD2<Float>) -> SIMD2<Float> {
    simd_normalize(v)
}

@inline(__always)
func normalize(_ v: SIMD3<Float>) -> SIMD3<Float> {
    simd_normalize(v)
}

@inline(__always)
func normalize(_ v: SIMD4<Float>) -> SIMD4<Float> {
    simd_normalize(v)
}

@inline(__always)
func clamp(_ x: Float, _ lower: Float, _ upper: Float) -> Float {
    Swift.max(lower, Swift.min(upper, x))
}

@inline(__always)
func clamp(_ x: Double, _ lower: Double, _ upper: Double) -> Double {
    Swift.max(lower, Swift.min(upper, x))
}
