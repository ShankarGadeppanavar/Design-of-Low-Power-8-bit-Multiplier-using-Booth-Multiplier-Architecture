# Design-of-Low-Power-8-bit-Multiplier-using-Booth-Multiplier-Architecture
8-bit signed Booth Multiplier designed using Verilog HDL with sequential logic and 16-bit product output.
INTRODUCTION
Modern electronics such as smartphones, wearable gadgets and smart devices depend heavily
on efficient processors. In these systems multiplication is one of the common operations. It is
used often in image processing, audio filtering and artificial intelligence.. Traditional
multiplication methods work bit by bit. This means they require steps to complete a single
multiplication. These steps use a lot of power. Slow down the system.
The whole system is built using Verilog HDL (Hardware Description Language). The design
is developed in the Xilinx Vivado software tool. Vivado is used to simulate the multiplier.
The simulation proves that the multiplier gives results for both positive and negative
numbers. After simulation the design is synthesized.
It is then tested on a Xilinx Artix-7 FPGA chip. On this chip the power usage, speed and
hardware efficiency are carefully measured. This project provides a low-power solution
that works well in modern battery-powered embedded devices.
1.1 Overview of Computer Arithmetic Units
Computer units are key parts of digital systems. They perform math tasks like addition,
subtraction, multiplication and division. These units are found in processors, digital signal
processing systems, image processing applications and other VLSI-based system.The
performance of an unit has a big effect on the speed, size and energy use of a digital system.
Among all the operations multiplication stands out as one of the most important. It is also one
of the time-consuming. Multiplication happens again and again in applications where large
amounts of numerical data must be processed quickly. Because of this making a multiplier
that's both fast and low-power is a major focus, in digital system design and VLSI design.
In Digital Signal Processing multiplication is used a lot in filters, convolution, correlation,
Fourier transforms and signal modulation. DSP systems continuously perform multiplication
between input samples and predefined coefficients. Hence the speed and power consumption
of the multiplier have an effect on the overall performance of the DSP system.
In image processing multiplication is used in operations such as image filtering, convolution,
scaling, brightness adjustment, contrast enhancement and image transformation. Because an
image contains pixels these operations may require thousands or millions of multiplication
operations. An efficient multiplier can reduce processing time and power consumption. This
makes the multiplier suitable for real-time image-processing applications.
Multiplication is also important in Arithmetic Logic Units and processor design. Modern
processors perform arithmetic operations during program execution and multiplication is
needed in many computational tasks. A multiplier with hardware complexity and power
consumption can help develop energy-efficient and high-performance processors.
Thus the design of arithmetic units, especially multipliers is essential in modern digital
systems. Using optimized multiplication techniques such as Booth multiplication can reduce
the number of products and improve the overall efficiency of the multiplier. This makes Boothbased architectures useful for low-power and high-performance VLSI applications.
Figure 1.1 shows the execution units of a modern CPU/DSP system. The ALU performs
logical operations while the Multiplier performs multiplication and supports applications such
as DSP and image processing. Other units such as shifters and dividers perform arithmetic
operations. The control unit manages these operations and the register file and memory
interface provide data to the execution units.
<img width="1615" height="947" alt="Screenshot 2026-11-24 212627" src="https://github.com/user-attachments/assets/fb7da241-9208-4208-b0f0-95a1e27a1f3e" />
1.2 Problem Definition
Multiplication is an arithmetic operation used widely in digital signal processing, image
processing, communication systems, embedded systems and modern processors. As digital
systems grow more complex and run faster designing a multiplier becomes more important. A
conventional combinational multiplier creates partial products and performs many addition
steps to get the final product. Although this multiplier can deliver correct and quick arithmetic
its hardware may contain switching nodes and logic elements.
In the baseline multiplier considered in this study a significant amount of switching activity is
observed during the multiplication process. The design contains 533 switching nets, which
indicates considerable signal transitions within the combinational logic.
Each transition involves charging and discharging of capacitances resulting in dynamic power
consumption. As switching activity increases the overall energy consumed by the circuit also
increases.
The baseline design also exhibits a power consumption of approximately 17.362 W. Such a
high power level is undesirable for modern VLSI systems, particularly for portable, embedded
and battery-operated applications.
High power consumption not reduces energy efficiency but can also increase the
requirements for power delivery, cooling and thermal management. Therefore reducing the
power consumption of circuits is an important objective in low-power VLSI design.
Another major issue associated with power dissipation is thermal stress. The power consumed
by the circuit is ultimately converted into heat increasing the operating temperature of the
semiconductor device. In the baseline design the estimated temperature reaches 111.8 °C
indicating severe over-temperature conditions.
Such a high operating temperature can negatively affect circuit performance, reliability and
device lifetime. It can also increase leakage currents. Further contribute to power dissipation
creating an undesirable thermal feedback effect. These observations indicate that simply
achieving multiplication is not sufficient for an efficient modern multiplier.
The multiplier must also be designed to minimize switching activity, power consumption and
heat generation while maintaining acceptable computational performance.
Therefore there is a need for an improved architecture that can reduce the number of partial
products and associated switching operations.
The Booth multiplication algorithm provides an approach to address this problem. Booth
encoding reduces the number of products by efficiently processing the bits of the multiplier
and replacing certain sequences of operations with fewer addition or subtraction operations.
This reduction can decrease the amount of hardware activity and consequently help in reducing
power consumption.
Hence the main problem addressed in this project is the switching activity, excessive power
consumption and severe thermal condition of the baseline combinational multiplier. The
specific baseline observations are 533 switching nets, 17.362 W of power consumption and a
peak temperature of 111.8 °C.
The project therefore aims to design an 8-bit low-power multiplier using Booth architecture
and implement it using Xilinx Vivado software with the objective of achieving efficient
multiplication while improving the power and thermal characteristics of the design.
1.3 Objectives of the Project
The main objective of this project is to design and implement an 8-bit low-power multiplier
using Booth architecture and evaluate its performance using Xilinx Vivado software. The
project focuses on developing a RTL design that reduces unnecessary hardware activity while
maintaining correct multiplication and acceptable timing performance.
The specific objectives of the project are:
1. Structural RTL Implementation:
To develop the 8-bit Booth multiplier using Verilog HDL at the Register Transfer Level
(RTL) using an modular design approach.
2. Reduction in Switching Nets:
To reduce the number of switching nets and unnecessary signal transitions compared
with the combinational multiplier thereby reducing dynamic power consumption.
3. Power Optimization:
To minimize the power consumption of the multiplier by reducing switching activity
and improving the efficiency of the multiplication architecture.
4. Timing Closure:
To analyze and optimize the timing characteristics of the design so that the multiplier
satisfies the required timing constraints and operates reliably at the target frequency.
5. Performance Evaluation
To verify the correctness of the multiplier and evaluate important parameters such
as power, timing, switching activity and hardware utilization using Xilinx Vivado
<img width="945" height="435" alt="Screenshot 2026-11-24 213038" src="https://github.com/user-attachments/assets/5797f559-0d4c-4d4d-93fe-c738bec34cbe" />
1.4 Scope of the Project
This project covers the design and implementation of an 8-bit signed multiplier that uses Booth
multiplication architecture. The multiplier is created with Verilog HDL at the RTL level. Then
tested and examined with Xilinx Vivado software. The design is aimed to run on the Xilinx
Artix-7 FPGA.(xc7a35tcpg236-1)
The project concentrates on signed binary multiplication and takes into account key design
parameters such as power consumption, switching activity, timing performance and hardware
resource utilization. The multiplier is checked by simulation to guarantee that its output is
mathematically correct for all combinations of signed 8-bit input operands.
A major part of the scope is to cut switching activity and partial-product generation using
Booth architecture. The proposed multiplier is compared with a combinational multiplier to
see how power and hardware efficiency improve. Timing analysis is also done to verify that
the design meets the required operating constraints.
The project does not involve making an integrated circuit. Instead all design, simulation,
synthesis, implementation and performance analysis are performed with the Xilinx Vivado
design environment on the chosen Artix-7 FPGA.
1.8 signifcance of the project
Low-power arithmetic circuits are growing in importance for digital systems because higher
computation can raise power consumption and heat. A multiplier a common arithmetic
component, has power and switching traits that can greatly affect the efficiency of a system.
Using Booth architecture can lower the number of products made during multiplication.
This helps cut switching activity and boosts energy efficiency. Lower power dissipation
also cuts heat giving thermal headroom and raising the overall system reliability.
The proposed low-power multiplier is especially important for hardware accelerators that
run arithmetic operations repeatedly. Applications like DSP, image processing, machine
learning, communication systems and embedded computing can gain from multiplier
architectures.
Reducing power consumption and thermal stress can boost the operating stability. Extend
the lifetime of hardware systems. Therefore the project shows how RTL-level architectural
optimization can add energy savings, thermal reliability and efficient hardware
implementation.
MEHADOLOGY AND DESIGN IMPLEMENTATION
This chapter presents the methodology and design implementation of the proposed 8-bit lowpower using Booth architecture. The design is developed using Verilog HDL. Implemented
and evaluated using Xilinx Vivado software. The methodology includes the design of the
multiplier, selection and implementation of the Booth multiplication technique RTL design,
functional simulation, synthesis, FPGA implementation and power and timing analysis. The
proposed architecture is optimized to reduce hardware resource utilization and power
consumption while maintaining multiplication performance.
2.1 Multiplier Design Overview
The proposed project focuses on the design and simulation of a low-power 8-bit Booth
multiplier using Xilinx Vivado. The multiplier is designed using Verilog HDL and verified
through simulation before synthesis and implementation. Xilinx Vivado provides an EDA
environment for designing, simulating, synthesizing, implementing and analyzing digital
circuits.
The basic EDA toolchain flow consists of the stages:
1. Design Entry:
The Verilog HDL code for the 8-bit Booth multiplier is written and added to the Vivado project.
2. RTL Analysis:
Vivado analyzes the HDL code. Generates the RTL representation of the multiplier circuit.
3. Simulation:
A testbench is used to provide input combinations and verify the functional correctness of the
multiplier.
4. Synthesis:
The verified RTL design is synthesized into a hardware-level representation using the FPGA
resources.
5. Implementation:
The synthesized design undergoes optimization, placement and routing to prepare it for FPGA
implementation.
6. Design Analysis:
Vivado provides reports related to timing, power consumption and resource utilization. These
reports are useful for evaluating the performance and efficiency of the proposed multiplier.
7. Bitstream Generation:
For FPGA implementation Vivado generates a bitstream that can be used to program the
target FPGA device.
2.1.1 Partial-Product Compression with Booth Recoding
The main benefit of Booth recoding is that it reduces the count of non-zero products. In
multiplication a partial product is produced for every 1 bit, in the multiplier. Booth recoding
merges runs of 1s into fewer arithmetic operations.
For example a string of 1s can be shown by subtracting at the start of the string and adding at
the end. Thus of making many shifted copies of the multiplicand Booth recoding can show the
same operation with fewer partial products.
P = Σ Cᵢ × (M × 2ᶦ)
Here Cᵢ is the Booth recoding coefficient and can be −1, 0 or +1.
Hence the partial-product generation process is:
Multiplier Bits → Booth Recoding → Coefficient Generation → Partial Product Generation
→ Accumulation
The fewer partial products mean arithmetic work for the multiplier. This makes Booth
architecture good for low-power VLSI applications.
Figure 3.3 shows the diagram of the Radix-2 Booth encoder that creates the needed control
signal from the multiplier bit pair.
<img width="765" height="533" alt="Screenshot 2026-11-24 213617" src="https://github.com/user-attachments/assets/fc404f81-8228-4459-ad7f-0d13e32aede6" />
The Booth encoder is the decision unit of the multiplier. From the two input bits it decides
the needed operation: add the multiplicand subtract the multiplicand or do nothing. The control
information it produces is then used by the partial-product generation and accumulation stages.
Using Booth recoding in the proposed 8-bit gives a clear way to cut useless partial-product
operations and is the foundation for better power efficiency than a regular multiplier.
2.2 Hardware Description
The proposed 8-bit low-power Booth multiplier is described in Verilog HDL and built with the
Xilinx Vivado design environment. Even though the project is mainly software the RTL design
is turned into an FPGA implementation to check its hardware traits such as resource use, timing
and power draw.
The design uses a module structure. The top-level module shows the full 8-bit Booth multiplier.
Links the input Booth encoding, partial-product generation, accumulation and output parts.
The major functional modules of the proposed design are:
1. Top-Level Booth Multiplier Module:
This module is the interface of the design and connects all internal functional blocks.
2. Booth Encoder Module:
The Booth encoder looks at the bits and creates the needed control signals for add, subtract or
no-operation.
3. Partial Product Generation Module:
This module creates the required products based on the Booth-encoded control signals.
4. Partial Product Accumulation Module:
The partial products are summed to produce the multiplication result.
5. Output Module:
The summed result is given as the 16-bit product.
The structural hierarchy of the proposed multiplier can be represented as
follows: Top-Level Booth Multiplier
│
├── Booth Encoder
│
├── Partial Product Generator
│
├── Partial Product Accumulator
│
└── Product Output
This hierarchy gives a split between the different functional stages of the multiplier and
makes RTL verification and synthesis easier.
2.3 Design Specifications
The proposed design is an 8-bit signed Booth multiplier that can produce a 16-bit product. The
design is made in Verilog HDL. Aimed at a Xilinx Artix-7 FPGA in the Vivado environment.
<img width="805" height="617" alt="Screenshot 2026-11-24 213812" src="https://github.com/user-attachments/assets/e2ccdf32-4aeb-455d-9468-2dec1642d326" />
2.3.1 Design Equations and Mathematical Formulation
The proposed multiplier performs signed multiplication using twos complement
representation. In an 8-bit signed multiplier both input operands are represented using 8-bit
twos complement numbers while the resulting product is represented using 16 bits.
Let the two signed input operands be represented by A and B. The multiplication operation is
defined as:
Y = A × B
where,
A = Signed 8-bit multiplicand
B = Signed 8-bit
Y = Signed 16-bit product
1) Signed 2s Complement Representation
For an n-bit signed binary number, the most significant bit (MSB) represents the sign. A value
of 0 indicates a number while a value of 1 indicates a negative number.
For an 8-bit number:
A = a₇a₆a₅a₄a₃a₂a₁a₀
Its decimal value is given by:
A = −a₇ × 2⁷. A₆ × 2⁶ + a₅ × 2⁵ + a₄ × 2⁴ + × 2³ + a₂ × 2² + a₁ × 2¹ + a₀
Similarly the second operand can be represented as:
B = b₇b₆b₅b₄b₃b₂b₁b₀
and its decimal value is:
B = −b₇ × 2⁷ + b₆ × 2⁶ + × 2⁵ + b₄ × 2⁴ + b₃ × 2³ + b₂ × 2² + b₁ × 2¹ + b₀
Therefore the signed multiplication operation is:
Y = A × B
The resulting product requires up to 16 bits to represent the signed multiplication result.
2) Formation of 2s Complement
A binary number is represented in twos complement form by first obtaining the ones
complement and then adding 1 to the result.
For a binary number X:
2s Complement(X) = 1s Complement(X) + 1
For example the representation of −5 in 8-bit twos complement is:
+5 = 00000101
1s Complement = 11111010
2s Complement = 11111011
Therefore:
−5 = 11111011
This representation allows the same binary arithmetic hardware to perform both addition and
subtraction operations.
3) Signed Multiplication
The multiplication of two signed twos complement operands follows the relationship:
Y = A × B
The sign of the resulting product is determined by the signs of the two input operands:
Positive × Positive = Positive
Positive × Negative = Negative
Negative × Positive = Negative
Negative× Negative = Positive
For example consider:
A = +5 = 00000101
B = −3 = 11111101
The expected result is:
Y = (+5) × (−3)
Y = −15
The 16-bit twos complement representation of −15 is:
Y = 1111111111110001
4) Mathematical Basis of Booth Multiplication
Booth multiplication represents the multiplier using recoded coefficients. For Radix-2 Booth
encoding each multiplier position is associated with a coefficient Cᵢ, where:
Cᵢ ∈ {−1 0 +1}
The product can therefore be expressed as:
Y = Σ(Cᵢ × A × 2ⁱ)
where i represents the bit position of the multiplier and Cᵢ represents the Booth-recoded
coefficient.
Thus the Booth multiplier generates products of the form:
PPᵢ = Cᵢ × A × 2ⁱ
where:
Cᵢ = 0 → No partial product
Cᵢ = +1 → +A 2ⁱ
Cᵢ = −1 → −A × 2ⁱ
The final product is obtained by accumulating all the generated
products: Y = PP₀ + PP₁ + PP₂ + Pp₇
The use of signed twos complement arithmetic allows the proposed Booth multiplier to
perform multiplication of both positive and negative operands without requiring separate
arithmetic units. This mathematical formulation forms the basis, for the RTL implementation
and functional verification of the proposed low-power 8-bit Booth multiplier.
2.4 RTL Modeling (Baseline)
The baseline multiplier is modeled at the Register Transfer Level (RTL) using Verilog HDL.
RTL modeling describes the transfer and processing of data between hardware components
using HDL constructs. In Xilinx Vivado the Verilog source code is. Elaborated to generate an
RTL representation of the proposed design.
The structural Verilog implementation divides the multiplier into identifiable functional
sections. The major sections include the input operands, Booth encoder, partial-product
generation logic, accumulation logic and product output.
The structural mapping can be represented as:
Input Operands
↓
Booth Encoder
↓
Control Signal Generation
↓
Partial Product Generation
↓
Partial Product Accumulation
↓
16-bit Product Output
Each functional block can be represented using Verilog modules or combinational logic.The
output of one stage is connected to the input of the following stage through signals. This
modular approach improves the readability, verification and maintainability of the RTL design.
2.5 Constraints & RTL Schematic
Constraints in Xilinx Vivado define the operating rules and implementation details of the RTL
design. They give data about clock signals, input and output timing and physical I/O needs.
Good constraint configuration helps Vivado run timing analysis and optimize the design for
the chosen FPGA target.
For the proposed low-power 8-bit Booth multiplier the RTL design is examined with Vivado
synthesis and elaboration tools. The resulting RTL schematic shows a view of the internal logic
that comes from the Verilog HDL description.
The RTL schematic of the low-power Booth multiplier has key logical parts, such, as
multiplexers, adders and output registers. These parts together perform the Booth encoding
select the products carry out arithmetic operations and store the final multiplication result.
Internal Multiplexers (RTL_MUX)
The RTL_MUX elements are used to pick between data paths based on the control signals that
come from the Booth encoding logic. Depending on the encoded bits the multiplexer can
choose the needed arithmetic operation or partial-product value. Using multiplexers lets the
design skip arithmetic operations. This cuts down on switching activity. Helps the low-power
goal of the architecture.
Adders (RTL_ADD)
The RTL_ADD elements represent the addition operations needed for accumulating products.
Depending on the Booth encoding result the required partial product is added to. Subtracted
from the running total. These arithmetic elements are a part of the datapath and decide how the
multiplier behaves. The RTL schematic lets us see how the adders connect with the
multiplexers and other logic.
Output Register (P_reg[15:0])
The P_reg[15:0] is a 16-bit product register that holds the multiplication result. Because two
signed 8-bit operands can produce a result that needs up to 16 bits the output register is 16 bits
wide. The register gives a storage point for the final product and defines the output boundary
of the multiplier design. All bits P_reg[15:0] together show the signed multiplication result.
RTL Schematic Analysis
The RTL schematic gives a picture of the internal structure of the low-power Booth multiplier.
It shows how RTL_MUX, RTL_ADD registers and control logic all fit together turning the
Verilog HDL description into a RTL view.
2.6 Verification & Testbench
Verification is a step in building the low-power 8-bit Booth multiplier. It checks that the RTL
design produces the correct multiplication result for combinations of signed input operands. In
this project functional verification is done with a Verilog testbench in the Xilinx Vivado
simulation environment.
The testbench file **tb_booth_multiplier.v** supplies vectors to the top-level module
**low_power_booth_multiplier**. The testbench applies predefined values to the
multiplicand and multiplier inputs and watches the resulting 16-bit product.
Stimulus Vectors
The stimulus vectors are chosen to test operating conditions of the signed Booth multiplier.
The test cases cover operands, negative operands multiplying by zero and mixes of positive
and negative values.
Typical stimulus vectors used for verification:
Test Case Multiplicand
(A)
Multiplier
(B)
Expected Product
(Y)
1 0 5 0
2 5 3 15
3 7 2 14
4 5 -3 -15
5 -5 3 -15
6 -5 -3 15
7 10 -2 -20
8 -8 4 -32
These vectors give functional coverage of basic signed multiplication cases. More input
combinations can be added to test the multiplier across the 8-bit range.
Clock-Aligned Verification
The testbench applies the input operands in sync with the clock signal. The output product is
seen after the matching clock event. Clock-aligned verification makes it clear how the applied
input values lead to the 16-bit product. Vivado’s behavioral waveform shows the clock input
operands and product output over simulation time. Every valid input combination produces the
expected product.
2.7 Optimization Process
Optimizing the low-power 8-bit Booth multiplier is a part of its design. The main goal of
optimization is to cut hardware work speed up timing, simplify routing and find a good
balance between power use and processing speed.
At first the RTL version of the Booth multiplier had logic links and cells. While optimizing we
examined the synthesized design and removed redundant logic.
Merged extra signal connections. After optimization the netlist shrank from 533 nets to 188
nets. The logic cells fell from 37 to 29.
The main optimization targets for the Booth multiplier are:
1. Cutting propagation delay.
2. Cutting logic and switching activity.
3. Merging signal nets.
4. Reducing the number of logic cells.
5. Improving routing efficiency.
6. Cutting power use.
7. Improving the Power-Delay Product (PDP).
We carried out the optimization with Xilinx Vivado’s synthesis and implementation tools.
Because the Booth multiplier is simulated in software we assess the improvements using the
synthesized RTL and implementation data of a real chip.
The optimization flow looks like this:
RTL Design → Logic Analysis → Net Consolidation → Logic Reduction → Timing
Optimization → Power Analysis → PDP Evaluation → Optimized Design.
The final Booth multiplier is now simpler, in logic. Still performs the needed multiplication.
3.7.2 Net Consolidation
Net consolidation is one of the ways to improve the structure of the proposed multiplier. A net
is an logical link between parts of the synthesized design.
A large number of redundant nets makes the logic netlist more complex and may cause extra
routing and switching activity.
The initial synthesized design contained 533 nets. During optimization redundant signal paths
and unnecessary intermediate connections were. Consolidated. After optimization the number
of nets dropped to 188.
Therefore the reduction in nets is:
Net Reduction = 533 – 188 = 345 nets
The percentage reduction's approximately:
Net Reduction (%) = [(533 – 188) / 533] × 100 = 64.73%
The net consolidation process can be summarized as follows:
Initial Netlist
↓
Identification of Redundant Connections
↓
Removal of Unnecessary Intermediate Signals
↓
Logic Simplification
↓
Signal Consolidation
↓
Optimized Netlist
The reduction in the number of nets can provide benefits:
- Lower routing complexity.
- Reduced interconnection activity.
- Reduced switching capacitance.
- Improved implementation efficiency.
- Reduction in dynamic power.
2.8 Logic Cell Reduction
Logic cell reduction is another part of the optimization process. Logic cells are the
computational and control elements that implement the RTL design after synthesis. Many logic
cells can increase resource use, switching activity, routing complexity and power consumption.
The initial design had 37 logic cells. Through simplification, redundant operations and
unnecessary intermediate structures were removed. After optimization the design needed 29
logic cells.
The reduction can be calculated as:
Logic Cell Reduction = 37 – 29 = 8 cells
The percentage reduction is:
Logic Cell Reduction (%) = [(37 – 29) / 37] × 100 = 21.62%
2.9 Power-Delay Product Trade-offs
Power and delay are two performance parameters in low-power digital arithmetic circuits.
Reducing power while improving speed is desirable; however optimizing one parameter can
sometimes affect the other. Therefore the proposed multiplier is evaluated using the PowerDelay Product (PDP).
The Power-Delay Product is defined as:
PDP = Power × Delay
where
Power represents the estimated power consumption of the design and
Delay represents the time needed for the computation path
Therefore the optimization process must consider the following trade-off:
Power Reduction ↔ Delay Reduction ↔ Resource Utilization
The goal is not to minimize one parameter alone but to obtain an efficient overall design.
PDP Evaluation:
For two designs the PDP can be compared as:
PDP initial= P_initial × D_initial
PDP_optimized = P_optimized × D_optimized
If:
PDP_optimized < PDP_initial
then the optimized architecture offers better power-delay performance
2.10 Optimized Overview
<img width="917" height="496" alt="Screenshot 2026-11-24 215312" src="https://github.com/user-attachments/assets/3108a165-ad50-4e9e-b891-1a1e87ce21bb" />
RESULTS AND PERFORMANCE EVALUATION
3.1 Simulation Waveform Analysis
The simulation waveform analysis checks that the low-power 8-bit Booth multiplier works
correctly. The design is run in Xilinx Vivado to watch how the input and output signals behave
over time.
The main signals in the waveform are A[7:0] B[7:0] and P[15:0]. The signal A[7:0] is the
8-bit multiplicand while B[7:0] is the 8-bit multiplier. The signal P[15:0] is the 16-bit product
made by the multiplier. A 16-bit output is used because multiplying two 8-bit numbers can
need up to 16 bits.
During the run different input pairs are fed into A[7:0]. B[7:0] at various times. The resulting
P[15:0] value is then seen in the waveform. For each input pair the output is compared to the
expected product. This directly shows that the Booth multiplier is correct.
For example when A = 0F₁₆ and B = 0A₁₆ the expected product is:
P = 0F₁₆ × 0A₁₆ = 96₁₆
The hexadecimal 96₁₆ equals 150₁₀. The waveform gives the product at the output proving the
multiplier works right. Other combinations of zero values can also be tested to confirm the
design works.
The waveform shows that whenever A[7:0] or B[7:0] change, P[15:0] changes to the product
after the required circuit propagation and simulation delay. The observed outputs match what
we expect showing the Booth encoding and partial-product logic work well. The simulation
also finds any transitions, wrong outputs or functional errors in the multiplier design.
The lack of output during the tests shows the design works reliably. Hence the simulation
waveform proves the optimized 8-bit Booth multiplier works. The exact link between A[7:0]
B[7:0] and P[15:0] shows the multiplier can give 16-bit results.
3.2 Synthesis and Logic Cell Utilization
After the functional simulation was successful the proposed 8-bit Booth multiplier is
synthesized using Xilinx Vivado. Synthesis converts the Verilog RTL description into a gatelevel representation that can be implemented on the target FPGA device. The synthesis report
gives information about the hardware resources needed by the 8-bit Booth multiplier, such as
logic cells lookup tables (LUTs) flip-flops, input/output (I/O) resources and other FPGA
resources.
The logic utilization of the proposed 8-bit Booth multiplier is analyzed to determine how
efficient the implemented architecture is. The number of logic cells and other resources used
by the 8-bit Booth multiplier directly affects the area and hardware complexity. A reductionin
resource utilization means the 8-bit Booth multiplier needs FPGA hardware and can therefore
be implemented more compactly.
Figure 4.1 shows the baseline utilization graph obtained from Vivado. The graph shows the
utilization of FPGA resources. In particular the I/O utilization of the 8-bit Booth multiplier is
30 % while the remaining FPGA resources have much lower utilization.
<img width="1033" height="826" alt="Screenshot 2026-11-24 215544" src="https://github.com/user-attachments/assets/6deb7430-6401-4250-b80a-73bbd976bdfb" />
The synthesis analysis shows that optimization reduces the hardware complexity of the 8-bit
Booth multiplier. The reduction in logic cells from 37 to 29 shows an efficient use of the
available FPGA resources. Similarly the reduction in the number of nets from 533 to 188
indicates net consolidation and less interconnection complexity.
Therefore the synthesis and utilization analysis confirms that the proposed 8-bit Booth
multiplier can be implemented efficiently on the FPGA. The reduction in hardware resources
gives a foundation for further optimization of power consumption propagation delay and the
overall power-delay product
3.3 Power Consumption Breakdown Analysis
Power consumption is a parameter in designing a low-power multiplier. After synthesis the
power analysis is performed using Xilinx Vivado to determine the power consumed by the
proposed 8-bit Booth multiplier and to identify the major components that contribute to the
overall power consumption. The power is mainly divided into power and static power.
Dynamic power is used when signals switch between logic states during circuit operation.
Dynamic power depends on factors such as switching activity, operating frequency,
capacitance and supply voltage. Static power, also called leakage power is used when the
circuit is not actively switching. Therefore reducing switching activity is an important way to
achieve a low-power design.
The baseline power summary obtained from Vivado is shown in Figure 4.2. The total estimated
power consumption is 17.362 W, of which 17.018 W is power. This shows that dynamic power
makes up the portion of the total power consumption in the baseline 8-bit Booth multiplier.
The remaining power comes from static or leakage power.
From the results it can be seen that 98 % of the total power is dynamic power while only a
small portion comes from static power. This high dynamic power mainly comes from
switching activity in the logic and interconnections of the 8-bit Booth multiplier.
The power analysis therefore gives a baseline for evaluating how effective the optimization
techniques are, for the 8-bit Booth multiplier. By reducing switching and logic activity the
optimized 8-bit Booth multiplier can achieve lower dynamic power consumption while still
providing the required multiplication functionality.
3.4 Timing Analysis (Baseline)
Timing analysis is performed to evaluate the speed and reliability of the baseline 8-bit Booth.
In Xilinx Vivado timing analysis checks whether the implemented circuit can meet the required
timing constraints. The two important timing parameters considered are setup time. Hold time.
A setup violation happens when the data signal does not arrive at the receiving element before
the clock edge. A hold violation happens when the data changes quickly after the clock edge.
These conditions are key for operation of sequential digital circuits.
In the baseline design timing analysis is done before optimization techniques are applied. The
timing report shows that the design has unconstrained setup and hold paths. This means that
proper timing constraints, like clock definitions and input/output delay constraints have not
been fully defined. Because of this Vivado cannot carry out a timing assessment against a set
timing requirement.
The timing summary from Vivado appears in Figure 4.3. The report shows WNS, which stands
for Worst Negative Slack as "inf”. WNS usually tells the timing slack among all analyzed
paths. A positive or zero slack usually means the timing requirement is met while a negative
slack means a timing violation.
An "inf" WNS value in this baseline report does not mean infinite timing performance. It
happens because the relevant timing paths are unconstrained. There is no valid required timing
relationship to evaluate them
<img width="1637" height="512" alt="Timing Report" src="https://github.com/user-attachments/assets/757b006c-1d70-4cf9-9c0b-8a4554f2c713" />
   Advantages and Limitations
The proposed low-power 8-bit Booth multiplier provides improvements, over the baseline
architecture. The combination of Booth encoding, optimized logic and synchronous
register-based operation reduces switching activity while maintaining correct multiplication
functionality. The major advantages and limitations of the proposed architecture are discussed
below.
4.1 Advantages of the Proposed Design
1. Significant Dynamic Power Reduction
The key benefit is the drop in dynamic power use. The baseline design used about 17.018 watts
of power while the proposed design cut this to about 0.010 watts. This gain comes mainly from
cutting switching activity by using Booth recoding and controlled synchronous operation. The
lower switching activity also reduces the charging and discharging of circuit capacitances. As
a result the proposed architecture uses less energy.
2. Improved Total Power Consumption
Total power use drops from 17.362 watts to 0.08 watts. That is a cut of about 99.54 percent.
This makes the architecture very suitable for applications that need power consumption.
3.Improved Thermal Margin
Cutting power dissipation gives an improvement in thermal behavior. The baseline design
reached a junction temperature of 111.8 degrees Celsius causing a thermal warning. After
optimization the proposed design reached a junction temperature of 25.4 degrees Celsius.
The difference equals 86.4 degrees Celsius. The reported thermal margin recovery of plus
59.6 degrees Celsius shows that the proposed design gives a safer operating margin compared
with the thermal limit used in the analysis. Therefore the optimization removes the warning
seen in the baseline implementation.
4.Timing Compliance
The proposed design gives timing results because the important paths are checked under timing
constraints. The reported numbers are WNS = 7.578 nanoseconds, WHS = 0.049 nanoseconds
and WPWS = 9.500 nanoseconds.
All three numbers are positive which shows that the checked setup, hold and pulse-width
timing requirements are met. The synchronous register structure gives controlled timing
behavior. Boosts the reliability of the implemented multiplier.
5. Reduced Hardware Utilization
Logic cell count shrinks from 37 to 29. Net count falls from 533 to 188. This shows a hardware
design and less internal interconnection complexity.
3. Suitable for Low-Power Applications
Because it uses power needs less hardware has better thermal behavior and has positive
timing margins the proposed multiplier works well for FPGA-based DSP,
embedded systems, image processing, communication systems and other low-power digital
applications.
4.2 Limitations of the Proposed Design
1. Additional Clock Net
Using registers needs a dedicated clock signal. Hence the optimized architecture adds a
clock-related net compared to a purely combinational implementation.
Clock signals spread across circuits and can add to switching activity. Even though the clock
overhead is small compared to the power savings from the proposed architecture it still counts
as a resource consideration.
2. BUFG Resource Overhead
The proposed implementation uses a BUFG (Global Clock Buffer) for clock distribution. The
reported usage is 3 percent of BUFG resources.
A BUFG gives a low-skew global clock network. Is key for reliable synchronous operation.
Yet using it adds a FPGA resource need. For a multiplier this overhead should be kept in mind
when adding several similar multiplier blocks to a larger FPGA system.
3. Increased Dependence on Clocking
Unlike a combinational multiplier the synchronous architecture relies on a valid clock signal
for correct data capture and operation. Clock frequency, clock quality and timing constraints
therefore become design factors.
4. Constraint Requirement
The better timing analysis needs timing constraints. Without well-defined clock and I/O
constraints timing reports can be incomplete or misleading. This is especially important
because the baseline design reported WNS = infinity, which came from timing paths.
5. Architecture-Specific Optimization
The power and thermal gains depend on the chosen FPGA device, operating conditions,
synthesis settings, implementation strategy, clock frequency and switching activity. Thus the
exact numbers can change when the design runs on a FPGA platform.
==============SUMMARY===============
The analysis of the Booth multiplier shows that optimizing the architecture can improve design
parameters. Booth encoding cuts down on arithmetic operations and reduces partial products.
The Booth multiplier reduces power by 99.54% dropping from 17.362 W to 0.08 W. The
junction temperature falls from 111.8 °C to 25.4 °C, which fixes the thermal warning seen in
the baseline. The increased +59.6 °C thermal margin shows an operating margin under the
analysis conditions.
Timing analysis also shows slack with 7.578 ns WNS, 0.049 ns WHS and 9.500 ns WPWS
proving that the timing requirements are met. The main limits are the need for an extra clock
net and one BUFG, which uses 3 % of the BUFG.
Hence the Booth multiplier architecture balances power, area, timing and thermal performance
making it a practical choice for low-power FPGA arithmetic.
Futerscope
5.1 Conclusion
The project shows the design and hardware build of a low-power 8-bit Booth multiplier that
uses an optimized register-based architecture. The design was made, simulated, synthesized
and built with Xilinx Vivado and its performance was checked for function, hardware use,
power, timing and thermal behavior.
Simulations proved that the Booth multiplier works correctly for input pairs giving the needed
16-bit output. Synthesis and implementation showed a small hardware build cutting logic cells
from 37 to 29 and nets from 533 to 188.
A key success of the Booth multiplier is its energy efficiency. Total power fell from 17.362
W to 0.08 W, a 99.54 % drop. Dynamic power went down a lot because Booth encoding and
synchronous operation lower switching activity.
The Booth multiplier also works better thermally. Junction temperature dropped from about
111.8 °C to 25.4 °C fixing the warning seen before. The +59.6 °C thermal margin shows a
better operating condition under the test conditions.
Timing analysis proved the Booth multiplier passes timing closure with 7.578 ns WNS,
0.049 ns WHS and 9.500 ns WPWS. These numbers show that the setup, hold and
pulse-width requirements are met.
Overall the project shows that using Booth multiplication with registers gives big power and
thermal gains while keeping the function right and timing good. The Booth multiplier
architecture is energy-efficient and resource-friendly making it fit for FPGA DSP, embedded
systems, communication and digital arithmetic.
5.2 Future Scope
The low-power 8-bit Booth multiplier is a base for more research and improvement in
low-power VLSI arithmetic. While this work uses an 8-bit Booth design with Xilinx Vivado
many changes can be tried to make it faster, larger and more useful.
5.2.1 Radix-4 and Radix-8 Booth Encoding
The Booth multiplier can grow from the Booth style to Radix-4 and Radix-8 encoding. Higherradix encoding handles multiplier bits at once and can cut the number of partial products. This
can lower the area delay and switching activity.
A side-by-side comparison of Radix-2, Radix-4 and Radix-8 versions can find the architecture,
for various power, speed and area needs.
5.2.2 Pipeline Stage Insertion
Future designs can add pipeline stages to the Booth multiplier. Pipelining splits the
multiplication into steps letting different steps run at the same time.
Pipeline tuning can raise the frequency and throughput of the Booth multiplier.. More registers
use more hardware and more clock power. So a good balance of speed and power must be
found.
5.2.3 ASIC Implementation
The proposed architecture can also be implemented as an ASIC (Application-Specific
Integrated Circuit) of an FPGA. ASIC implementation would give a detailed look at standardcell area, power, propagation delay and energy efficiency.
The design can be aimed at advanced CMOS technology nodes such as 28 nm and 16 nm.
Comparing the results across these process technologies would give information about how
technology scaling changes power, area and performance.
5.2.4 Word-Length Multipliers
Another possible extension is to increase multiplier size from 8-bit to 16-bit, 32-bit or 64-bit.
This would let the architecture be tested for higher-performance DSP and processor
applications. The effect of larger word length on power, area, timing and thermal
characteristics can then be studied.
5.2.5 Overall Future Direction
Future work can then focus on combining higher-radix Booth encoding, optimized pipelining
and advanced CMOS technology to create a more efficient multiplier architecture. Such
improvements can help develop low-power units for modern DSP processors, artificialintelligence hardware, embedded systems, image-processing applications and highperformance computing platforms.
Thus the present 8-bit Booth multiplier can serve as a foundation for creating energy-efficient
multiplier architectures that have faster speed, smaller area and lower power consumption.


