//

import Foundation
import UInt256

let Parameters = (
    P: UInt256([UInt64.max, UInt64.max, UInt64.max, 0xFFFFFFFEFFFFFC2F]),

    a: UInt256(0),
    b: UInt256(7),

    G: (
        x: UInt256([0x79BE667EF9DCBBAC, 0x55A06295CE870B07, 0x029BFCDB2DCE28D9, 0x59F2815B16F81798]),
        y: UInt256([0x483ADA7726A3C465, 0x5DA4FBFC0E1108A8, 0xFD17B448A6855419, 0x9C47D08FFB10D4B8])
    ),

    n: UInt256([UInt64.max, 0xFFFFFFFFFFFFFFFE, 0xBAAEDCE6AF48A03B, 0xBFD25E8CD0364141])
)

public struct Secp256k1: EllipticCurveOverFiniteField {
    public static var Generator = Secp256k1(withCoordinates: Parameters.G)
    public static var Order: UInt256 = Parameters.n

    public static var a = FFInt256(Parameters.a)
    public static var b = FFInt256(Parameters.b)

    public var x: FFInt256
    public var y: FFInt256?

    public init() {
        x = 0
    }
}
