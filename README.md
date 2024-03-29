# frequency divider (2f/3)
 Design the Digital Circuit which gives fout = (2/3) fin.

### RTL Description: Frequency Divider by (2/3)f

- **Module Name**: freq_div_2f_by_3
- **Inputs**:
  - `clk`: Input clock signal.
  - `rst`: Reset signal.
- **Outputs**:
  - `clk_out`: Output clock signal divided by \( \frac{2}{3} \) of the input frequency.
- **Description**:
  - The `freq_div_2f_by_3` module divides the input clock frequency by (2/3) using two flip-flops.
  - Two D flip-flops `dff1` and `dff2` are used to divide the input clock frequency by 2 each.
  - The output of the first flip-flop (`dff1`) is fed back to the input of the second flip-flop (`dff2`).
  - The output clock `clk_out` is produced by a NOR gate (`g1`) that takes the outputs of both flip-flops as inputs. This ensures that `clk_out` toggles at the falling edge of the clock, effectively dividing the input frequency by (2/3).
- **Dependencies**:
  - This module depends on the input clock signal `clk` and the reset signal `rst`.
- **Additional Comments**:
  - Ensure that the input clock frequency is suitable for division by (2/3) to avoid frequency instability.
