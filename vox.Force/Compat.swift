import Foundation
@_exported import simd

// Compatibility aliases for older vox.Force code.
typealias matrix_float2x2 = simd_float2x2
typealias matrix_float3x3 = simd_float3x3
typealias matrix_float4x4 = simd_float4x4

// Older code expects these reduction helpers.

@inline(__always)
func reduce_add(_ v: SIMD2<Float>) -> Float {
    v.x + v.y
}

@inline(__always)
func reduce_add(_ v: SIMD3<Float>) -> Float {
    v.x + v.y + v.z
}

@inline(__always)
func reduce_add(_ v: SIMD4<Float>) -> Float {
    v.x + v.y + v.z + v.w
}

@inline(__always)
func reduce_min(_ v: SIMD2<Float>) -> Float {
    Swift.min(v.x, v.y)
}

@inline(__always)
func reduce_min(_ v: SIMD3<Float>) -> Float {
    Swift.min(v.x, Swift.min(v.y, v.z))
}

@inline(__always)
func reduce_min(_ v: SIMD4<Float>) -> Float {
    Swift.min(Swift.min(v.x, v.y), Swift.min(v.z, v.w))
}

@inline(__always)
func reduce_max(_ v: SIMD2<Float>) -> Float {
    Swift.max(v.x, v.y)
}

@inline(__always)
func reduce_max(_ v: SIMD3<Float>) -> Float {
    Swift.max(v.x, Swift.max(v.y, v.z))
}

@inline(__always)
func reduce_max(_ v: SIMD4<Float>) -> Float {
    Swift.max(Swift.max(v.x, v.y), Swift.max(v.z, v.w))
}

// Component-wise SIMD min/max used by the old math code.

@inline(__always)
func min(_ a: SIMD2<Float>, _ b: SIMD2<Float>) -> SIMD2<Float> {
    SIMD2<Float>(
        Swift.min(a.x, b.x),
        Swift.min(a.y, b.y)
    )
}

@inline(__always)
func max(_ a: SIMD2<Float>, _ b: SIMD2<Float>) -> SIMD2<Float> {
    SIMD2<Float>(
        Swift.max(a.x, b.x),
        Swift.max(a.y, b.y)
    )
}

@inline(__always)
func min(_ a: SIMD3<Float>, _ b: SIMD3<Float>) -> SIMD3<Float> {
    SIMD3<Float>(
        Swift.min(a.x, b.x),
        Swift.min(a.y, b.y),
        Swift.min(a.z, b.z)
    )
}

@inline(__always)
func max(_ a: SIMD3<Float>, _ b: SIMD3<Float>) -> SIMD3<Float> {
    SIMD3<Float>(
        Swift.max(a.x, b.x),
        Swift.max(a.y, b.y),
        Swift.max(a.z, b.z)
    )
}

@inline(__always)
func min(_ a: SIMD4<Float>, _ b: SIMD4<Float>) -> SIMD4<Float> {
    SIMD4<Float>(
        Swift.min(a.x, b.x),
        Swift.min(a.y, b.y),
        Swift.min(a.z, b.z),
        Swift.min(a.w, b.w)
    )
}

@inline(__always)
func max(_ a: SIMD4<Float>, _ b: SIMD4<Float>) -> SIMD4<Float> {
    SIMD4<Float>(
        Swift.max(a.x, b.x),
        Swift.max(a.y, b.y),
        Swift.max(a.z, b.z),
        Swift.max(a.w, b.w)
    )
}
