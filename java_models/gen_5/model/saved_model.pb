Ě
ű
:
Add
x"T
y"T
z"T"
Ttype:
2	
î
	ApplyAdam
var"T	
m"T	
v"T
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
;
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
8
MergeSummary
inputs*N
summary"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
D
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
<
Selu
features"T
activations"T"
Ttype:
2
M
SeluGrad
	gradients"T
outputs"T
	backprops"T"
Ttype:
2
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
1
Square
x"T
y"T"
Ttype:

2	
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.8.02
b'unknown'đĺ
l
	InputDataPlaceholder*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*
shape:˙˙˙˙˙˙˙˙˙
l
	LabelDataPlaceholder*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*
shape:˙˙˙˙˙˙˙˙˙
g
truncated_normal/shapeConst*
valueB"      *
_output_shapes
:*
dtype0
Z
truncated_normal/meanConst*
valueB
 *    *
_output_shapes
: *
dtype0
\
truncated_normal/stddevConst*
valueB
 *ÍĚĚ=*
_output_shapes
: *
dtype0

 truncated_normal/TruncatedNormalTruncatedNormaltruncated_normal/shape*
T0*
_output_shapes
:	*
dtype0*
seed2 *

seed 

truncated_normal/mulMul truncated_normal/TruncatedNormaltruncated_normal/stddev*
T0*
_output_shapes
:	
n
truncated_normalAddtruncated_normal/multruncated_normal/mean*
T0*
_output_shapes
:	
~
Variable
VariableV2*
_output_shapes
:	*
dtype0*
shared_name *
shape:	*
	container 
Ľ
Variable/AssignAssignVariabletruncated_normal*
T0*
_output_shapes
:	*
use_locking(*
validate_shape(*
_class
loc:@Variable
j
Variable/readIdentityVariable*
T0*
_output_shapes
:	*
_class
loc:@Variable
S
onesConst*
valueB*  ?*
_output_shapes	
:*
dtype0
x

Variable_1
VariableV2*
_output_shapes	
:*
dtype0*
shared_name *
shape:*
	container 

Variable_1/AssignAssign
Variable_1ones*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_1
l
Variable_1/readIdentity
Variable_1*
T0*
_output_shapes	
:*
_class
loc:@Variable_1

MatMulMatMul	InputDataVariable/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙
V
addAddMatMulVariable_1/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
D
ReluReluadd*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
i
truncated_normal_1/shapeConst*
valueB"      *
_output_shapes
:*
dtype0
\
truncated_normal_1/meanConst*
valueB
 *    *
_output_shapes
: *
dtype0
^
truncated_normal_1/stddevConst*
valueB
 *ÍĚĚ=*
_output_shapes
: *
dtype0
 
"truncated_normal_1/TruncatedNormalTruncatedNormaltruncated_normal_1/shape*
T0* 
_output_shapes
:
*
dtype0*
seed2 *

seed 

truncated_normal_1/mulMul"truncated_normal_1/TruncatedNormaltruncated_normal_1/stddev*
T0* 
_output_shapes
:

u
truncated_normal_1Addtruncated_normal_1/multruncated_normal_1/mean*
T0* 
_output_shapes
:



Variable_2
VariableV2* 
_output_shapes
:
*
dtype0*
shared_name *
shape:
*
	container 
Ž
Variable_2/AssignAssign
Variable_2truncated_normal_1*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_2
q
Variable_2/readIdentity
Variable_2*
T0* 
_output_shapes
:
*
_class
loc:@Variable_2
U
ones_1Const*
valueB*  ?*
_output_shapes	
:*
dtype0
x

Variable_3
VariableV2*
_output_shapes	
:*
dtype0*
shared_name *
shape:*
	container 

Variable_3/AssignAssign
Variable_3ones_1*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_3
l
Variable_3/readIdentity
Variable_3*
T0*
_output_shapes	
:*
_class
loc:@Variable_3

MatMul_1MatMulReluVariable_2/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z
add_1AddMatMul_1Variable_3/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
H
Relu_1Reluadd_1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
i
truncated_normal_2/shapeConst*
valueB"      *
_output_shapes
:*
dtype0
\
truncated_normal_2/meanConst*
valueB
 *    *
_output_shapes
: *
dtype0
^
truncated_normal_2/stddevConst*
valueB
 *ÍĚĚ=*
_output_shapes
: *
dtype0
 
"truncated_normal_2/TruncatedNormalTruncatedNormaltruncated_normal_2/shape*
T0* 
_output_shapes
:
*
dtype0*
seed2 *

seed 

truncated_normal_2/mulMul"truncated_normal_2/TruncatedNormaltruncated_normal_2/stddev*
T0* 
_output_shapes
:

u
truncated_normal_2Addtruncated_normal_2/multruncated_normal_2/mean*
T0* 
_output_shapes
:



Variable_4
VariableV2* 
_output_shapes
:
*
dtype0*
shared_name *
shape:
*
	container 
Ž
Variable_4/AssignAssign
Variable_4truncated_normal_2*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_4
q
Variable_4/readIdentity
Variable_4*
T0* 
_output_shapes
:
*
_class
loc:@Variable_4
U
ones_2Const*
valueB*  ?*
_output_shapes	
:*
dtype0
x

Variable_5
VariableV2*
_output_shapes	
:*
dtype0*
shared_name *
shape:*
	container 

Variable_5/AssignAssign
Variable_5ones_2*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_5
l
Variable_5/readIdentity
Variable_5*
T0*
_output_shapes	
:*
_class
loc:@Variable_5

MatMul_2MatMulRelu_1Variable_4/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z
add_2AddMatMul_2Variable_5/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
H
Relu_2Reluadd_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
i
truncated_normal_3/shapeConst*
valueB"   @   *
_output_shapes
:*
dtype0
\
truncated_normal_3/meanConst*
valueB
 *    *
_output_shapes
: *
dtype0
^
truncated_normal_3/stddevConst*
valueB
 *ÍĚĚ=*
_output_shapes
: *
dtype0

"truncated_normal_3/TruncatedNormalTruncatedNormaltruncated_normal_3/shape*
T0*
_output_shapes
:	@*
dtype0*
seed2 *

seed 

truncated_normal_3/mulMul"truncated_normal_3/TruncatedNormaltruncated_normal_3/stddev*
T0*
_output_shapes
:	@
t
truncated_normal_3Addtruncated_normal_3/multruncated_normal_3/mean*
T0*
_output_shapes
:	@


Variable_6
VariableV2*
_output_shapes
:	@*
dtype0*
shared_name *
shape:	@*
	container 
­
Variable_6/AssignAssign
Variable_6truncated_normal_3*
T0*
_output_shapes
:	@*
use_locking(*
validate_shape(*
_class
loc:@Variable_6
p
Variable_6/readIdentity
Variable_6*
T0*
_output_shapes
:	@*
_class
loc:@Variable_6
S
ones_3Const*
valueB@*  ?*
_output_shapes
:@*
dtype0
v

Variable_7
VariableV2*
_output_shapes
:@*
dtype0*
shared_name *
shape:@*
	container 

Variable_7/AssignAssign
Variable_7ones_3*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_7
k
Variable_7/readIdentity
Variable_7*
T0*
_output_shapes
:@*
_class
loc:@Variable_7

MatMul_3MatMulRelu_2Variable_6/read*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
Y
add_3AddMatMul_3Variable_7/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
G
Relu_3Reluadd_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
i
truncated_normal_4/shapeConst*
valueB"@      *
_output_shapes
:*
dtype0
\
truncated_normal_4/meanConst*
valueB
 *    *
_output_shapes
: *
dtype0
^
truncated_normal_4/stddevConst*
valueB
 *ÍĚĚ=*
_output_shapes
: *
dtype0

"truncated_normal_4/TruncatedNormalTruncatedNormaltruncated_normal_4/shape*
T0*
_output_shapes

:@*
dtype0*
seed2 *

seed 

truncated_normal_4/mulMul"truncated_normal_4/TruncatedNormaltruncated_normal_4/stddev*
T0*
_output_shapes

:@
s
truncated_normal_4Addtruncated_normal_4/multruncated_normal_4/mean*
T0*
_output_shapes

:@
~

Variable_8
VariableV2*
_output_shapes

:@*
dtype0*
shared_name *
shape
:@*
	container 
Ź
Variable_8/AssignAssign
Variable_8truncated_normal_4*
T0*
_output_shapes

:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_8
o
Variable_8/readIdentity
Variable_8*
T0*
_output_shapes

:@*
_class
loc:@Variable_8
S
ones_4Const*
valueB*  ?*
_output_shapes
:*
dtype0
v

Variable_9
VariableV2*
_output_shapes
:*
dtype0*
shared_name *
shape:*
	container 

Variable_9/AssignAssign
Variable_9ones_4*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_9
k
Variable_9/readIdentity
Variable_9*
T0*
_output_shapes
:*
_class
loc:@Variable_9

MatMul_4MatMulRelu_3Variable_8/read*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Y
add_4AddMatMul_4Variable_9/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
G
OutputSeluadd_4*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
O
subSubOutput	LabelData*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
G
SquareSquaresub*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
V
ConstConst*
valueB"       *
_output_shapes
:*
dtype0
Y
MeanMeanSquareConst*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
R
gradients/ShapeConst*
valueB *
_output_shapes
: *
dtype0
X
gradients/grad_ys_0Const*
valueB
 *  ?*
_output_shapes
: *
dtype0
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*
_output_shapes
: *

index_type0
r
!gradients/Mean_grad/Reshape/shapeConst*
valueB"      *
_output_shapes
:*
dtype0

gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
_
gradients/Mean_grad/ShapeShapeSquare*
out_type0*
T0*
_output_shapes
:

gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tmultiples0
a
gradients/Mean_grad/Shape_1ShapeSquare*
out_type0*
T0*
_output_shapes
:
^
gradients/Mean_grad/Shape_2Const*
valueB *
_output_shapes
: *
dtype0
c
gradients/Mean_grad/ConstConst*
valueB: *
_output_shapes
:*
dtype0

gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
e
gradients/Mean_grad/Const_1Const*
valueB: *
_output_shapes
:*
dtype0

gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
_
gradients/Mean_grad/Maximum/yConst*
value	B :*
_output_shapes
: *
dtype0

gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0*
_output_shapes
: 

gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0*
_output_shapes
: 
n
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

DstT0*
_output_shapes
: *

SrcT0

gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
~
gradients/Square_grad/ConstConst^gradients/Mean_grad/truediv*
valueB
 *   @*
_output_shapes
: *
dtype0
t
gradients/Square_grad/MulMulsubgradients/Square_grad/Const*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

gradients/Square_grad/Mul_1Mulgradients/Mean_grad/truedivgradients/Square_grad/Mul*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
^
gradients/sub_grad/ShapeShapeOutput*
out_type0*
T0*
_output_shapes
:
c
gradients/sub_grad/Shape_1Shape	LabelData*
out_type0*
T0*
_output_shapes
:
´
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
¤
gradients/sub_grad/SumSumgradients/Square_grad/Mul_1(gradients/sub_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0

gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
gradients/sub_grad/Sum_1Sumgradients/Square_grad/Mul_1*gradients/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
Z
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
T0*
_output_shapes
:

gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
Ú
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*-
_class#
!loc:@gradients/sub_grad/Reshape
ŕ
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*/
_class%
#!loc:@gradients/sub_grad/Reshape_1

gradients/Output_grad/SeluGradSeluGrad+gradients/sub_grad/tuple/control_dependencyOutput*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
b
gradients/add_4_grad/ShapeShapeMatMul_4*
out_type0*
T0*
_output_shapes
:
f
gradients/add_4_grad/Shape_1Const*
valueB:*
_output_shapes
:*
dtype0
ş
*gradients/add_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_4_grad/Shapegradients/add_4_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ť
gradients/add_4_grad/SumSumgradients/Output_grad/SeluGrad*gradients/add_4_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0

gradients/add_4_grad/ReshapeReshapegradients/add_4_grad/Sumgradients/add_4_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ż
gradients/add_4_grad/Sum_1Sumgradients/Output_grad/SeluGrad,gradients/add_4_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0

gradients/add_4_grad/Reshape_1Reshapegradients/add_4_grad/Sum_1gradients/add_4_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
m
%gradients/add_4_grad/tuple/group_depsNoOp^gradients/add_4_grad/Reshape^gradients/add_4_grad/Reshape_1
â
-gradients/add_4_grad/tuple/control_dependencyIdentitygradients/add_4_grad/Reshape&^gradients/add_4_grad/tuple/group_deps*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*/
_class%
#!loc:@gradients/add_4_grad/Reshape
Ű
/gradients/add_4_grad/tuple/control_dependency_1Identitygradients/add_4_grad/Reshape_1&^gradients/add_4_grad/tuple/group_deps*
T0*
_output_shapes
:*1
_class'
%#loc:@gradients/add_4_grad/Reshape_1
Ŕ
gradients/MatMul_4_grad/MatMulMatMul-gradients/add_4_grad/tuple/control_dependencyVariable_8/read*
transpose_b(*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
°
 gradients/MatMul_4_grad/MatMul_1MatMulRelu_3-gradients/add_4_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(*
_output_shapes

:@
t
(gradients/MatMul_4_grad/tuple/group_depsNoOp^gradients/MatMul_4_grad/MatMul!^gradients/MatMul_4_grad/MatMul_1
ě
0gradients/MatMul_4_grad/tuple/control_dependencyIdentitygradients/MatMul_4_grad/MatMul)^gradients/MatMul_4_grad/tuple/group_deps*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*1
_class'
%#loc:@gradients/MatMul_4_grad/MatMul
é
2gradients/MatMul_4_grad/tuple/control_dependency_1Identity gradients/MatMul_4_grad/MatMul_1)^gradients/MatMul_4_grad/tuple/group_deps*
T0*
_output_shapes

:@*3
_class)
'%loc:@gradients/MatMul_4_grad/MatMul_1

gradients/Relu_3_grad/ReluGradReluGrad0gradients/MatMul_4_grad/tuple/control_dependencyRelu_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
b
gradients/add_3_grad/ShapeShapeMatMul_3*
out_type0*
T0*
_output_shapes
:
f
gradients/add_3_grad/Shape_1Const*
valueB:@*
_output_shapes
:*
dtype0
ş
*gradients/add_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_3_grad/Shapegradients/add_3_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ť
gradients/add_3_grad/SumSumgradients/Relu_3_grad/ReluGrad*gradients/add_3_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0

gradients/add_3_grad/ReshapeReshapegradients/add_3_grad/Sumgradients/add_3_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
Ż
gradients/add_3_grad/Sum_1Sumgradients/Relu_3_grad/ReluGrad,gradients/add_3_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0

gradients/add_3_grad/Reshape_1Reshapegradients/add_3_grad/Sum_1gradients/add_3_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:@
m
%gradients/add_3_grad/tuple/group_depsNoOp^gradients/add_3_grad/Reshape^gradients/add_3_grad/Reshape_1
â
-gradients/add_3_grad/tuple/control_dependencyIdentitygradients/add_3_grad/Reshape&^gradients/add_3_grad/tuple/group_deps*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*/
_class%
#!loc:@gradients/add_3_grad/Reshape
Ű
/gradients/add_3_grad/tuple/control_dependency_1Identitygradients/add_3_grad/Reshape_1&^gradients/add_3_grad/tuple/group_deps*
T0*
_output_shapes
:@*1
_class'
%#loc:@gradients/add_3_grad/Reshape_1
Á
gradients/MatMul_3_grad/MatMulMatMul-gradients/add_3_grad/tuple/control_dependencyVariable_6/read*
transpose_b(*
T0*
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ą
 gradients/MatMul_3_grad/MatMul_1MatMulRelu_2-gradients/add_3_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(*
_output_shapes
:	@
t
(gradients/MatMul_3_grad/tuple/group_depsNoOp^gradients/MatMul_3_grad/MatMul!^gradients/MatMul_3_grad/MatMul_1
í
0gradients/MatMul_3_grad/tuple/control_dependencyIdentitygradients/MatMul_3_grad/MatMul)^gradients/MatMul_3_grad/tuple/group_deps*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*1
_class'
%#loc:@gradients/MatMul_3_grad/MatMul
ę
2gradients/MatMul_3_grad/tuple/control_dependency_1Identity gradients/MatMul_3_grad/MatMul_1)^gradients/MatMul_3_grad/tuple/group_deps*
T0*
_output_shapes
:	@*3
_class)
'%loc:@gradients/MatMul_3_grad/MatMul_1

gradients/Relu_2_grad/ReluGradReluGrad0gradients/MatMul_3_grad/tuple/control_dependencyRelu_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
b
gradients/add_2_grad/ShapeShapeMatMul_2*
out_type0*
T0*
_output_shapes
:
g
gradients/add_2_grad/Shape_1Const*
valueB:*
_output_shapes
:*
dtype0
ş
*gradients/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_2_grad/Shapegradients/add_2_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ť
gradients/add_2_grad/SumSumgradients/Relu_2_grad/ReluGrad*gradients/add_2_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0

gradients/add_2_grad/ReshapeReshapegradients/add_2_grad/Sumgradients/add_2_grad/Shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ż
gradients/add_2_grad/Sum_1Sumgradients/Relu_2_grad/ReluGrad,gradients/add_2_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0

gradients/add_2_grad/Reshape_1Reshapegradients/add_2_grad/Sum_1gradients/add_2_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:
m
%gradients/add_2_grad/tuple/group_depsNoOp^gradients/add_2_grad/Reshape^gradients/add_2_grad/Reshape_1
ă
-gradients/add_2_grad/tuple/control_dependencyIdentitygradients/add_2_grad/Reshape&^gradients/add_2_grad/tuple/group_deps*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*/
_class%
#!loc:@gradients/add_2_grad/Reshape
Ü
/gradients/add_2_grad/tuple/control_dependency_1Identitygradients/add_2_grad/Reshape_1&^gradients/add_2_grad/tuple/group_deps*
T0*
_output_shapes	
:*1
_class'
%#loc:@gradients/add_2_grad/Reshape_1
Á
gradients/MatMul_2_grad/MatMulMatMul-gradients/add_2_grad/tuple/control_dependencyVariable_4/read*
transpose_b(*
T0*
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙
˛
 gradients/MatMul_2_grad/MatMul_1MatMulRelu_1-gradients/add_2_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(* 
_output_shapes
:

t
(gradients/MatMul_2_grad/tuple/group_depsNoOp^gradients/MatMul_2_grad/MatMul!^gradients/MatMul_2_grad/MatMul_1
í
0gradients/MatMul_2_grad/tuple/control_dependencyIdentitygradients/MatMul_2_grad/MatMul)^gradients/MatMul_2_grad/tuple/group_deps*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*1
_class'
%#loc:@gradients/MatMul_2_grad/MatMul
ë
2gradients/MatMul_2_grad/tuple/control_dependency_1Identity gradients/MatMul_2_grad/MatMul_1)^gradients/MatMul_2_grad/tuple/group_deps*
T0* 
_output_shapes
:
*3
_class)
'%loc:@gradients/MatMul_2_grad/MatMul_1

gradients/Relu_1_grad/ReluGradReluGrad0gradients/MatMul_2_grad/tuple/control_dependencyRelu_1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
b
gradients/add_1_grad/ShapeShapeMatMul_1*
out_type0*
T0*
_output_shapes
:
g
gradients/add_1_grad/Shape_1Const*
valueB:*
_output_shapes
:*
dtype0
ş
*gradients/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_1_grad/Shapegradients/add_1_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ť
gradients/add_1_grad/SumSumgradients/Relu_1_grad/ReluGrad*gradients/add_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0

gradients/add_1_grad/ReshapeReshapegradients/add_1_grad/Sumgradients/add_1_grad/Shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ż
gradients/add_1_grad/Sum_1Sumgradients/Relu_1_grad/ReluGrad,gradients/add_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0

gradients/add_1_grad/Reshape_1Reshapegradients/add_1_grad/Sum_1gradients/add_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:
m
%gradients/add_1_grad/tuple/group_depsNoOp^gradients/add_1_grad/Reshape^gradients/add_1_grad/Reshape_1
ă
-gradients/add_1_grad/tuple/control_dependencyIdentitygradients/add_1_grad/Reshape&^gradients/add_1_grad/tuple/group_deps*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*/
_class%
#!loc:@gradients/add_1_grad/Reshape
Ü
/gradients/add_1_grad/tuple/control_dependency_1Identitygradients/add_1_grad/Reshape_1&^gradients/add_1_grad/tuple/group_deps*
T0*
_output_shapes	
:*1
_class'
%#loc:@gradients/add_1_grad/Reshape_1
Á
gradients/MatMul_1_grad/MatMulMatMul-gradients/add_1_grad/tuple/control_dependencyVariable_2/read*
transpose_b(*
T0*
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙
°
 gradients/MatMul_1_grad/MatMul_1MatMulRelu-gradients/add_1_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(* 
_output_shapes
:

t
(gradients/MatMul_1_grad/tuple/group_depsNoOp^gradients/MatMul_1_grad/MatMul!^gradients/MatMul_1_grad/MatMul_1
í
0gradients/MatMul_1_grad/tuple/control_dependencyIdentitygradients/MatMul_1_grad/MatMul)^gradients/MatMul_1_grad/tuple/group_deps*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*1
_class'
%#loc:@gradients/MatMul_1_grad/MatMul
ë
2gradients/MatMul_1_grad/tuple/control_dependency_1Identity gradients/MatMul_1_grad/MatMul_1)^gradients/MatMul_1_grad/tuple/group_deps*
T0* 
_output_shapes
:
*3
_class)
'%loc:@gradients/MatMul_1_grad/MatMul_1

gradients/Relu_grad/ReluGradReluGrad0gradients/MatMul_1_grad/tuple/control_dependencyRelu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
^
gradients/add_grad/ShapeShapeMatMul*
out_type0*
T0*
_output_shapes
:
e
gradients/add_grad/Shape_1Const*
valueB:*
_output_shapes
:*
dtype0
´
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ľ
gradients/add_grad/SumSumgradients/Relu_grad/ReluGrad(gradients/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0

gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Š
gradients/add_grad/Sum_1Sumgradients/Relu_grad/ReluGrad*gradients/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0

gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
Ű
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*-
_class#
!loc:@gradients/add_grad/Reshape
Ô
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*
T0*
_output_shapes	
:*/
_class%
#!loc:@gradients/add_grad/Reshape_1
ş
gradients/MatMul_grad/MatMulMatMul+gradients/add_grad/tuple/control_dependencyVariable/read*
transpose_b(*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
°
gradients/MatMul_grad/MatMul_1MatMul	InputData+gradients/add_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(*
_output_shapes
:	
n
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1
ä
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*/
_class%
#!loc:@gradients/MatMul_grad/MatMul
â
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps*
T0*
_output_shapes
:	*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1
{
beta1_power/initial_valueConst*
valueB
 *fff?*
_output_shapes
: *
dtype0*
_class
loc:@Variable

beta1_power
VariableV2*
shared_name *
_class
loc:@Variable*
_output_shapes
: *
dtype0*
	container *
shape: 
Ť
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@Variable
g
beta1_power/readIdentitybeta1_power*
T0*
_output_shapes
: *
_class
loc:@Variable
{
beta2_power/initial_valueConst*
valueB
 *wž?*
_output_shapes
: *
dtype0*
_class
loc:@Variable

beta2_power
VariableV2*
shared_name *
_class
loc:@Variable*
_output_shapes
: *
dtype0*
	container *
shape: 
Ť
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@Variable
g
beta2_power/readIdentitybeta2_power*
T0*
_output_shapes
: *
_class
loc:@Variable

/Variable/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      *
_output_shapes
:*
dtype0*
_class
loc:@Variable

%Variable/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0*
_class
loc:@Variable
Ř
Variable/Adam/Initializer/zerosFill/Variable/Adam/Initializer/zeros/shape_as_tensor%Variable/Adam/Initializer/zeros/Const*
T0*
_output_shapes
:	*

index_type0*
_class
loc:@Variable
 
Variable/Adam
VariableV2*
shared_name *
_class
loc:@Variable*
_output_shapes
:	*
dtype0*
	container *
shape:	
ž
Variable/Adam/AssignAssignVariable/AdamVariable/Adam/Initializer/zeros*
T0*
_output_shapes
:	*
use_locking(*
validate_shape(*
_class
loc:@Variable
t
Variable/Adam/readIdentityVariable/Adam*
T0*
_output_shapes
:	*
_class
loc:@Variable

1Variable/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *
_output_shapes
:*
dtype0*
_class
loc:@Variable

'Variable/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0*
_class
loc:@Variable
Ţ
!Variable/Adam_1/Initializer/zerosFill1Variable/Adam_1/Initializer/zeros/shape_as_tensor'Variable/Adam_1/Initializer/zeros/Const*
T0*
_output_shapes
:	*

index_type0*
_class
loc:@Variable
˘
Variable/Adam_1
VariableV2*
shared_name *
_class
loc:@Variable*
_output_shapes
:	*
dtype0*
	container *
shape:	
Ä
Variable/Adam_1/AssignAssignVariable/Adam_1!Variable/Adam_1/Initializer/zeros*
T0*
_output_shapes
:	*
use_locking(*
validate_shape(*
_class
loc:@Variable
x
Variable/Adam_1/readIdentityVariable/Adam_1*
T0*
_output_shapes
:	*
_class
loc:@Variable

!Variable_1/Adam/Initializer/zerosConst*
valueB*    *
_output_shapes	
:*
dtype0*
_class
loc:@Variable_1

Variable_1/Adam
VariableV2*
shared_name *
_class
loc:@Variable_1*
_output_shapes	
:*
dtype0*
	container *
shape:
Â
Variable_1/Adam/AssignAssignVariable_1/Adam!Variable_1/Adam/Initializer/zeros*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_1
v
Variable_1/Adam/readIdentityVariable_1/Adam*
T0*
_output_shapes	
:*
_class
loc:@Variable_1

#Variable_1/Adam_1/Initializer/zerosConst*
valueB*    *
_output_shapes	
:*
dtype0*
_class
loc:@Variable_1

Variable_1/Adam_1
VariableV2*
shared_name *
_class
loc:@Variable_1*
_output_shapes	
:*
dtype0*
	container *
shape:
Č
Variable_1/Adam_1/AssignAssignVariable_1/Adam_1#Variable_1/Adam_1/Initializer/zeros*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_1
z
Variable_1/Adam_1/readIdentityVariable_1/Adam_1*
T0*
_output_shapes	
:*
_class
loc:@Variable_1
Ą
1Variable_2/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      *
_output_shapes
:*
dtype0*
_class
loc:@Variable_2

'Variable_2/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0*
_class
loc:@Variable_2
á
!Variable_2/Adam/Initializer/zerosFill1Variable_2/Adam/Initializer/zeros/shape_as_tensor'Variable_2/Adam/Initializer/zeros/Const*
T0* 
_output_shapes
:
*

index_type0*
_class
loc:@Variable_2
Ś
Variable_2/Adam
VariableV2*
shared_name *
_class
loc:@Variable_2* 
_output_shapes
:
*
dtype0*
	container *
shape:

Ç
Variable_2/Adam/AssignAssignVariable_2/Adam!Variable_2/Adam/Initializer/zeros*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_2
{
Variable_2/Adam/readIdentityVariable_2/Adam*
T0* 
_output_shapes
:
*
_class
loc:@Variable_2
Ł
3Variable_2/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *
_output_shapes
:*
dtype0*
_class
loc:@Variable_2

)Variable_2/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0*
_class
loc:@Variable_2
ç
#Variable_2/Adam_1/Initializer/zerosFill3Variable_2/Adam_1/Initializer/zeros/shape_as_tensor)Variable_2/Adam_1/Initializer/zeros/Const*
T0* 
_output_shapes
:
*

index_type0*
_class
loc:@Variable_2
¨
Variable_2/Adam_1
VariableV2*
shared_name *
_class
loc:@Variable_2* 
_output_shapes
:
*
dtype0*
	container *
shape:

Í
Variable_2/Adam_1/AssignAssignVariable_2/Adam_1#Variable_2/Adam_1/Initializer/zeros*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_2

Variable_2/Adam_1/readIdentityVariable_2/Adam_1*
T0* 
_output_shapes
:
*
_class
loc:@Variable_2

!Variable_3/Adam/Initializer/zerosConst*
valueB*    *
_output_shapes	
:*
dtype0*
_class
loc:@Variable_3

Variable_3/Adam
VariableV2*
shared_name *
_class
loc:@Variable_3*
_output_shapes	
:*
dtype0*
	container *
shape:
Â
Variable_3/Adam/AssignAssignVariable_3/Adam!Variable_3/Adam/Initializer/zeros*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_3
v
Variable_3/Adam/readIdentityVariable_3/Adam*
T0*
_output_shapes	
:*
_class
loc:@Variable_3

#Variable_3/Adam_1/Initializer/zerosConst*
valueB*    *
_output_shapes	
:*
dtype0*
_class
loc:@Variable_3

Variable_3/Adam_1
VariableV2*
shared_name *
_class
loc:@Variable_3*
_output_shapes	
:*
dtype0*
	container *
shape:
Č
Variable_3/Adam_1/AssignAssignVariable_3/Adam_1#Variable_3/Adam_1/Initializer/zeros*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_3
z
Variable_3/Adam_1/readIdentityVariable_3/Adam_1*
T0*
_output_shapes	
:*
_class
loc:@Variable_3
Ą
1Variable_4/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      *
_output_shapes
:*
dtype0*
_class
loc:@Variable_4

'Variable_4/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0*
_class
loc:@Variable_4
á
!Variable_4/Adam/Initializer/zerosFill1Variable_4/Adam/Initializer/zeros/shape_as_tensor'Variable_4/Adam/Initializer/zeros/Const*
T0* 
_output_shapes
:
*

index_type0*
_class
loc:@Variable_4
Ś
Variable_4/Adam
VariableV2*
shared_name *
_class
loc:@Variable_4* 
_output_shapes
:
*
dtype0*
	container *
shape:

Ç
Variable_4/Adam/AssignAssignVariable_4/Adam!Variable_4/Adam/Initializer/zeros*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_4
{
Variable_4/Adam/readIdentityVariable_4/Adam*
T0* 
_output_shapes
:
*
_class
loc:@Variable_4
Ł
3Variable_4/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *
_output_shapes
:*
dtype0*
_class
loc:@Variable_4

)Variable_4/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0*
_class
loc:@Variable_4
ç
#Variable_4/Adam_1/Initializer/zerosFill3Variable_4/Adam_1/Initializer/zeros/shape_as_tensor)Variable_4/Adam_1/Initializer/zeros/Const*
T0* 
_output_shapes
:
*

index_type0*
_class
loc:@Variable_4
¨
Variable_4/Adam_1
VariableV2*
shared_name *
_class
loc:@Variable_4* 
_output_shapes
:
*
dtype0*
	container *
shape:

Í
Variable_4/Adam_1/AssignAssignVariable_4/Adam_1#Variable_4/Adam_1/Initializer/zeros*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_4

Variable_4/Adam_1/readIdentityVariable_4/Adam_1*
T0* 
_output_shapes
:
*
_class
loc:@Variable_4

!Variable_5/Adam/Initializer/zerosConst*
valueB*    *
_output_shapes	
:*
dtype0*
_class
loc:@Variable_5

Variable_5/Adam
VariableV2*
shared_name *
_class
loc:@Variable_5*
_output_shapes	
:*
dtype0*
	container *
shape:
Â
Variable_5/Adam/AssignAssignVariable_5/Adam!Variable_5/Adam/Initializer/zeros*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_5
v
Variable_5/Adam/readIdentityVariable_5/Adam*
T0*
_output_shapes	
:*
_class
loc:@Variable_5

#Variable_5/Adam_1/Initializer/zerosConst*
valueB*    *
_output_shapes	
:*
dtype0*
_class
loc:@Variable_5

Variable_5/Adam_1
VariableV2*
shared_name *
_class
loc:@Variable_5*
_output_shapes	
:*
dtype0*
	container *
shape:
Č
Variable_5/Adam_1/AssignAssignVariable_5/Adam_1#Variable_5/Adam_1/Initializer/zeros*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_5
z
Variable_5/Adam_1/readIdentityVariable_5/Adam_1*
T0*
_output_shapes	
:*
_class
loc:@Variable_5
Ą
1Variable_6/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"   @   *
_output_shapes
:*
dtype0*
_class
loc:@Variable_6

'Variable_6/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0*
_class
loc:@Variable_6
ŕ
!Variable_6/Adam/Initializer/zerosFill1Variable_6/Adam/Initializer/zeros/shape_as_tensor'Variable_6/Adam/Initializer/zeros/Const*
T0*
_output_shapes
:	@*

index_type0*
_class
loc:@Variable_6
¤
Variable_6/Adam
VariableV2*
shared_name *
_class
loc:@Variable_6*
_output_shapes
:	@*
dtype0*
	container *
shape:	@
Ć
Variable_6/Adam/AssignAssignVariable_6/Adam!Variable_6/Adam/Initializer/zeros*
T0*
_output_shapes
:	@*
use_locking(*
validate_shape(*
_class
loc:@Variable_6
z
Variable_6/Adam/readIdentityVariable_6/Adam*
T0*
_output_shapes
:	@*
_class
loc:@Variable_6
Ł
3Variable_6/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"   @   *
_output_shapes
:*
dtype0*
_class
loc:@Variable_6

)Variable_6/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0*
_class
loc:@Variable_6
ć
#Variable_6/Adam_1/Initializer/zerosFill3Variable_6/Adam_1/Initializer/zeros/shape_as_tensor)Variable_6/Adam_1/Initializer/zeros/Const*
T0*
_output_shapes
:	@*

index_type0*
_class
loc:@Variable_6
Ś
Variable_6/Adam_1
VariableV2*
shared_name *
_class
loc:@Variable_6*
_output_shapes
:	@*
dtype0*
	container *
shape:	@
Ě
Variable_6/Adam_1/AssignAssignVariable_6/Adam_1#Variable_6/Adam_1/Initializer/zeros*
T0*
_output_shapes
:	@*
use_locking(*
validate_shape(*
_class
loc:@Variable_6
~
Variable_6/Adam_1/readIdentityVariable_6/Adam_1*
T0*
_output_shapes
:	@*
_class
loc:@Variable_6

!Variable_7/Adam/Initializer/zerosConst*
valueB@*    *
_output_shapes
:@*
dtype0*
_class
loc:@Variable_7

Variable_7/Adam
VariableV2*
shared_name *
_class
loc:@Variable_7*
_output_shapes
:@*
dtype0*
	container *
shape:@
Á
Variable_7/Adam/AssignAssignVariable_7/Adam!Variable_7/Adam/Initializer/zeros*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_7
u
Variable_7/Adam/readIdentityVariable_7/Adam*
T0*
_output_shapes
:@*
_class
loc:@Variable_7

#Variable_7/Adam_1/Initializer/zerosConst*
valueB@*    *
_output_shapes
:@*
dtype0*
_class
loc:@Variable_7

Variable_7/Adam_1
VariableV2*
shared_name *
_class
loc:@Variable_7*
_output_shapes
:@*
dtype0*
	container *
shape:@
Ç
Variable_7/Adam_1/AssignAssignVariable_7/Adam_1#Variable_7/Adam_1/Initializer/zeros*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_7
y
Variable_7/Adam_1/readIdentityVariable_7/Adam_1*
T0*
_output_shapes
:@*
_class
loc:@Variable_7

!Variable_8/Adam/Initializer/zerosConst*
valueB@*    *
_output_shapes

:@*
dtype0*
_class
loc:@Variable_8
˘
Variable_8/Adam
VariableV2*
shared_name *
_class
loc:@Variable_8*
_output_shapes

:@*
dtype0*
	container *
shape
:@
Ĺ
Variable_8/Adam/AssignAssignVariable_8/Adam!Variable_8/Adam/Initializer/zeros*
T0*
_output_shapes

:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_8
y
Variable_8/Adam/readIdentityVariable_8/Adam*
T0*
_output_shapes

:@*
_class
loc:@Variable_8

#Variable_8/Adam_1/Initializer/zerosConst*
valueB@*    *
_output_shapes

:@*
dtype0*
_class
loc:@Variable_8
¤
Variable_8/Adam_1
VariableV2*
shared_name *
_class
loc:@Variable_8*
_output_shapes

:@*
dtype0*
	container *
shape
:@
Ë
Variable_8/Adam_1/AssignAssignVariable_8/Adam_1#Variable_8/Adam_1/Initializer/zeros*
T0*
_output_shapes

:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_8
}
Variable_8/Adam_1/readIdentityVariable_8/Adam_1*
T0*
_output_shapes

:@*
_class
loc:@Variable_8

!Variable_9/Adam/Initializer/zerosConst*
valueB*    *
_output_shapes
:*
dtype0*
_class
loc:@Variable_9

Variable_9/Adam
VariableV2*
shared_name *
_class
loc:@Variable_9*
_output_shapes
:*
dtype0*
	container *
shape:
Á
Variable_9/Adam/AssignAssignVariable_9/Adam!Variable_9/Adam/Initializer/zeros*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_9
u
Variable_9/Adam/readIdentityVariable_9/Adam*
T0*
_output_shapes
:*
_class
loc:@Variable_9

#Variable_9/Adam_1/Initializer/zerosConst*
valueB*    *
_output_shapes
:*
dtype0*
_class
loc:@Variable_9

Variable_9/Adam_1
VariableV2*
shared_name *
_class
loc:@Variable_9*
_output_shapes
:*
dtype0*
	container *
shape:
Ç
Variable_9/Adam_1/AssignAssignVariable_9/Adam_1#Variable_9/Adam_1/Initializer/zeros*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_9
y
Variable_9/Adam_1/readIdentityVariable_9/Adam_1*
T0*
_output_shapes
:*
_class
loc:@Variable_9
W
Adam/learning_rateConst*
valueB
 *¨ű7*
_output_shapes
: *
dtype0
O

Adam/beta1Const*
valueB
 *fff?*
_output_shapes
: *
dtype0
O

Adam/beta2Const*
valueB
 *wž?*
_output_shapes
: *
dtype0
Q
Adam/epsilonConst*
valueB
 *wĚ+2*
_output_shapes
: *
dtype0
Ó
Adam/update_Variable/ApplyAdam	ApplyAdamVariableVariable/AdamVariable/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon0gradients/MatMul_grad/tuple/control_dependency_1*
T0*
_output_shapes
:	*
use_locking( *
_class
loc:@Variable*
use_nesterov( 
Ö
 Adam/update_Variable_1/ApplyAdam	ApplyAdam
Variable_1Variable_1/AdamVariable_1/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon-gradients/add_grad/tuple/control_dependency_1*
T0*
_output_shapes	
:*
use_locking( *
_class
loc:@Variable_1*
use_nesterov( 
ŕ
 Adam/update_Variable_2/ApplyAdam	ApplyAdam
Variable_2Variable_2/AdamVariable_2/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon2gradients/MatMul_1_grad/tuple/control_dependency_1*
T0* 
_output_shapes
:
*
use_locking( *
_class
loc:@Variable_2*
use_nesterov( 
Ř
 Adam/update_Variable_3/ApplyAdam	ApplyAdam
Variable_3Variable_3/AdamVariable_3/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon/gradients/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes	
:*
use_locking( *
_class
loc:@Variable_3*
use_nesterov( 
ŕ
 Adam/update_Variable_4/ApplyAdam	ApplyAdam
Variable_4Variable_4/AdamVariable_4/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon2gradients/MatMul_2_grad/tuple/control_dependency_1*
T0* 
_output_shapes
:
*
use_locking( *
_class
loc:@Variable_4*
use_nesterov( 
Ř
 Adam/update_Variable_5/ApplyAdam	ApplyAdam
Variable_5Variable_5/AdamVariable_5/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon/gradients/add_2_grad/tuple/control_dependency_1*
T0*
_output_shapes	
:*
use_locking( *
_class
loc:@Variable_5*
use_nesterov( 
ß
 Adam/update_Variable_6/ApplyAdam	ApplyAdam
Variable_6Variable_6/AdamVariable_6/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon2gradients/MatMul_3_grad/tuple/control_dependency_1*
T0*
_output_shapes
:	@*
use_locking( *
_class
loc:@Variable_6*
use_nesterov( 
×
 Adam/update_Variable_7/ApplyAdam	ApplyAdam
Variable_7Variable_7/AdamVariable_7/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon/gradients/add_3_grad/tuple/control_dependency_1*
T0*
_output_shapes
:@*
use_locking( *
_class
loc:@Variable_7*
use_nesterov( 
Ţ
 Adam/update_Variable_8/ApplyAdam	ApplyAdam
Variable_8Variable_8/AdamVariable_8/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon2gradients/MatMul_4_grad/tuple/control_dependency_1*
T0*
_output_shapes

:@*
use_locking( *
_class
loc:@Variable_8*
use_nesterov( 
×
 Adam/update_Variable_9/ApplyAdam	ApplyAdam
Variable_9Variable_9/AdamVariable_9/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon/gradients/add_4_grad/tuple/control_dependency_1*
T0*
_output_shapes
:*
use_locking( *
_class
loc:@Variable_9*
use_nesterov( 
Ç
Adam/mulMulbeta1_power/read
Adam/beta1^Adam/update_Variable/ApplyAdam!^Adam/update_Variable_1/ApplyAdam!^Adam/update_Variable_2/ApplyAdam!^Adam/update_Variable_3/ApplyAdam!^Adam/update_Variable_4/ApplyAdam!^Adam/update_Variable_5/ApplyAdam!^Adam/update_Variable_6/ApplyAdam!^Adam/update_Variable_7/ApplyAdam!^Adam/update_Variable_8/ApplyAdam!^Adam/update_Variable_9/ApplyAdam*
T0*
_output_shapes
: *
_class
loc:@Variable

Adam/AssignAssignbeta1_powerAdam/mul*
T0*
_output_shapes
: *
use_locking( *
validate_shape(*
_class
loc:@Variable
É

Adam/mul_1Mulbeta2_power/read
Adam/beta2^Adam/update_Variable/ApplyAdam!^Adam/update_Variable_1/ApplyAdam!^Adam/update_Variable_2/ApplyAdam!^Adam/update_Variable_3/ApplyAdam!^Adam/update_Variable_4/ApplyAdam!^Adam/update_Variable_5/ApplyAdam!^Adam/update_Variable_6/ApplyAdam!^Adam/update_Variable_7/ApplyAdam!^Adam/update_Variable_8/ApplyAdam!^Adam/update_Variable_9/ApplyAdam*
T0*
_output_shapes
: *
_class
loc:@Variable

Adam/Assign_1Assignbeta2_power
Adam/mul_1*
T0*
_output_shapes
: *
use_locking( *
validate_shape(*
_class
loc:@Variable

AdamNoOp^Adam/Assign^Adam/Assign_1^Adam/update_Variable/ApplyAdam!^Adam/update_Variable_1/ApplyAdam!^Adam/update_Variable_2/ApplyAdam!^Adam/update_Variable_3/ApplyAdam!^Adam/update_Variable_4/ApplyAdam!^Adam/update_Variable_5/ApplyAdam!^Adam/update_Variable_6/ApplyAdam!^Adam/update_Variable_7/ApplyAdam!^Adam/update_Variable_8/ApplyAdam!^Adam/update_Variable_9/ApplyAdam
N
	cost/tagsConst*
valueB
 Bcost*
_output_shapes
: *
dtype0
G
costScalarSummary	cost/tagsMean*
T0*
_output_shapes
: 
I
Merge/MergeSummaryMergeSummarycost*
N*
_output_shapes
: 

initNoOp^Variable/Adam/Assign^Variable/Adam_1/Assign^Variable/Assign^Variable_1/Adam/Assign^Variable_1/Adam_1/Assign^Variable_1/Assign^Variable_2/Adam/Assign^Variable_2/Adam_1/Assign^Variable_2/Assign^Variable_3/Adam/Assign^Variable_3/Adam_1/Assign^Variable_3/Assign^Variable_4/Adam/Assign^Variable_4/Adam_1/Assign^Variable_4/Assign^Variable_5/Adam/Assign^Variable_5/Adam_1/Assign^Variable_5/Assign^Variable_6/Adam/Assign^Variable_6/Adam_1/Assign^Variable_6/Assign^Variable_7/Adam/Assign^Variable_7/Adam_1/Assign^Variable_7/Assign^Variable_8/Adam/Assign^Variable_8/Adam_1/Assign^Variable_8/Assign^Variable_9/Adam/Assign^Variable_9/Adam_1/Assign^Variable_9/Assign^beta1_power/Assign^beta2_power/Assign
P

save/ConstConst*
valueB Bmodel*
_output_shapes
: *
dtype0
Ö
save/SaveV2/tensor_namesConst*
value˙Bü BVariableBVariable/AdamBVariable/Adam_1B
Variable_1BVariable_1/AdamBVariable_1/Adam_1B
Variable_2BVariable_2/AdamBVariable_2/Adam_1B
Variable_3BVariable_3/AdamBVariable_3/Adam_1B
Variable_4BVariable_4/AdamBVariable_4/Adam_1B
Variable_5BVariable_5/AdamBVariable_5/Adam_1B
Variable_6BVariable_6/AdamBVariable_6/Adam_1B
Variable_7BVariable_7/AdamBVariable_7/Adam_1B
Variable_8BVariable_8/AdamBVariable_8/Adam_1B
Variable_9BVariable_9/AdamBVariable_9/Adam_1Bbeta1_powerBbeta2_power*
_output_shapes
: *
dtype0
Ł
save/SaveV2/shape_and_slicesConst*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
: *
dtype0
ý
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesVariableVariable/AdamVariable/Adam_1
Variable_1Variable_1/AdamVariable_1/Adam_1
Variable_2Variable_2/AdamVariable_2/Adam_1
Variable_3Variable_3/AdamVariable_3/Adam_1
Variable_4Variable_4/AdamVariable_4/Adam_1
Variable_5Variable_5/AdamVariable_5/Adam_1
Variable_6Variable_6/AdamVariable_6/Adam_1
Variable_7Variable_7/AdamVariable_7/Adam_1
Variable_8Variable_8/AdamVariable_8/Adam_1
Variable_9Variable_9/AdamVariable_9/Adam_1beta1_powerbeta2_power*.
dtypes$
"2 
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_output_shapes
: *
_class
loc:@save/Const
č
save/RestoreV2/tensor_namesConst"/device:CPU:0*
value˙Bü BVariableBVariable/AdamBVariable/Adam_1B
Variable_1BVariable_1/AdamBVariable_1/Adam_1B
Variable_2BVariable_2/AdamBVariable_2/Adam_1B
Variable_3BVariable_3/AdamBVariable_3/Adam_1B
Variable_4BVariable_4/AdamBVariable_4/Adam_1B
Variable_5BVariable_5/AdamBVariable_5/Adam_1B
Variable_6BVariable_6/AdamBVariable_6/Adam_1B
Variable_7BVariable_7/AdamBVariable_7/Adam_1B
Variable_8BVariable_8/AdamBVariable_8/Adam_1B
Variable_9BVariable_9/AdamBVariable_9/Adam_1Bbeta1_powerBbeta2_power*
_output_shapes
: *
dtype0
ľ
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
: *
dtype0
˝
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*.
dtypes$
"2 *
_output_shapes
::::::::::::::::::::::::::::::::

save/AssignAssignVariablesave/RestoreV2*
T0*
_output_shapes
:	*
use_locking(*
validate_shape(*
_class
loc:@Variable
¨
save/Assign_1AssignVariable/Adamsave/RestoreV2:1*
T0*
_output_shapes
:	*
use_locking(*
validate_shape(*
_class
loc:@Variable
Ş
save/Assign_2AssignVariable/Adam_1save/RestoreV2:2*
T0*
_output_shapes
:	*
use_locking(*
validate_shape(*
_class
loc:@Variable
Ł
save/Assign_3Assign
Variable_1save/RestoreV2:3*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_1
¨
save/Assign_4AssignVariable_1/Adamsave/RestoreV2:4*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_1
Ş
save/Assign_5AssignVariable_1/Adam_1save/RestoreV2:5*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_1
¨
save/Assign_6Assign
Variable_2save/RestoreV2:6*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_2
­
save/Assign_7AssignVariable_2/Adamsave/RestoreV2:7*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_2
Ż
save/Assign_8AssignVariable_2/Adam_1save/RestoreV2:8*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_2
Ł
save/Assign_9Assign
Variable_3save/RestoreV2:9*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_3
Ş
save/Assign_10AssignVariable_3/Adamsave/RestoreV2:10*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_3
Ź
save/Assign_11AssignVariable_3/Adam_1save/RestoreV2:11*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_3
Ş
save/Assign_12Assign
Variable_4save/RestoreV2:12*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_4
Ż
save/Assign_13AssignVariable_4/Adamsave/RestoreV2:13*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_4
ą
save/Assign_14AssignVariable_4/Adam_1save/RestoreV2:14*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_4
Ľ
save/Assign_15Assign
Variable_5save/RestoreV2:15*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_5
Ş
save/Assign_16AssignVariable_5/Adamsave/RestoreV2:16*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_5
Ź
save/Assign_17AssignVariable_5/Adam_1save/RestoreV2:17*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_5
Š
save/Assign_18Assign
Variable_6save/RestoreV2:18*
T0*
_output_shapes
:	@*
use_locking(*
validate_shape(*
_class
loc:@Variable_6
Ž
save/Assign_19AssignVariable_6/Adamsave/RestoreV2:19*
T0*
_output_shapes
:	@*
use_locking(*
validate_shape(*
_class
loc:@Variable_6
°
save/Assign_20AssignVariable_6/Adam_1save/RestoreV2:20*
T0*
_output_shapes
:	@*
use_locking(*
validate_shape(*
_class
loc:@Variable_6
¤
save/Assign_21Assign
Variable_7save/RestoreV2:21*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_7
Š
save/Assign_22AssignVariable_7/Adamsave/RestoreV2:22*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_7
Ť
save/Assign_23AssignVariable_7/Adam_1save/RestoreV2:23*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_7
¨
save/Assign_24Assign
Variable_8save/RestoreV2:24*
T0*
_output_shapes

:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_8
­
save/Assign_25AssignVariable_8/Adamsave/RestoreV2:25*
T0*
_output_shapes

:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_8
Ż
save/Assign_26AssignVariable_8/Adam_1save/RestoreV2:26*
T0*
_output_shapes

:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_8
¤
save/Assign_27Assign
Variable_9save/RestoreV2:27*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_9
Š
save/Assign_28AssignVariable_9/Adamsave/RestoreV2:28*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_9
Ť
save/Assign_29AssignVariable_9/Adam_1save/RestoreV2:29*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_9

save/Assign_30Assignbeta1_powersave/RestoreV2:30*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@Variable

save/Assign_31Assignbeta2_powersave/RestoreV2:31*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@Variable
Ź
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
R
save_1/ConstConst*
valueB Bmodel*
_output_shapes
: *
dtype0

save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_df8501d017aa455d89fc186fa4579d9a/part*
_output_shapes
: *
dtype0
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
S
save_1/num_shardsConst*
value	B :*
_output_shapes
: *
dtype0
m
save_1/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
_output_shapes
: *
dtype0

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards"/device:CPU:0*
_output_shapes
: 
ç
save_1/SaveV2/tensor_namesConst"/device:CPU:0*
value˙Bü BVariableBVariable/AdamBVariable/Adam_1B
Variable_1BVariable_1/AdamBVariable_1/Adam_1B
Variable_2BVariable_2/AdamBVariable_2/Adam_1B
Variable_3BVariable_3/AdamBVariable_3/Adam_1B
Variable_4BVariable_4/AdamBVariable_4/Adam_1B
Variable_5BVariable_5/AdamBVariable_5/Adam_1B
Variable_6BVariable_6/AdamBVariable_6/Adam_1B
Variable_7BVariable_7/AdamBVariable_7/Adam_1B
Variable_8BVariable_8/AdamBVariable_8/Adam_1B
Variable_9BVariable_9/AdamBVariable_9/Adam_1Bbeta1_powerBbeta2_power*
_output_shapes
: *
dtype0
´
save_1/SaveV2/shape_and_slicesConst"/device:CPU:0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
: *
dtype0

save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesVariableVariable/AdamVariable/Adam_1
Variable_1Variable_1/AdamVariable_1/Adam_1
Variable_2Variable_2/AdamVariable_2/Adam_1
Variable_3Variable_3/AdamVariable_3/Adam_1
Variable_4Variable_4/AdamVariable_4/Adam_1
Variable_5Variable_5/AdamVariable_5/Adam_1
Variable_6Variable_6/AdamVariable_6/Adam_1
Variable_7Variable_7/AdamVariable_7/Adam_1
Variable_8Variable_8/AdamVariable_8/Adam_1
Variable_9Variable_9/AdamVariable_9/Adam_1beta1_powerbeta2_power"/device:CPU:0*.
dtypes$
"2 
¨
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2"/device:CPU:0*
T0*
_output_shapes
: *)
_class
loc:@save_1/ShardedFilename
˛
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency"/device:CPU:0*

axis *
T0*
N*
_output_shapes
:

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const"/device:CPU:0*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
ę
save_1/RestoreV2/tensor_namesConst"/device:CPU:0*
value˙Bü BVariableBVariable/AdamBVariable/Adam_1B
Variable_1BVariable_1/AdamBVariable_1/Adam_1B
Variable_2BVariable_2/AdamBVariable_2/Adam_1B
Variable_3BVariable_3/AdamBVariable_3/Adam_1B
Variable_4BVariable_4/AdamBVariable_4/Adam_1B
Variable_5BVariable_5/AdamBVariable_5/Adam_1B
Variable_6BVariable_6/AdamBVariable_6/Adam_1B
Variable_7BVariable_7/AdamBVariable_7/Adam_1B
Variable_8BVariable_8/AdamBVariable_8/Adam_1B
Variable_9BVariable_9/AdamBVariable_9/Adam_1Bbeta1_powerBbeta2_power*
_output_shapes
: *
dtype0
ˇ
!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
: *
dtype0
Ĺ
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*.
dtypes$
"2 *
_output_shapes
::::::::::::::::::::::::::::::::
Ł
save_1/AssignAssignVariablesave_1/RestoreV2*
T0*
_output_shapes
:	*
use_locking(*
validate_shape(*
_class
loc:@Variable
Ź
save_1/Assign_1AssignVariable/Adamsave_1/RestoreV2:1*
T0*
_output_shapes
:	*
use_locking(*
validate_shape(*
_class
loc:@Variable
Ž
save_1/Assign_2AssignVariable/Adam_1save_1/RestoreV2:2*
T0*
_output_shapes
:	*
use_locking(*
validate_shape(*
_class
loc:@Variable
§
save_1/Assign_3Assign
Variable_1save_1/RestoreV2:3*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_1
Ź
save_1/Assign_4AssignVariable_1/Adamsave_1/RestoreV2:4*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_1
Ž
save_1/Assign_5AssignVariable_1/Adam_1save_1/RestoreV2:5*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_1
Ź
save_1/Assign_6Assign
Variable_2save_1/RestoreV2:6*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_2
ą
save_1/Assign_7AssignVariable_2/Adamsave_1/RestoreV2:7*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_2
ł
save_1/Assign_8AssignVariable_2/Adam_1save_1/RestoreV2:8*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_2
§
save_1/Assign_9Assign
Variable_3save_1/RestoreV2:9*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_3
Ž
save_1/Assign_10AssignVariable_3/Adamsave_1/RestoreV2:10*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_3
°
save_1/Assign_11AssignVariable_3/Adam_1save_1/RestoreV2:11*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_3
Ž
save_1/Assign_12Assign
Variable_4save_1/RestoreV2:12*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_4
ł
save_1/Assign_13AssignVariable_4/Adamsave_1/RestoreV2:13*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_4
ľ
save_1/Assign_14AssignVariable_4/Adam_1save_1/RestoreV2:14*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_4
Š
save_1/Assign_15Assign
Variable_5save_1/RestoreV2:15*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_5
Ž
save_1/Assign_16AssignVariable_5/Adamsave_1/RestoreV2:16*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_5
°
save_1/Assign_17AssignVariable_5/Adam_1save_1/RestoreV2:17*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_5
­
save_1/Assign_18Assign
Variable_6save_1/RestoreV2:18*
T0*
_output_shapes
:	@*
use_locking(*
validate_shape(*
_class
loc:@Variable_6
˛
save_1/Assign_19AssignVariable_6/Adamsave_1/RestoreV2:19*
T0*
_output_shapes
:	@*
use_locking(*
validate_shape(*
_class
loc:@Variable_6
´
save_1/Assign_20AssignVariable_6/Adam_1save_1/RestoreV2:20*
T0*
_output_shapes
:	@*
use_locking(*
validate_shape(*
_class
loc:@Variable_6
¨
save_1/Assign_21Assign
Variable_7save_1/RestoreV2:21*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_7
­
save_1/Assign_22AssignVariable_7/Adamsave_1/RestoreV2:22*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_7
Ż
save_1/Assign_23AssignVariable_7/Adam_1save_1/RestoreV2:23*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_7
Ź
save_1/Assign_24Assign
Variable_8save_1/RestoreV2:24*
T0*
_output_shapes

:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_8
ą
save_1/Assign_25AssignVariable_8/Adamsave_1/RestoreV2:25*
T0*
_output_shapes

:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_8
ł
save_1/Assign_26AssignVariable_8/Adam_1save_1/RestoreV2:26*
T0*
_output_shapes

:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_8
¨
save_1/Assign_27Assign
Variable_9save_1/RestoreV2:27*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_9
­
save_1/Assign_28AssignVariable_9/Adamsave_1/RestoreV2:28*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_9
Ż
save_1/Assign_29AssignVariable_9/Adam_1save_1/RestoreV2:29*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_9
Ł
save_1/Assign_30Assignbeta1_powersave_1/RestoreV2:30*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@Variable
Ł
save_1/Assign_31Assignbeta2_powersave_1/RestoreV2:31*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@Variable
đ
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_2^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_3^save_1/Assign_30^save_1/Assign_31^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
1
save_1/restore_allNoOp^save_1/restore_shard
R
save_2/ConstConst*
valueB Bmodel*
_output_shapes
: *
dtype0

save_2/StringJoin/inputs_1Const*<
value3B1 B+_temp_6f9eb506a0a644a6b2c3b05ec890fa7b/part*
_output_shapes
: *
dtype0
{
save_2/StringJoin
StringJoinsave_2/Constsave_2/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
S
save_2/num_shardsConst*
value	B :*
_output_shapes
: *
dtype0
m
save_2/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
_output_shapes
: *
dtype0

save_2/ShardedFilenameShardedFilenamesave_2/StringJoinsave_2/ShardedFilename/shardsave_2/num_shards"/device:CPU:0*
_output_shapes
: 
ç
save_2/SaveV2/tensor_namesConst"/device:CPU:0*
value˙Bü BVariableBVariable/AdamBVariable/Adam_1B
Variable_1BVariable_1/AdamBVariable_1/Adam_1B
Variable_2BVariable_2/AdamBVariable_2/Adam_1B
Variable_3BVariable_3/AdamBVariable_3/Adam_1B
Variable_4BVariable_4/AdamBVariable_4/Adam_1B
Variable_5BVariable_5/AdamBVariable_5/Adam_1B
Variable_6BVariable_6/AdamBVariable_6/Adam_1B
Variable_7BVariable_7/AdamBVariable_7/Adam_1B
Variable_8BVariable_8/AdamBVariable_8/Adam_1B
Variable_9BVariable_9/AdamBVariable_9/Adam_1Bbeta1_powerBbeta2_power*
_output_shapes
: *
dtype0
´
save_2/SaveV2/shape_and_slicesConst"/device:CPU:0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
: *
dtype0

save_2/SaveV2SaveV2save_2/ShardedFilenamesave_2/SaveV2/tensor_namessave_2/SaveV2/shape_and_slicesVariableVariable/AdamVariable/Adam_1
Variable_1Variable_1/AdamVariable_1/Adam_1
Variable_2Variable_2/AdamVariable_2/Adam_1
Variable_3Variable_3/AdamVariable_3/Adam_1
Variable_4Variable_4/AdamVariable_4/Adam_1
Variable_5Variable_5/AdamVariable_5/Adam_1
Variable_6Variable_6/AdamVariable_6/Adam_1
Variable_7Variable_7/AdamVariable_7/Adam_1
Variable_8Variable_8/AdamVariable_8/Adam_1
Variable_9Variable_9/AdamVariable_9/Adam_1beta1_powerbeta2_power"/device:CPU:0*.
dtypes$
"2 
¨
save_2/control_dependencyIdentitysave_2/ShardedFilename^save_2/SaveV2"/device:CPU:0*
T0*
_output_shapes
: *)
_class
loc:@save_2/ShardedFilename
˛
-save_2/MergeV2Checkpoints/checkpoint_prefixesPacksave_2/ShardedFilename^save_2/control_dependency"/device:CPU:0*

axis *
T0*
N*
_output_shapes
:

save_2/MergeV2CheckpointsMergeV2Checkpoints-save_2/MergeV2Checkpoints/checkpoint_prefixessave_2/Const"/device:CPU:0*
delete_old_dirs(

save_2/IdentityIdentitysave_2/Const^save_2/MergeV2Checkpoints^save_2/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
ę
save_2/RestoreV2/tensor_namesConst"/device:CPU:0*
value˙Bü BVariableBVariable/AdamBVariable/Adam_1B
Variable_1BVariable_1/AdamBVariable_1/Adam_1B
Variable_2BVariable_2/AdamBVariable_2/Adam_1B
Variable_3BVariable_3/AdamBVariable_3/Adam_1B
Variable_4BVariable_4/AdamBVariable_4/Adam_1B
Variable_5BVariable_5/AdamBVariable_5/Adam_1B
Variable_6BVariable_6/AdamBVariable_6/Adam_1B
Variable_7BVariable_7/AdamBVariable_7/Adam_1B
Variable_8BVariable_8/AdamBVariable_8/Adam_1B
Variable_9BVariable_9/AdamBVariable_9/Adam_1Bbeta1_powerBbeta2_power*
_output_shapes
: *
dtype0
ˇ
!save_2/RestoreV2/shape_and_slicesConst"/device:CPU:0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
: *
dtype0
Ĺ
save_2/RestoreV2	RestoreV2save_2/Constsave_2/RestoreV2/tensor_names!save_2/RestoreV2/shape_and_slices"/device:CPU:0*.
dtypes$
"2 *
_output_shapes
::::::::::::::::::::::::::::::::
Ł
save_2/AssignAssignVariablesave_2/RestoreV2*
T0*
_output_shapes
:	*
use_locking(*
validate_shape(*
_class
loc:@Variable
Ź
save_2/Assign_1AssignVariable/Adamsave_2/RestoreV2:1*
T0*
_output_shapes
:	*
use_locking(*
validate_shape(*
_class
loc:@Variable
Ž
save_2/Assign_2AssignVariable/Adam_1save_2/RestoreV2:2*
T0*
_output_shapes
:	*
use_locking(*
validate_shape(*
_class
loc:@Variable
§
save_2/Assign_3Assign
Variable_1save_2/RestoreV2:3*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_1
Ź
save_2/Assign_4AssignVariable_1/Adamsave_2/RestoreV2:4*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_1
Ž
save_2/Assign_5AssignVariable_1/Adam_1save_2/RestoreV2:5*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_1
Ź
save_2/Assign_6Assign
Variable_2save_2/RestoreV2:6*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_2
ą
save_2/Assign_7AssignVariable_2/Adamsave_2/RestoreV2:7*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_2
ł
save_2/Assign_8AssignVariable_2/Adam_1save_2/RestoreV2:8*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_2
§
save_2/Assign_9Assign
Variable_3save_2/RestoreV2:9*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_3
Ž
save_2/Assign_10AssignVariable_3/Adamsave_2/RestoreV2:10*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_3
°
save_2/Assign_11AssignVariable_3/Adam_1save_2/RestoreV2:11*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_3
Ž
save_2/Assign_12Assign
Variable_4save_2/RestoreV2:12*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_4
ł
save_2/Assign_13AssignVariable_4/Adamsave_2/RestoreV2:13*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_4
ľ
save_2/Assign_14AssignVariable_4/Adam_1save_2/RestoreV2:14*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_4
Š
save_2/Assign_15Assign
Variable_5save_2/RestoreV2:15*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_5
Ž
save_2/Assign_16AssignVariable_5/Adamsave_2/RestoreV2:16*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_5
°
save_2/Assign_17AssignVariable_5/Adam_1save_2/RestoreV2:17*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_5
­
save_2/Assign_18Assign
Variable_6save_2/RestoreV2:18*
T0*
_output_shapes
:	@*
use_locking(*
validate_shape(*
_class
loc:@Variable_6
˛
save_2/Assign_19AssignVariable_6/Adamsave_2/RestoreV2:19*
T0*
_output_shapes
:	@*
use_locking(*
validate_shape(*
_class
loc:@Variable_6
´
save_2/Assign_20AssignVariable_6/Adam_1save_2/RestoreV2:20*
T0*
_output_shapes
:	@*
use_locking(*
validate_shape(*
_class
loc:@Variable_6
¨
save_2/Assign_21Assign
Variable_7save_2/RestoreV2:21*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_7
­
save_2/Assign_22AssignVariable_7/Adamsave_2/RestoreV2:22*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_7
Ż
save_2/Assign_23AssignVariable_7/Adam_1save_2/RestoreV2:23*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_7
Ź
save_2/Assign_24Assign
Variable_8save_2/RestoreV2:24*
T0*
_output_shapes

:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_8
ą
save_2/Assign_25AssignVariable_8/Adamsave_2/RestoreV2:25*
T0*
_output_shapes

:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_8
ł
save_2/Assign_26AssignVariable_8/Adam_1save_2/RestoreV2:26*
T0*
_output_shapes

:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_8
¨
save_2/Assign_27Assign
Variable_9save_2/RestoreV2:27*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_9
­
save_2/Assign_28AssignVariable_9/Adamsave_2/RestoreV2:28*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_9
Ż
save_2/Assign_29AssignVariable_9/Adam_1save_2/RestoreV2:29*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_9
Ł
save_2/Assign_30Assignbeta1_powersave_2/RestoreV2:30*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@Variable
Ł
save_2/Assign_31Assignbeta2_powersave_2/RestoreV2:31*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@Variable
đ
save_2/restore_shardNoOp^save_2/Assign^save_2/Assign_1^save_2/Assign_10^save_2/Assign_11^save_2/Assign_12^save_2/Assign_13^save_2/Assign_14^save_2/Assign_15^save_2/Assign_16^save_2/Assign_17^save_2/Assign_18^save_2/Assign_19^save_2/Assign_2^save_2/Assign_20^save_2/Assign_21^save_2/Assign_22^save_2/Assign_23^save_2/Assign_24^save_2/Assign_25^save_2/Assign_26^save_2/Assign_27^save_2/Assign_28^save_2/Assign_29^save_2/Assign_3^save_2/Assign_30^save_2/Assign_31^save_2/Assign_4^save_2/Assign_5^save_2/Assign_6^save_2/Assign_7^save_2/Assign_8^save_2/Assign_9
1
save_2/restore_allNoOp^save_2/restore_shard
R
save_3/ConstConst*
valueB Bmodel*
_output_shapes
: *
dtype0

save_3/StringJoin/inputs_1Const*<
value3B1 B+_temp_c2fe2b896691426c94a481364f4dc22f/part*
_output_shapes
: *
dtype0
{
save_3/StringJoin
StringJoinsave_3/Constsave_3/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
S
save_3/num_shardsConst*
value	B :*
_output_shapes
: *
dtype0
m
save_3/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
_output_shapes
: *
dtype0

save_3/ShardedFilenameShardedFilenamesave_3/StringJoinsave_3/ShardedFilename/shardsave_3/num_shards"/device:CPU:0*
_output_shapes
: 
ç
save_3/SaveV2/tensor_namesConst"/device:CPU:0*
value˙Bü BVariableBVariable/AdamBVariable/Adam_1B
Variable_1BVariable_1/AdamBVariable_1/Adam_1B
Variable_2BVariable_2/AdamBVariable_2/Adam_1B
Variable_3BVariable_3/AdamBVariable_3/Adam_1B
Variable_4BVariable_4/AdamBVariable_4/Adam_1B
Variable_5BVariable_5/AdamBVariable_5/Adam_1B
Variable_6BVariable_6/AdamBVariable_6/Adam_1B
Variable_7BVariable_7/AdamBVariable_7/Adam_1B
Variable_8BVariable_8/AdamBVariable_8/Adam_1B
Variable_9BVariable_9/AdamBVariable_9/Adam_1Bbeta1_powerBbeta2_power*
_output_shapes
: *
dtype0
´
save_3/SaveV2/shape_and_slicesConst"/device:CPU:0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
: *
dtype0

save_3/SaveV2SaveV2save_3/ShardedFilenamesave_3/SaveV2/tensor_namessave_3/SaveV2/shape_and_slicesVariableVariable/AdamVariable/Adam_1
Variable_1Variable_1/AdamVariable_1/Adam_1
Variable_2Variable_2/AdamVariable_2/Adam_1
Variable_3Variable_3/AdamVariable_3/Adam_1
Variable_4Variable_4/AdamVariable_4/Adam_1
Variable_5Variable_5/AdamVariable_5/Adam_1
Variable_6Variable_6/AdamVariable_6/Adam_1
Variable_7Variable_7/AdamVariable_7/Adam_1
Variable_8Variable_8/AdamVariable_8/Adam_1
Variable_9Variable_9/AdamVariable_9/Adam_1beta1_powerbeta2_power"/device:CPU:0*.
dtypes$
"2 
¨
save_3/control_dependencyIdentitysave_3/ShardedFilename^save_3/SaveV2"/device:CPU:0*
T0*
_output_shapes
: *)
_class
loc:@save_3/ShardedFilename
˛
-save_3/MergeV2Checkpoints/checkpoint_prefixesPacksave_3/ShardedFilename^save_3/control_dependency"/device:CPU:0*

axis *
T0*
N*
_output_shapes
:

save_3/MergeV2CheckpointsMergeV2Checkpoints-save_3/MergeV2Checkpoints/checkpoint_prefixessave_3/Const"/device:CPU:0*
delete_old_dirs(

save_3/IdentityIdentitysave_3/Const^save_3/MergeV2Checkpoints^save_3/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
ę
save_3/RestoreV2/tensor_namesConst"/device:CPU:0*
value˙Bü BVariableBVariable/AdamBVariable/Adam_1B
Variable_1BVariable_1/AdamBVariable_1/Adam_1B
Variable_2BVariable_2/AdamBVariable_2/Adam_1B
Variable_3BVariable_3/AdamBVariable_3/Adam_1B
Variable_4BVariable_4/AdamBVariable_4/Adam_1B
Variable_5BVariable_5/AdamBVariable_5/Adam_1B
Variable_6BVariable_6/AdamBVariable_6/Adam_1B
Variable_7BVariable_7/AdamBVariable_7/Adam_1B
Variable_8BVariable_8/AdamBVariable_8/Adam_1B
Variable_9BVariable_9/AdamBVariable_9/Adam_1Bbeta1_powerBbeta2_power*
_output_shapes
: *
dtype0
ˇ
!save_3/RestoreV2/shape_and_slicesConst"/device:CPU:0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
: *
dtype0
Ĺ
save_3/RestoreV2	RestoreV2save_3/Constsave_3/RestoreV2/tensor_names!save_3/RestoreV2/shape_and_slices"/device:CPU:0*.
dtypes$
"2 *
_output_shapes
::::::::::::::::::::::::::::::::
Ł
save_3/AssignAssignVariablesave_3/RestoreV2*
T0*
_output_shapes
:	*
use_locking(*
validate_shape(*
_class
loc:@Variable
Ź
save_3/Assign_1AssignVariable/Adamsave_3/RestoreV2:1*
T0*
_output_shapes
:	*
use_locking(*
validate_shape(*
_class
loc:@Variable
Ž
save_3/Assign_2AssignVariable/Adam_1save_3/RestoreV2:2*
T0*
_output_shapes
:	*
use_locking(*
validate_shape(*
_class
loc:@Variable
§
save_3/Assign_3Assign
Variable_1save_3/RestoreV2:3*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_1
Ź
save_3/Assign_4AssignVariable_1/Adamsave_3/RestoreV2:4*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_1
Ž
save_3/Assign_5AssignVariable_1/Adam_1save_3/RestoreV2:5*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_1
Ź
save_3/Assign_6Assign
Variable_2save_3/RestoreV2:6*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_2
ą
save_3/Assign_7AssignVariable_2/Adamsave_3/RestoreV2:7*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_2
ł
save_3/Assign_8AssignVariable_2/Adam_1save_3/RestoreV2:8*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_2
§
save_3/Assign_9Assign
Variable_3save_3/RestoreV2:9*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_3
Ž
save_3/Assign_10AssignVariable_3/Adamsave_3/RestoreV2:10*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_3
°
save_3/Assign_11AssignVariable_3/Adam_1save_3/RestoreV2:11*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_3
Ž
save_3/Assign_12Assign
Variable_4save_3/RestoreV2:12*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_4
ł
save_3/Assign_13AssignVariable_4/Adamsave_3/RestoreV2:13*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_4
ľ
save_3/Assign_14AssignVariable_4/Adam_1save_3/RestoreV2:14*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_4
Š
save_3/Assign_15Assign
Variable_5save_3/RestoreV2:15*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_5
Ž
save_3/Assign_16AssignVariable_5/Adamsave_3/RestoreV2:16*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_5
°
save_3/Assign_17AssignVariable_5/Adam_1save_3/RestoreV2:17*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_5
­
save_3/Assign_18Assign
Variable_6save_3/RestoreV2:18*
T0*
_output_shapes
:	@*
use_locking(*
validate_shape(*
_class
loc:@Variable_6
˛
save_3/Assign_19AssignVariable_6/Adamsave_3/RestoreV2:19*
T0*
_output_shapes
:	@*
use_locking(*
validate_shape(*
_class
loc:@Variable_6
´
save_3/Assign_20AssignVariable_6/Adam_1save_3/RestoreV2:20*
T0*
_output_shapes
:	@*
use_locking(*
validate_shape(*
_class
loc:@Variable_6
¨
save_3/Assign_21Assign
Variable_7save_3/RestoreV2:21*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_7
­
save_3/Assign_22AssignVariable_7/Adamsave_3/RestoreV2:22*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_7
Ż
save_3/Assign_23AssignVariable_7/Adam_1save_3/RestoreV2:23*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_7
Ź
save_3/Assign_24Assign
Variable_8save_3/RestoreV2:24*
T0*
_output_shapes

:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_8
ą
save_3/Assign_25AssignVariable_8/Adamsave_3/RestoreV2:25*
T0*
_output_shapes

:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_8
ł
save_3/Assign_26AssignVariable_8/Adam_1save_3/RestoreV2:26*
T0*
_output_shapes

:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_8
¨
save_3/Assign_27Assign
Variable_9save_3/RestoreV2:27*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_9
­
save_3/Assign_28AssignVariable_9/Adamsave_3/RestoreV2:28*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_9
Ż
save_3/Assign_29AssignVariable_9/Adam_1save_3/RestoreV2:29*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_9
Ł
save_3/Assign_30Assignbeta1_powersave_3/RestoreV2:30*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@Variable
Ł
save_3/Assign_31Assignbeta2_powersave_3/RestoreV2:31*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@Variable
đ
save_3/restore_shardNoOp^save_3/Assign^save_3/Assign_1^save_3/Assign_10^save_3/Assign_11^save_3/Assign_12^save_3/Assign_13^save_3/Assign_14^save_3/Assign_15^save_3/Assign_16^save_3/Assign_17^save_3/Assign_18^save_3/Assign_19^save_3/Assign_2^save_3/Assign_20^save_3/Assign_21^save_3/Assign_22^save_3/Assign_23^save_3/Assign_24^save_3/Assign_25^save_3/Assign_26^save_3/Assign_27^save_3/Assign_28^save_3/Assign_29^save_3/Assign_3^save_3/Assign_30^save_3/Assign_31^save_3/Assign_4^save_3/Assign_5^save_3/Assign_6^save_3/Assign_7^save_3/Assign_8^save_3/Assign_9
1
save_3/restore_allNoOp^save_3/restore_shard
R
save_4/ConstConst*
valueB Bmodel*
_output_shapes
: *
dtype0

save_4/StringJoin/inputs_1Const*<
value3B1 B+_temp_49a7c7a44fde4f2a96c7800f1497cc0c/part*
_output_shapes
: *
dtype0
{
save_4/StringJoin
StringJoinsave_4/Constsave_4/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
S
save_4/num_shardsConst*
value	B :*
_output_shapes
: *
dtype0
m
save_4/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
_output_shapes
: *
dtype0

save_4/ShardedFilenameShardedFilenamesave_4/StringJoinsave_4/ShardedFilename/shardsave_4/num_shards"/device:CPU:0*
_output_shapes
: 
ç
save_4/SaveV2/tensor_namesConst"/device:CPU:0*
value˙Bü BVariableBVariable/AdamBVariable/Adam_1B
Variable_1BVariable_1/AdamBVariable_1/Adam_1B
Variable_2BVariable_2/AdamBVariable_2/Adam_1B
Variable_3BVariable_3/AdamBVariable_3/Adam_1B
Variable_4BVariable_4/AdamBVariable_4/Adam_1B
Variable_5BVariable_5/AdamBVariable_5/Adam_1B
Variable_6BVariable_6/AdamBVariable_6/Adam_1B
Variable_7BVariable_7/AdamBVariable_7/Adam_1B
Variable_8BVariable_8/AdamBVariable_8/Adam_1B
Variable_9BVariable_9/AdamBVariable_9/Adam_1Bbeta1_powerBbeta2_power*
_output_shapes
: *
dtype0
´
save_4/SaveV2/shape_and_slicesConst"/device:CPU:0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
: *
dtype0

save_4/SaveV2SaveV2save_4/ShardedFilenamesave_4/SaveV2/tensor_namessave_4/SaveV2/shape_and_slicesVariableVariable/AdamVariable/Adam_1
Variable_1Variable_1/AdamVariable_1/Adam_1
Variable_2Variable_2/AdamVariable_2/Adam_1
Variable_3Variable_3/AdamVariable_3/Adam_1
Variable_4Variable_4/AdamVariable_4/Adam_1
Variable_5Variable_5/AdamVariable_5/Adam_1
Variable_6Variable_6/AdamVariable_6/Adam_1
Variable_7Variable_7/AdamVariable_7/Adam_1
Variable_8Variable_8/AdamVariable_8/Adam_1
Variable_9Variable_9/AdamVariable_9/Adam_1beta1_powerbeta2_power"/device:CPU:0*.
dtypes$
"2 
¨
save_4/control_dependencyIdentitysave_4/ShardedFilename^save_4/SaveV2"/device:CPU:0*
T0*
_output_shapes
: *)
_class
loc:@save_4/ShardedFilename
˛
-save_4/MergeV2Checkpoints/checkpoint_prefixesPacksave_4/ShardedFilename^save_4/control_dependency"/device:CPU:0*

axis *
T0*
N*
_output_shapes
:

save_4/MergeV2CheckpointsMergeV2Checkpoints-save_4/MergeV2Checkpoints/checkpoint_prefixessave_4/Const"/device:CPU:0*
delete_old_dirs(

save_4/IdentityIdentitysave_4/Const^save_4/MergeV2Checkpoints^save_4/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
ę
save_4/RestoreV2/tensor_namesConst"/device:CPU:0*
value˙Bü BVariableBVariable/AdamBVariable/Adam_1B
Variable_1BVariable_1/AdamBVariable_1/Adam_1B
Variable_2BVariable_2/AdamBVariable_2/Adam_1B
Variable_3BVariable_3/AdamBVariable_3/Adam_1B
Variable_4BVariable_4/AdamBVariable_4/Adam_1B
Variable_5BVariable_5/AdamBVariable_5/Adam_1B
Variable_6BVariable_6/AdamBVariable_6/Adam_1B
Variable_7BVariable_7/AdamBVariable_7/Adam_1B
Variable_8BVariable_8/AdamBVariable_8/Adam_1B
Variable_9BVariable_9/AdamBVariable_9/Adam_1Bbeta1_powerBbeta2_power*
_output_shapes
: *
dtype0
ˇ
!save_4/RestoreV2/shape_and_slicesConst"/device:CPU:0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
: *
dtype0
Ĺ
save_4/RestoreV2	RestoreV2save_4/Constsave_4/RestoreV2/tensor_names!save_4/RestoreV2/shape_and_slices"/device:CPU:0*.
dtypes$
"2 *
_output_shapes
::::::::::::::::::::::::::::::::
Ł
save_4/AssignAssignVariablesave_4/RestoreV2*
T0*
_output_shapes
:	*
use_locking(*
validate_shape(*
_class
loc:@Variable
Ź
save_4/Assign_1AssignVariable/Adamsave_4/RestoreV2:1*
T0*
_output_shapes
:	*
use_locking(*
validate_shape(*
_class
loc:@Variable
Ž
save_4/Assign_2AssignVariable/Adam_1save_4/RestoreV2:2*
T0*
_output_shapes
:	*
use_locking(*
validate_shape(*
_class
loc:@Variable
§
save_4/Assign_3Assign
Variable_1save_4/RestoreV2:3*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_1
Ź
save_4/Assign_4AssignVariable_1/Adamsave_4/RestoreV2:4*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_1
Ž
save_4/Assign_5AssignVariable_1/Adam_1save_4/RestoreV2:5*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_1
Ź
save_4/Assign_6Assign
Variable_2save_4/RestoreV2:6*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_2
ą
save_4/Assign_7AssignVariable_2/Adamsave_4/RestoreV2:7*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_2
ł
save_4/Assign_8AssignVariable_2/Adam_1save_4/RestoreV2:8*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_2
§
save_4/Assign_9Assign
Variable_3save_4/RestoreV2:9*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_3
Ž
save_4/Assign_10AssignVariable_3/Adamsave_4/RestoreV2:10*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_3
°
save_4/Assign_11AssignVariable_3/Adam_1save_4/RestoreV2:11*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_3
Ž
save_4/Assign_12Assign
Variable_4save_4/RestoreV2:12*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_4
ł
save_4/Assign_13AssignVariable_4/Adamsave_4/RestoreV2:13*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_4
ľ
save_4/Assign_14AssignVariable_4/Adam_1save_4/RestoreV2:14*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_4
Š
save_4/Assign_15Assign
Variable_5save_4/RestoreV2:15*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_5
Ž
save_4/Assign_16AssignVariable_5/Adamsave_4/RestoreV2:16*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_5
°
save_4/Assign_17AssignVariable_5/Adam_1save_4/RestoreV2:17*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_5
­
save_4/Assign_18Assign
Variable_6save_4/RestoreV2:18*
T0*
_output_shapes
:	@*
use_locking(*
validate_shape(*
_class
loc:@Variable_6
˛
save_4/Assign_19AssignVariable_6/Adamsave_4/RestoreV2:19*
T0*
_output_shapes
:	@*
use_locking(*
validate_shape(*
_class
loc:@Variable_6
´
save_4/Assign_20AssignVariable_6/Adam_1save_4/RestoreV2:20*
T0*
_output_shapes
:	@*
use_locking(*
validate_shape(*
_class
loc:@Variable_6
¨
save_4/Assign_21Assign
Variable_7save_4/RestoreV2:21*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_7
­
save_4/Assign_22AssignVariable_7/Adamsave_4/RestoreV2:22*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_7
Ż
save_4/Assign_23AssignVariable_7/Adam_1save_4/RestoreV2:23*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_7
Ź
save_4/Assign_24Assign
Variable_8save_4/RestoreV2:24*
T0*
_output_shapes

:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_8
ą
save_4/Assign_25AssignVariable_8/Adamsave_4/RestoreV2:25*
T0*
_output_shapes

:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_8
ł
save_4/Assign_26AssignVariable_8/Adam_1save_4/RestoreV2:26*
T0*
_output_shapes

:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_8
¨
save_4/Assign_27Assign
Variable_9save_4/RestoreV2:27*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_9
­
save_4/Assign_28AssignVariable_9/Adamsave_4/RestoreV2:28*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_9
Ż
save_4/Assign_29AssignVariable_9/Adam_1save_4/RestoreV2:29*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_9
Ł
save_4/Assign_30Assignbeta1_powersave_4/RestoreV2:30*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@Variable
Ł
save_4/Assign_31Assignbeta2_powersave_4/RestoreV2:31*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@Variable
đ
save_4/restore_shardNoOp^save_4/Assign^save_4/Assign_1^save_4/Assign_10^save_4/Assign_11^save_4/Assign_12^save_4/Assign_13^save_4/Assign_14^save_4/Assign_15^save_4/Assign_16^save_4/Assign_17^save_4/Assign_18^save_4/Assign_19^save_4/Assign_2^save_4/Assign_20^save_4/Assign_21^save_4/Assign_22^save_4/Assign_23^save_4/Assign_24^save_4/Assign_25^save_4/Assign_26^save_4/Assign_27^save_4/Assign_28^save_4/Assign_29^save_4/Assign_3^save_4/Assign_30^save_4/Assign_31^save_4/Assign_4^save_4/Assign_5^save_4/Assign_6^save_4/Assign_7^save_4/Assign_8^save_4/Assign_9
1
save_4/restore_allNoOp^save_4/restore_shard
R
save_5/ConstConst*
valueB Bmodel*
_output_shapes
: *
dtype0

save_5/StringJoin/inputs_1Const*<
value3B1 B+_temp_17775674fe77412784a353b57ee424d6/part*
_output_shapes
: *
dtype0
{
save_5/StringJoin
StringJoinsave_5/Constsave_5/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
S
save_5/num_shardsConst*
value	B :*
_output_shapes
: *
dtype0
m
save_5/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
_output_shapes
: *
dtype0

save_5/ShardedFilenameShardedFilenamesave_5/StringJoinsave_5/ShardedFilename/shardsave_5/num_shards"/device:CPU:0*
_output_shapes
: 
ç
save_5/SaveV2/tensor_namesConst"/device:CPU:0*
value˙Bü BVariableBVariable/AdamBVariable/Adam_1B
Variable_1BVariable_1/AdamBVariable_1/Adam_1B
Variable_2BVariable_2/AdamBVariable_2/Adam_1B
Variable_3BVariable_3/AdamBVariable_3/Adam_1B
Variable_4BVariable_4/AdamBVariable_4/Adam_1B
Variable_5BVariable_5/AdamBVariable_5/Adam_1B
Variable_6BVariable_6/AdamBVariable_6/Adam_1B
Variable_7BVariable_7/AdamBVariable_7/Adam_1B
Variable_8BVariable_8/AdamBVariable_8/Adam_1B
Variable_9BVariable_9/AdamBVariable_9/Adam_1Bbeta1_powerBbeta2_power*
_output_shapes
: *
dtype0
´
save_5/SaveV2/shape_and_slicesConst"/device:CPU:0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
: *
dtype0

save_5/SaveV2SaveV2save_5/ShardedFilenamesave_5/SaveV2/tensor_namessave_5/SaveV2/shape_and_slicesVariableVariable/AdamVariable/Adam_1
Variable_1Variable_1/AdamVariable_1/Adam_1
Variable_2Variable_2/AdamVariable_2/Adam_1
Variable_3Variable_3/AdamVariable_3/Adam_1
Variable_4Variable_4/AdamVariable_4/Adam_1
Variable_5Variable_5/AdamVariable_5/Adam_1
Variable_6Variable_6/AdamVariable_6/Adam_1
Variable_7Variable_7/AdamVariable_7/Adam_1
Variable_8Variable_8/AdamVariable_8/Adam_1
Variable_9Variable_9/AdamVariable_9/Adam_1beta1_powerbeta2_power"/device:CPU:0*.
dtypes$
"2 
¨
save_5/control_dependencyIdentitysave_5/ShardedFilename^save_5/SaveV2"/device:CPU:0*
T0*
_output_shapes
: *)
_class
loc:@save_5/ShardedFilename
˛
-save_5/MergeV2Checkpoints/checkpoint_prefixesPacksave_5/ShardedFilename^save_5/control_dependency"/device:CPU:0*

axis *
T0*
N*
_output_shapes
:

save_5/MergeV2CheckpointsMergeV2Checkpoints-save_5/MergeV2Checkpoints/checkpoint_prefixessave_5/Const"/device:CPU:0*
delete_old_dirs(

save_5/IdentityIdentitysave_5/Const^save_5/MergeV2Checkpoints^save_5/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
ę
save_5/RestoreV2/tensor_namesConst"/device:CPU:0*
value˙Bü BVariableBVariable/AdamBVariable/Adam_1B
Variable_1BVariable_1/AdamBVariable_1/Adam_1B
Variable_2BVariable_2/AdamBVariable_2/Adam_1B
Variable_3BVariable_3/AdamBVariable_3/Adam_1B
Variable_4BVariable_4/AdamBVariable_4/Adam_1B
Variable_5BVariable_5/AdamBVariable_5/Adam_1B
Variable_6BVariable_6/AdamBVariable_6/Adam_1B
Variable_7BVariable_7/AdamBVariable_7/Adam_1B
Variable_8BVariable_8/AdamBVariable_8/Adam_1B
Variable_9BVariable_9/AdamBVariable_9/Adam_1Bbeta1_powerBbeta2_power*
_output_shapes
: *
dtype0
ˇ
!save_5/RestoreV2/shape_and_slicesConst"/device:CPU:0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
: *
dtype0
Ĺ
save_5/RestoreV2	RestoreV2save_5/Constsave_5/RestoreV2/tensor_names!save_5/RestoreV2/shape_and_slices"/device:CPU:0*.
dtypes$
"2 *
_output_shapes
::::::::::::::::::::::::::::::::
Ł
save_5/AssignAssignVariablesave_5/RestoreV2*
T0*
_output_shapes
:	*
use_locking(*
validate_shape(*
_class
loc:@Variable
Ź
save_5/Assign_1AssignVariable/Adamsave_5/RestoreV2:1*
T0*
_output_shapes
:	*
use_locking(*
validate_shape(*
_class
loc:@Variable
Ž
save_5/Assign_2AssignVariable/Adam_1save_5/RestoreV2:2*
T0*
_output_shapes
:	*
use_locking(*
validate_shape(*
_class
loc:@Variable
§
save_5/Assign_3Assign
Variable_1save_5/RestoreV2:3*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_1
Ź
save_5/Assign_4AssignVariable_1/Adamsave_5/RestoreV2:4*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_1
Ž
save_5/Assign_5AssignVariable_1/Adam_1save_5/RestoreV2:5*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_1
Ź
save_5/Assign_6Assign
Variable_2save_5/RestoreV2:6*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_2
ą
save_5/Assign_7AssignVariable_2/Adamsave_5/RestoreV2:7*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_2
ł
save_5/Assign_8AssignVariable_2/Adam_1save_5/RestoreV2:8*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_2
§
save_5/Assign_9Assign
Variable_3save_5/RestoreV2:9*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_3
Ž
save_5/Assign_10AssignVariable_3/Adamsave_5/RestoreV2:10*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_3
°
save_5/Assign_11AssignVariable_3/Adam_1save_5/RestoreV2:11*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_3
Ž
save_5/Assign_12Assign
Variable_4save_5/RestoreV2:12*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_4
ł
save_5/Assign_13AssignVariable_4/Adamsave_5/RestoreV2:13*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_4
ľ
save_5/Assign_14AssignVariable_4/Adam_1save_5/RestoreV2:14*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_4
Š
save_5/Assign_15Assign
Variable_5save_5/RestoreV2:15*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_5
Ž
save_5/Assign_16AssignVariable_5/Adamsave_5/RestoreV2:16*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_5
°
save_5/Assign_17AssignVariable_5/Adam_1save_5/RestoreV2:17*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_5
­
save_5/Assign_18Assign
Variable_6save_5/RestoreV2:18*
T0*
_output_shapes
:	@*
use_locking(*
validate_shape(*
_class
loc:@Variable_6
˛
save_5/Assign_19AssignVariable_6/Adamsave_5/RestoreV2:19*
T0*
_output_shapes
:	@*
use_locking(*
validate_shape(*
_class
loc:@Variable_6
´
save_5/Assign_20AssignVariable_6/Adam_1save_5/RestoreV2:20*
T0*
_output_shapes
:	@*
use_locking(*
validate_shape(*
_class
loc:@Variable_6
¨
save_5/Assign_21Assign
Variable_7save_5/RestoreV2:21*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_7
­
save_5/Assign_22AssignVariable_7/Adamsave_5/RestoreV2:22*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_7
Ż
save_5/Assign_23AssignVariable_7/Adam_1save_5/RestoreV2:23*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_7
Ź
save_5/Assign_24Assign
Variable_8save_5/RestoreV2:24*
T0*
_output_shapes

:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_8
ą
save_5/Assign_25AssignVariable_8/Adamsave_5/RestoreV2:25*
T0*
_output_shapes

:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_8
ł
save_5/Assign_26AssignVariable_8/Adam_1save_5/RestoreV2:26*
T0*
_output_shapes

:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_8
¨
save_5/Assign_27Assign
Variable_9save_5/RestoreV2:27*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_9
­
save_5/Assign_28AssignVariable_9/Adamsave_5/RestoreV2:28*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_9
Ż
save_5/Assign_29AssignVariable_9/Adam_1save_5/RestoreV2:29*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_9
Ł
save_5/Assign_30Assignbeta1_powersave_5/RestoreV2:30*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@Variable
Ł
save_5/Assign_31Assignbeta2_powersave_5/RestoreV2:31*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@Variable
đ
save_5/restore_shardNoOp^save_5/Assign^save_5/Assign_1^save_5/Assign_10^save_5/Assign_11^save_5/Assign_12^save_5/Assign_13^save_5/Assign_14^save_5/Assign_15^save_5/Assign_16^save_5/Assign_17^save_5/Assign_18^save_5/Assign_19^save_5/Assign_2^save_5/Assign_20^save_5/Assign_21^save_5/Assign_22^save_5/Assign_23^save_5/Assign_24^save_5/Assign_25^save_5/Assign_26^save_5/Assign_27^save_5/Assign_28^save_5/Assign_29^save_5/Assign_3^save_5/Assign_30^save_5/Assign_31^save_5/Assign_4^save_5/Assign_5^save_5/Assign_6^save_5/Assign_7^save_5/Assign_8^save_5/Assign_9
1
save_5/restore_allNoOp^save_5/restore_shard"B
save_5/Const:0save_5/Identity:0save_5/restore_all (5 @F8"Í
trainable_variablesľ˛
B

Variable:0Variable/AssignVariable/read:02truncated_normal:0
<
Variable_1:0Variable_1/AssignVariable_1/read:02ones:0
J
Variable_2:0Variable_2/AssignVariable_2/read:02truncated_normal_1:0
>
Variable_3:0Variable_3/AssignVariable_3/read:02ones_1:0
J
Variable_4:0Variable_4/AssignVariable_4/read:02truncated_normal_2:0
>
Variable_5:0Variable_5/AssignVariable_5/read:02ones_2:0
J
Variable_6:0Variable_6/AssignVariable_6/read:02truncated_normal_3:0
>
Variable_7:0Variable_7/AssignVariable_7/read:02ones_3:0
J
Variable_8:0Variable_8/AssignVariable_8/read:02truncated_normal_4:0
>
Variable_9:0Variable_9/AssignVariable_9/read:02ones_4:0"
	summaries


cost:0"
train_op

Adam"÷
	variableséć
B

Variable:0Variable/AssignVariable/read:02truncated_normal:0
<
Variable_1:0Variable_1/AssignVariable_1/read:02ones:0
J
Variable_2:0Variable_2/AssignVariable_2/read:02truncated_normal_1:0
>
Variable_3:0Variable_3/AssignVariable_3/read:02ones_1:0
J
Variable_4:0Variable_4/AssignVariable_4/read:02truncated_normal_2:0
>
Variable_5:0Variable_5/AssignVariable_5/read:02ones_2:0
J
Variable_6:0Variable_6/AssignVariable_6/read:02truncated_normal_3:0
>
Variable_7:0Variable_7/AssignVariable_7/read:02ones_3:0
J
Variable_8:0Variable_8/AssignVariable_8/read:02truncated_normal_4:0
>
Variable_9:0Variable_9/AssignVariable_9/read:02ones_4:0
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0
`
Variable/Adam:0Variable/Adam/AssignVariable/Adam/read:02!Variable/Adam/Initializer/zeros:0
h
Variable/Adam_1:0Variable/Adam_1/AssignVariable/Adam_1/read:02#Variable/Adam_1/Initializer/zeros:0
h
Variable_1/Adam:0Variable_1/Adam/AssignVariable_1/Adam/read:02#Variable_1/Adam/Initializer/zeros:0
p
Variable_1/Adam_1:0Variable_1/Adam_1/AssignVariable_1/Adam_1/read:02%Variable_1/Adam_1/Initializer/zeros:0
h
Variable_2/Adam:0Variable_2/Adam/AssignVariable_2/Adam/read:02#Variable_2/Adam/Initializer/zeros:0
p
Variable_2/Adam_1:0Variable_2/Adam_1/AssignVariable_2/Adam_1/read:02%Variable_2/Adam_1/Initializer/zeros:0
h
Variable_3/Adam:0Variable_3/Adam/AssignVariable_3/Adam/read:02#Variable_3/Adam/Initializer/zeros:0
p
Variable_3/Adam_1:0Variable_3/Adam_1/AssignVariable_3/Adam_1/read:02%Variable_3/Adam_1/Initializer/zeros:0
h
Variable_4/Adam:0Variable_4/Adam/AssignVariable_4/Adam/read:02#Variable_4/Adam/Initializer/zeros:0
p
Variable_4/Adam_1:0Variable_4/Adam_1/AssignVariable_4/Adam_1/read:02%Variable_4/Adam_1/Initializer/zeros:0
h
Variable_5/Adam:0Variable_5/Adam/AssignVariable_5/Adam/read:02#Variable_5/Adam/Initializer/zeros:0
p
Variable_5/Adam_1:0Variable_5/Adam_1/AssignVariable_5/Adam_1/read:02%Variable_5/Adam_1/Initializer/zeros:0
h
Variable_6/Adam:0Variable_6/Adam/AssignVariable_6/Adam/read:02#Variable_6/Adam/Initializer/zeros:0
p
Variable_6/Adam_1:0Variable_6/Adam_1/AssignVariable_6/Adam_1/read:02%Variable_6/Adam_1/Initializer/zeros:0
h
Variable_7/Adam:0Variable_7/Adam/AssignVariable_7/Adam/read:02#Variable_7/Adam/Initializer/zeros:0
p
Variable_7/Adam_1:0Variable_7/Adam_1/AssignVariable_7/Adam_1/read:02%Variable_7/Adam_1/Initializer/zeros:0
h
Variable_8/Adam:0Variable_8/Adam/AssignVariable_8/Adam/read:02#Variable_8/Adam/Initializer/zeros:0
p
Variable_8/Adam_1:0Variable_8/Adam_1/AssignVariable_8/Adam_1/read:02%Variable_8/Adam_1/Initializer/zeros:0
h
Variable_9/Adam:0Variable_9/Adam/AssignVariable_9/Adam/read:02#Variable_9/Adam/Initializer/zeros:0
p
Variable_9/Adam_1:0Variable_9/Adam_1/AssignVariable_9/Adam_1/read:02%Variable_9/Adam_1/Initializer/zeros:0