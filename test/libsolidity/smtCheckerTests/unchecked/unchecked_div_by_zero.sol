pragma experimental SMTChecker;

contract C {
    function div(uint256 a, uint256 b) public pure returns (uint256) {
        // Does not disable div by zero check
        unchecked {
            return a / b;
        }
    }

    function mod(uint256 a, uint256 b) public pure returns (uint256) {
        // Does not disable div by zero check
        unchecked {
            return a % b;
        }
    }
}
// ----
// Warning 4281: (202-207): CHC: Division by zero happens here.\nCounterexample:\n\na = 0\nb = 0\n = 0\n\nTransaction trace:\nconstructor()\ndiv(0, 0)
// Warning 4281: (382-387): CHC: Division by zero happens here.\nCounterexample:\n\na = 0\nb = 0\n = 0\n\nTransaction trace:\nconstructor()\nmod(0, 0)