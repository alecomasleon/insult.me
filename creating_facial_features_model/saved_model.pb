ģ
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.15.02v2.15.0-rc1-8-g6887368d6d48��	
v
countVarHandleOp*
_output_shapes
: *

debug_namecount/*
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
v
totalVarHandleOp*
_output_shapes
: *

debug_nametotal/*
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
|
count_1VarHandleOp*
_output_shapes
: *

debug_name
count_1/*
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
|
total_1VarHandleOp*
_output_shapes
: *

debug_name
total_1/*
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
�
Adam/v/dense_46/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/dense_46/bias/*
dtype0*
shape:(*%
shared_nameAdam/v/dense_46/bias
y
(Adam/v/dense_46/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_46/bias*
_output_shapes
:(*
dtype0
�
Adam/m/dense_46/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/dense_46/bias/*
dtype0*
shape:(*%
shared_nameAdam/m/dense_46/bias
y
(Adam/m/dense_46/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_46/bias*
_output_shapes
:(*
dtype0
�
Adam/v/dense_46/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/v/dense_46/kernel/*
dtype0*
shape:	�(*'
shared_nameAdam/v/dense_46/kernel
�
*Adam/v/dense_46/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_46/kernel*
_output_shapes
:	�(*
dtype0
�
Adam/m/dense_46/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/m/dense_46/kernel/*
dtype0*
shape:	�(*'
shared_nameAdam/m/dense_46/kernel
�
*Adam/m/dense_46/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_46/kernel*
_output_shapes
:	�(*
dtype0
�
Adam/v/dense_45/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/dense_45/bias/*
dtype0*
shape:�*%
shared_nameAdam/v/dense_45/bias
z
(Adam/v/dense_45/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_45/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/dense_45/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/dense_45/bias/*
dtype0*
shape:�*%
shared_nameAdam/m/dense_45/bias
z
(Adam/m/dense_45/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_45/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/dense_45/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/v/dense_45/kernel/*
dtype0*
shape:
��*'
shared_nameAdam/v/dense_45/kernel
�
*Adam/v/dense_45/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_45/kernel* 
_output_shapes
:
��*
dtype0
�
Adam/m/dense_45/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/m/dense_45/kernel/*
dtype0*
shape:
��*'
shared_nameAdam/m/dense_45/kernel
�
*Adam/m/dense_45/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_45/kernel* 
_output_shapes
:
��*
dtype0
�
Adam/v/dense_44/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/dense_44/bias/*
dtype0*
shape:�*%
shared_nameAdam/v/dense_44/bias
z
(Adam/v/dense_44/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_44/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/dense_44/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/dense_44/bias/*
dtype0*
shape:�*%
shared_nameAdam/m/dense_44/bias
z
(Adam/m/dense_44/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_44/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/dense_44/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/v/dense_44/kernel/*
dtype0*
shape:���*'
shared_nameAdam/v/dense_44/kernel
�
*Adam/v/dense_44/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_44/kernel*!
_output_shapes
:���*
dtype0
�
Adam/m/dense_44/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/m/dense_44/kernel/*
dtype0*
shape:���*'
shared_nameAdam/m/dense_44/kernel
�
*Adam/m/dense_44/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_44/kernel*!
_output_shapes
:���*
dtype0
�
Adam/v/conv2d_47/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/conv2d_47/bias/*
dtype0*
shape:@*&
shared_nameAdam/v/conv2d_47/bias
{
)Adam/v/conv2d_47/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_47/bias*
_output_shapes
:@*
dtype0
�
Adam/m/conv2d_47/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/conv2d_47/bias/*
dtype0*
shape:@*&
shared_nameAdam/m/conv2d_47/bias
{
)Adam/m/conv2d_47/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_47/bias*
_output_shapes
:@*
dtype0
�
Adam/v/conv2d_47/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/v/conv2d_47/kernel/*
dtype0*
shape: @*(
shared_nameAdam/v/conv2d_47/kernel
�
+Adam/v/conv2d_47/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_47/kernel*&
_output_shapes
: @*
dtype0
�
Adam/m/conv2d_47/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/m/conv2d_47/kernel/*
dtype0*
shape: @*(
shared_nameAdam/m/conv2d_47/kernel
�
+Adam/m/conv2d_47/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_47/kernel*&
_output_shapes
: @*
dtype0
�
Adam/v/conv2d_46/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/conv2d_46/bias/*
dtype0*
shape: *&
shared_nameAdam/v/conv2d_46/bias
{
)Adam/v/conv2d_46/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_46/bias*
_output_shapes
: *
dtype0
�
Adam/m/conv2d_46/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/conv2d_46/bias/*
dtype0*
shape: *&
shared_nameAdam/m/conv2d_46/bias
{
)Adam/m/conv2d_46/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_46/bias*
_output_shapes
: *
dtype0
�
Adam/v/conv2d_46/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/v/conv2d_46/kernel/*
dtype0*
shape: *(
shared_nameAdam/v/conv2d_46/kernel
�
+Adam/v/conv2d_46/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_46/kernel*&
_output_shapes
: *
dtype0
�
Adam/m/conv2d_46/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/m/conv2d_46/kernel/*
dtype0*
shape: *(
shared_nameAdam/m/conv2d_46/kernel
�
+Adam/m/conv2d_46/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_46/kernel*&
_output_shapes
: *
dtype0
�
Adam/v/conv2d_45/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/conv2d_45/bias/*
dtype0*
shape:*&
shared_nameAdam/v/conv2d_45/bias
{
)Adam/v/conv2d_45/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_45/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv2d_45/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/conv2d_45/bias/*
dtype0*
shape:*&
shared_nameAdam/m/conv2d_45/bias
{
)Adam/m/conv2d_45/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_45/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv2d_45/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/v/conv2d_45/kernel/*
dtype0*
shape:*(
shared_nameAdam/v/conv2d_45/kernel
�
+Adam/v/conv2d_45/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_45/kernel*&
_output_shapes
:*
dtype0
�
Adam/m/conv2d_45/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/m/conv2d_45/kernel/*
dtype0*
shape:*(
shared_nameAdam/m/conv2d_45/kernel
�
+Adam/m/conv2d_45/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_45/kernel*&
_output_shapes
:*
dtype0
�
learning_rateVarHandleOp*
_output_shapes
: *

debug_namelearning_rate/*
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
�
	iterationVarHandleOp*
_output_shapes
: *

debug_name
iteration/*
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
�
dense_46/biasVarHandleOp*
_output_shapes
: *

debug_namedense_46/bias/*
dtype0*
shape:(*
shared_namedense_46/bias
k
!dense_46/bias/Read/ReadVariableOpReadVariableOpdense_46/bias*
_output_shapes
:(*
dtype0
�
dense_46/kernelVarHandleOp*
_output_shapes
: * 

debug_namedense_46/kernel/*
dtype0*
shape:	�(* 
shared_namedense_46/kernel
t
#dense_46/kernel/Read/ReadVariableOpReadVariableOpdense_46/kernel*
_output_shapes
:	�(*
dtype0
�
dense_45/biasVarHandleOp*
_output_shapes
: *

debug_namedense_45/bias/*
dtype0*
shape:�*
shared_namedense_45/bias
l
!dense_45/bias/Read/ReadVariableOpReadVariableOpdense_45/bias*
_output_shapes	
:�*
dtype0
�
dense_45/kernelVarHandleOp*
_output_shapes
: * 

debug_namedense_45/kernel/*
dtype0*
shape:
��* 
shared_namedense_45/kernel
u
#dense_45/kernel/Read/ReadVariableOpReadVariableOpdense_45/kernel* 
_output_shapes
:
��*
dtype0
�
dense_44/biasVarHandleOp*
_output_shapes
: *

debug_namedense_44/bias/*
dtype0*
shape:�*
shared_namedense_44/bias
l
!dense_44/bias/Read/ReadVariableOpReadVariableOpdense_44/bias*
_output_shapes	
:�*
dtype0
�
dense_44/kernelVarHandleOp*
_output_shapes
: * 

debug_namedense_44/kernel/*
dtype0*
shape:���* 
shared_namedense_44/kernel
v
#dense_44/kernel/Read/ReadVariableOpReadVariableOpdense_44/kernel*!
_output_shapes
:���*
dtype0
�
conv2d_47/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_47/bias/*
dtype0*
shape:@*
shared_nameconv2d_47/bias
m
"conv2d_47/bias/Read/ReadVariableOpReadVariableOpconv2d_47/bias*
_output_shapes
:@*
dtype0
�
conv2d_47/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_47/kernel/*
dtype0*
shape: @*!
shared_nameconv2d_47/kernel
}
$conv2d_47/kernel/Read/ReadVariableOpReadVariableOpconv2d_47/kernel*&
_output_shapes
: @*
dtype0
�
conv2d_46/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_46/bias/*
dtype0*
shape: *
shared_nameconv2d_46/bias
m
"conv2d_46/bias/Read/ReadVariableOpReadVariableOpconv2d_46/bias*
_output_shapes
: *
dtype0
�
conv2d_46/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_46/kernel/*
dtype0*
shape: *!
shared_nameconv2d_46/kernel
}
$conv2d_46/kernel/Read/ReadVariableOpReadVariableOpconv2d_46/kernel*&
_output_shapes
: *
dtype0
�
conv2d_45/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_45/bias/*
dtype0*
shape:*
shared_nameconv2d_45/bias
m
"conv2d_45/bias/Read/ReadVariableOpReadVariableOpconv2d_45/bias*
_output_shapes
:*
dtype0
�
conv2d_45/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_45/kernel/*
dtype0*
shape:*!
shared_nameconv2d_45/kernel
}
$conv2d_45/kernel/Read/ReadVariableOpReadVariableOpconv2d_45/kernel*&
_output_shapes
:*
dtype0
�
"serving_default_rescaling_15_inputPlaceholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�
StatefulPartitionedCallStatefulPartitionedCall"serving_default_rescaling_15_inputconv2d_45/kernelconv2d_45/biasconv2d_46/kernelconv2d_46/biasconv2d_47/kernelconv2d_47/biasdense_44/kerneldense_44/biasdense_45/kerneldense_45/biasdense_46/kerneldense_46/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������(*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *-
f(R&
$__inference_signature_wrapper_205928

NoOpNoOp
�`
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�`
value�_B�_ B�_
�
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses

!kernel
"bias
 #_jit_compiled_convolution_op*
�
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses* 
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses

0kernel
1bias
 2_jit_compiled_convolution_op*
�
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses* 
�
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses

?kernel
@bias
 A_jit_compiled_convolution_op*
�
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses* 
�
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses* 
�
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses

Tkernel
Ubias*
�
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses

\kernel
]bias*
�
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses

dkernel
ebias*
Z
!0
"1
02
13
?4
@5
T6
U7
\8
]9
d10
e11*
Z
!0
"1
02
13
?4
@5
T6
U7
\8
]9
d10
e11*
* 
�
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

ktrace_0
ltrace_1* 

mtrace_0
ntrace_1* 
* 
�
o
_variables
p_iterations
q_learning_rate
r_index_dict
s
_momentums
t_velocities
u_update_step_xla*

vserving_default* 
* 
* 
* 
�
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

|trace_0* 

}trace_0* 

!0
"1*

!0
"1*
* 
�
~non_trainable_variables

layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_45/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_45/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

00
11*

00
11*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_46/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_46/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

?0
@1*

?0
@1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_47/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_47/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

T0
U1*

T0
U1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_44/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_44/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

\0
]1*

\0
]1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_45/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_45/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

d0
e1*

d0
e1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_46/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_46/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
R
0
1
2
3
4
5
6
7
	8

9
10*

�0
�1*
* 
* 
* 
* 
* 
* 
�
p0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
f
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11*
f
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11*
�
�trace_0
�trace_1
�trace_2
�trace_3
�trace_4
�trace_5
�trace_6
�trace_7
�trace_8
�trace_9
�trace_10
�trace_11* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
b\
VARIABLE_VALUEAdam/m/conv2d_45/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_45/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_45/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_45/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_46/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_46/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_46/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_46/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_47/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_47/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_47/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_47/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_44/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_44/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_44/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_44/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_45/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_45/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_45/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_45/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_46/kernel2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_46/kernel2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_46/bias2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_46/bias2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d_45/kernelconv2d_45/biasconv2d_46/kernelconv2d_46/biasconv2d_47/kernelconv2d_47/biasdense_44/kerneldense_44/biasdense_45/kerneldense_45/biasdense_46/kerneldense_46/bias	iterationlearning_rateAdam/m/conv2d_45/kernelAdam/v/conv2d_45/kernelAdam/m/conv2d_45/biasAdam/v/conv2d_45/biasAdam/m/conv2d_46/kernelAdam/v/conv2d_46/kernelAdam/m/conv2d_46/biasAdam/v/conv2d_46/biasAdam/m/conv2d_47/kernelAdam/v/conv2d_47/kernelAdam/m/conv2d_47/biasAdam/v/conv2d_47/biasAdam/m/dense_44/kernelAdam/v/dense_44/kernelAdam/m/dense_44/biasAdam/v/dense_44/biasAdam/m/dense_45/kernelAdam/v/dense_45/kernelAdam/m/dense_45/biasAdam/v/dense_45/biasAdam/m/dense_46/kernelAdam/v/dense_46/kernelAdam/m/dense_46/biasAdam/v/dense_46/biastotal_1count_1totalcountConst*7
Tin0
.2,*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *(
f#R!
__inference__traced_save_206376
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_45/kernelconv2d_45/biasconv2d_46/kernelconv2d_46/biasconv2d_47/kernelconv2d_47/biasdense_44/kerneldense_44/biasdense_45/kerneldense_45/biasdense_46/kerneldense_46/bias	iterationlearning_rateAdam/m/conv2d_45/kernelAdam/v/conv2d_45/kernelAdam/m/conv2d_45/biasAdam/v/conv2d_45/biasAdam/m/conv2d_46/kernelAdam/v/conv2d_46/kernelAdam/m/conv2d_46/biasAdam/v/conv2d_46/biasAdam/m/conv2d_47/kernelAdam/v/conv2d_47/kernelAdam/m/conv2d_47/biasAdam/v/conv2d_47/biasAdam/m/dense_44/kernelAdam/v/dense_44/kernelAdam/m/dense_44/biasAdam/v/dense_44/biasAdam/m/dense_45/kernelAdam/v/dense_45/kernelAdam/m/dense_45/biasAdam/v/dense_45/biasAdam/m/dense_46/kernelAdam/v/dense_46/kernelAdam/m/dense_46/biasAdam/v/dense_46/biastotal_1count_1totalcount*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *+
f&R$
"__inference__traced_restore_206511ޓ
�
M
1__inference_max_pooling2d_46_layer_call_fn_205996

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_46_layer_call_and_return_conditional_losses_205601�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
h
L__inference_max_pooling2d_46_layer_call_and_return_conditional_losses_205601

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
M
1__inference_max_pooling2d_47_layer_call_fn_206026

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_205611�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

�
D__inference_dense_45_layer_call_and_return_conditional_losses_206082

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
b
F__inference_flatten_15_layer_call_and_return_conditional_losses_205684

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:�����������Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  @:W S
/
_output_shapes
:���������  @
 
_user_specified_nameinputs
�
�
E__inference_conv2d_47_layer_call_and_return_conditional_losses_206021

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@@@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@@@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@@ 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
.__inference_sequential_15_layer_call_fn_205803
rescaling_15_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:���
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
	unknown_9:	�(

unknown_10:(
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallrescaling_15_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������(*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_15_layer_call_and_return_conditional_losses_205735o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������(<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:�����������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
1
_output_shapes
:�����������
,
_user_specified_namerescaling_15_input:&"
 
_user_specified_name205777:&"
 
_user_specified_name205779:&"
 
_user_specified_name205781:&"
 
_user_specified_name205783:&"
 
_user_specified_name205785:&"
 
_user_specified_name205787:&"
 
_user_specified_name205789:&"
 
_user_specified_name205791:&	"
 
_user_specified_name205793:&
"
 
_user_specified_name205795:&"
 
_user_specified_name205797:&"
 
_user_specified_name205799
�
K
#__inference__update_step_xla_186431
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:D @

_output_shapes
: 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
h
L__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_205611

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
Q
#__inference__update_step_xla_186456
gradient
variable:
��*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*!
_input_shapes
:
��: *
	_noinline(:J F
 
_output_shapes
:
��
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
d
H__inference_rescaling_15_layer_call_and_return_conditional_losses_205626

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:�����������d
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
K
#__inference__update_step_xla_186421
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:D @

_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
L
#__inference__update_step_xla_186461
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:E A

_output_shapes	
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
E__inference_conv2d_47_layer_call_and_return_conditional_losses_205672

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@@@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@@@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@@ 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�3
�
I__inference_sequential_15_layer_call_and_return_conditional_losses_205774
rescaling_15_input*
conv2d_45_205739:
conv2d_45_205741:*
conv2d_46_205745: 
conv2d_46_205747: *
conv2d_47_205751: @
conv2d_47_205753:@$
dense_44_205758:���
dense_44_205760:	�#
dense_45_205763:
��
dense_45_205765:	�"
dense_46_205768:	�(
dense_46_205770:(
identity��!conv2d_45/StatefulPartitionedCall�!conv2d_46/StatefulPartitionedCall�!conv2d_47/StatefulPartitionedCall� dense_44/StatefulPartitionedCall� dense_45/StatefulPartitionedCall� dense_46/StatefulPartitionedCall�
rescaling_15/PartitionedCallPartitionedCallrescaling_15_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_rescaling_15_layer_call_and_return_conditional_losses_205626�
!conv2d_45/StatefulPartitionedCallStatefulPartitionedCall%rescaling_15/PartitionedCall:output:0conv2d_45_205739conv2d_45_205741*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_45_layer_call_and_return_conditional_losses_205638�
 max_pooling2d_45/PartitionedCallPartitionedCall*conv2d_45/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_205591�
!conv2d_46/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_45/PartitionedCall:output:0conv2d_46_205745conv2d_46_205747*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_46_layer_call_and_return_conditional_losses_205655�
 max_pooling2d_46/PartitionedCallPartitionedCall*conv2d_46/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_46_layer_call_and_return_conditional_losses_205601�
!conv2d_47/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_46/PartitionedCall:output:0conv2d_47_205751conv2d_47_205753*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_47_layer_call_and_return_conditional_losses_205672�
 max_pooling2d_47/PartitionedCallPartitionedCall*conv2d_47/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_205611�
flatten_15/PartitionedCallPartitionedCall)max_pooling2d_47/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_flatten_15_layer_call_and_return_conditional_losses_205684�
 dense_44/StatefulPartitionedCallStatefulPartitionedCall#flatten_15/PartitionedCall:output:0dense_44_205758dense_44_205760*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_44_layer_call_and_return_conditional_losses_205696�
 dense_45/StatefulPartitionedCallStatefulPartitionedCall)dense_44/StatefulPartitionedCall:output:0dense_45_205763dense_45_205765*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_45_layer_call_and_return_conditional_losses_205712�
 dense_46/StatefulPartitionedCallStatefulPartitionedCall)dense_45/StatefulPartitionedCall:output:0dense_46_205768dense_46_205770*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������(*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_46_layer_call_and_return_conditional_losses_205728x
IdentityIdentity)dense_46/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������(�
NoOpNoOp"^conv2d_45/StatefulPartitionedCall"^conv2d_46/StatefulPartitionedCall"^conv2d_47/StatefulPartitionedCall!^dense_44/StatefulPartitionedCall!^dense_45/StatefulPartitionedCall!^dense_46/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:�����������: : : : : : : : : : : : 2F
!conv2d_45/StatefulPartitionedCall!conv2d_45/StatefulPartitionedCall2F
!conv2d_46/StatefulPartitionedCall!conv2d_46/StatefulPartitionedCall2F
!conv2d_47/StatefulPartitionedCall!conv2d_47/StatefulPartitionedCall2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall2D
 dense_46/StatefulPartitionedCall dense_46/StatefulPartitionedCall:e a
1
_output_shapes
:�����������
,
_user_specified_namerescaling_15_input:&"
 
_user_specified_name205739:&"
 
_user_specified_name205741:&"
 
_user_specified_name205745:&"
 
_user_specified_name205747:&"
 
_user_specified_name205751:&"
 
_user_specified_name205753:&"
 
_user_specified_name205758:&"
 
_user_specified_name205760:&	"
 
_user_specified_name205763:&
"
 
_user_specified_name205765:&"
 
_user_specified_name205768:&"
 
_user_specified_name205770
�
�
*__inference_conv2d_46_layer_call_fn_205980

inputs!
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_46_layer_call_and_return_conditional_losses_205655y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:����������� <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:&"
 
_user_specified_name205974:&"
 
_user_specified_name205976
�
h
L__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_205591

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
E__inference_conv2d_46_layer_call_and_return_conditional_losses_205655

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:����������� k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:����������� S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
W
#__inference__update_step_xla_186416
gradient"
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:: *
	_noinline(:P L
&
_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�

�
D__inference_dense_44_layer_call_and_return_conditional_losses_206062

inputs3
matmul_readvariableop_resource:���.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpw
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:���*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
$__inference_signature_wrapper_205928
rescaling_15_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:���
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
	unknown_9:	�(

unknown_10:(
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallrescaling_15_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������(*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� **
f%R#
!__inference__wrapped_model_205586o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������(<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:�����������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
1
_output_shapes
:�����������
,
_user_specified_namerescaling_15_input:&"
 
_user_specified_name205902:&"
 
_user_specified_name205904:&"
 
_user_specified_name205906:&"
 
_user_specified_name205908:&"
 
_user_specified_name205910:&"
 
_user_specified_name205912:&"
 
_user_specified_name205914:&"
 
_user_specified_name205916:&	"
 
_user_specified_name205918:&
"
 
_user_specified_name205920:&"
 
_user_specified_name205922:&"
 
_user_specified_name205924
�U
�
!__inference__wrapped_model_205586
rescaling_15_inputP
6sequential_15_conv2d_45_conv2d_readvariableop_resource:E
7sequential_15_conv2d_45_biasadd_readvariableop_resource:P
6sequential_15_conv2d_46_conv2d_readvariableop_resource: E
7sequential_15_conv2d_46_biasadd_readvariableop_resource: P
6sequential_15_conv2d_47_conv2d_readvariableop_resource: @E
7sequential_15_conv2d_47_biasadd_readvariableop_resource:@J
5sequential_15_dense_44_matmul_readvariableop_resource:���E
6sequential_15_dense_44_biasadd_readvariableop_resource:	�I
5sequential_15_dense_45_matmul_readvariableop_resource:
��E
6sequential_15_dense_45_biasadd_readvariableop_resource:	�H
5sequential_15_dense_46_matmul_readvariableop_resource:	�(D
6sequential_15_dense_46_biasadd_readvariableop_resource:(
identity��.sequential_15/conv2d_45/BiasAdd/ReadVariableOp�-sequential_15/conv2d_45/Conv2D/ReadVariableOp�.sequential_15/conv2d_46/BiasAdd/ReadVariableOp�-sequential_15/conv2d_46/Conv2D/ReadVariableOp�.sequential_15/conv2d_47/BiasAdd/ReadVariableOp�-sequential_15/conv2d_47/Conv2D/ReadVariableOp�-sequential_15/dense_44/BiasAdd/ReadVariableOp�,sequential_15/dense_44/MatMul/ReadVariableOp�-sequential_15/dense_45/BiasAdd/ReadVariableOp�,sequential_15/dense_45/MatMul/ReadVariableOp�-sequential_15/dense_46/BiasAdd/ReadVariableOp�,sequential_15/dense_46/MatMul/ReadVariableOpf
!sequential_15/rescaling_15/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;h
#sequential_15/rescaling_15/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_15/rescaling_15/mulMulrescaling_15_input*sequential_15/rescaling_15/Cast/x:output:0*
T0*1
_output_shapes
:������������
sequential_15/rescaling_15/addAddV2"sequential_15/rescaling_15/mul:z:0,sequential_15/rescaling_15/Cast_1/x:output:0*
T0*1
_output_shapes
:������������
-sequential_15/conv2d_45/Conv2D/ReadVariableOpReadVariableOp6sequential_15_conv2d_45_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential_15/conv2d_45/Conv2DConv2D"sequential_15/rescaling_15/add:z:05sequential_15/conv2d_45/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
.sequential_15/conv2d_45/BiasAdd/ReadVariableOpReadVariableOp7sequential_15_conv2d_45_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_15/conv2d_45/BiasAddBiasAdd'sequential_15/conv2d_45/Conv2D:output:06sequential_15/conv2d_45/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
sequential_15/conv2d_45/ReluRelu(sequential_15/conv2d_45/BiasAdd:output:0*
T0*1
_output_shapes
:������������
&sequential_15/max_pooling2d_45/MaxPoolMaxPool*sequential_15/conv2d_45/Relu:activations:0*1
_output_shapes
:�����������*
ksize
*
paddingVALID*
strides
�
-sequential_15/conv2d_46/Conv2D/ReadVariableOpReadVariableOp6sequential_15_conv2d_46_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
sequential_15/conv2d_46/Conv2DConv2D/sequential_15/max_pooling2d_45/MaxPool:output:05sequential_15/conv2d_46/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
�
.sequential_15/conv2d_46/BiasAdd/ReadVariableOpReadVariableOp7sequential_15_conv2d_46_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
sequential_15/conv2d_46/BiasAddBiasAdd'sequential_15/conv2d_46/Conv2D:output:06sequential_15/conv2d_46/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� �
sequential_15/conv2d_46/ReluRelu(sequential_15/conv2d_46/BiasAdd:output:0*
T0*1
_output_shapes
:����������� �
&sequential_15/max_pooling2d_46/MaxPoolMaxPool*sequential_15/conv2d_46/Relu:activations:0*/
_output_shapes
:���������@@ *
ksize
*
paddingVALID*
strides
�
-sequential_15/conv2d_47/Conv2D/ReadVariableOpReadVariableOp6sequential_15_conv2d_47_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
sequential_15/conv2d_47/Conv2DConv2D/sequential_15/max_pooling2d_46/MaxPool:output:05sequential_15/conv2d_47/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
�
.sequential_15/conv2d_47/BiasAdd/ReadVariableOpReadVariableOp7sequential_15_conv2d_47_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential_15/conv2d_47/BiasAddBiasAdd'sequential_15/conv2d_47/Conv2D:output:06sequential_15/conv2d_47/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@@�
sequential_15/conv2d_47/ReluRelu(sequential_15/conv2d_47/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@@�
&sequential_15/max_pooling2d_47/MaxPoolMaxPool*sequential_15/conv2d_47/Relu:activations:0*/
_output_shapes
:���������  @*
ksize
*
paddingVALID*
strides
o
sequential_15/flatten_15/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
 sequential_15/flatten_15/ReshapeReshape/sequential_15/max_pooling2d_47/MaxPool:output:0'sequential_15/flatten_15/Const:output:0*
T0*)
_output_shapes
:������������
,sequential_15/dense_44/MatMul/ReadVariableOpReadVariableOp5sequential_15_dense_44_matmul_readvariableop_resource*!
_output_shapes
:���*
dtype0�
sequential_15/dense_44/MatMulMatMul)sequential_15/flatten_15/Reshape:output:04sequential_15/dense_44/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-sequential_15/dense_44/BiasAdd/ReadVariableOpReadVariableOp6sequential_15_dense_44_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential_15/dense_44/BiasAddBiasAdd'sequential_15/dense_44/MatMul:product:05sequential_15/dense_44/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
sequential_15/dense_44/ReluRelu'sequential_15/dense_44/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
,sequential_15/dense_45/MatMul/ReadVariableOpReadVariableOp5sequential_15_dense_45_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
sequential_15/dense_45/MatMulMatMul)sequential_15/dense_44/Relu:activations:04sequential_15/dense_45/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-sequential_15/dense_45/BiasAdd/ReadVariableOpReadVariableOp6sequential_15_dense_45_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential_15/dense_45/BiasAddBiasAdd'sequential_15/dense_45/MatMul:product:05sequential_15/dense_45/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
sequential_15/dense_45/ReluRelu'sequential_15/dense_45/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
,sequential_15/dense_46/MatMul/ReadVariableOpReadVariableOp5sequential_15_dense_46_matmul_readvariableop_resource*
_output_shapes
:	�(*
dtype0�
sequential_15/dense_46/MatMulMatMul)sequential_15/dense_45/Relu:activations:04sequential_15/dense_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
-sequential_15/dense_46/BiasAdd/ReadVariableOpReadVariableOp6sequential_15_dense_46_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
sequential_15/dense_46/BiasAddBiasAdd'sequential_15/dense_46/MatMul:product:05sequential_15/dense_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
sequential_15/dense_46/SigmoidSigmoid'sequential_15/dense_46/BiasAdd:output:0*
T0*'
_output_shapes
:���������(q
IdentityIdentity"sequential_15/dense_46/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������(�
NoOpNoOp/^sequential_15/conv2d_45/BiasAdd/ReadVariableOp.^sequential_15/conv2d_45/Conv2D/ReadVariableOp/^sequential_15/conv2d_46/BiasAdd/ReadVariableOp.^sequential_15/conv2d_46/Conv2D/ReadVariableOp/^sequential_15/conv2d_47/BiasAdd/ReadVariableOp.^sequential_15/conv2d_47/Conv2D/ReadVariableOp.^sequential_15/dense_44/BiasAdd/ReadVariableOp-^sequential_15/dense_44/MatMul/ReadVariableOp.^sequential_15/dense_45/BiasAdd/ReadVariableOp-^sequential_15/dense_45/MatMul/ReadVariableOp.^sequential_15/dense_46/BiasAdd/ReadVariableOp-^sequential_15/dense_46/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:�����������: : : : : : : : : : : : 2`
.sequential_15/conv2d_45/BiasAdd/ReadVariableOp.sequential_15/conv2d_45/BiasAdd/ReadVariableOp2^
-sequential_15/conv2d_45/Conv2D/ReadVariableOp-sequential_15/conv2d_45/Conv2D/ReadVariableOp2`
.sequential_15/conv2d_46/BiasAdd/ReadVariableOp.sequential_15/conv2d_46/BiasAdd/ReadVariableOp2^
-sequential_15/conv2d_46/Conv2D/ReadVariableOp-sequential_15/conv2d_46/Conv2D/ReadVariableOp2`
.sequential_15/conv2d_47/BiasAdd/ReadVariableOp.sequential_15/conv2d_47/BiasAdd/ReadVariableOp2^
-sequential_15/conv2d_47/Conv2D/ReadVariableOp-sequential_15/conv2d_47/Conv2D/ReadVariableOp2^
-sequential_15/dense_44/BiasAdd/ReadVariableOp-sequential_15/dense_44/BiasAdd/ReadVariableOp2\
,sequential_15/dense_44/MatMul/ReadVariableOp,sequential_15/dense_44/MatMul/ReadVariableOp2^
-sequential_15/dense_45/BiasAdd/ReadVariableOp-sequential_15/dense_45/BiasAdd/ReadVariableOp2\
,sequential_15/dense_45/MatMul/ReadVariableOp,sequential_15/dense_45/MatMul/ReadVariableOp2^
-sequential_15/dense_46/BiasAdd/ReadVariableOp-sequential_15/dense_46/BiasAdd/ReadVariableOp2\
,sequential_15/dense_46/MatMul/ReadVariableOp,sequential_15/dense_46/MatMul/ReadVariableOp:e a
1
_output_shapes
:�����������
,
_user_specified_namerescaling_15_input:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
P
#__inference__update_step_xla_186466
gradient
variable:	�(*
_XlaMustCompile(*(
_construction_contextkEagerRuntime* 
_input_shapes
:	�(: *
	_noinline(:I E

_output_shapes
:	�(
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
K
#__inference__update_step_xla_186441
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�3
�
I__inference_sequential_15_layer_call_and_return_conditional_losses_205735
rescaling_15_input*
conv2d_45_205639:
conv2d_45_205641:*
conv2d_46_205656: 
conv2d_46_205658: *
conv2d_47_205673: @
conv2d_47_205675:@$
dense_44_205697:���
dense_44_205699:	�#
dense_45_205713:
��
dense_45_205715:	�"
dense_46_205729:	�(
dense_46_205731:(
identity��!conv2d_45/StatefulPartitionedCall�!conv2d_46/StatefulPartitionedCall�!conv2d_47/StatefulPartitionedCall� dense_44/StatefulPartitionedCall� dense_45/StatefulPartitionedCall� dense_46/StatefulPartitionedCall�
rescaling_15/PartitionedCallPartitionedCallrescaling_15_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_rescaling_15_layer_call_and_return_conditional_losses_205626�
!conv2d_45/StatefulPartitionedCallStatefulPartitionedCall%rescaling_15/PartitionedCall:output:0conv2d_45_205639conv2d_45_205641*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_45_layer_call_and_return_conditional_losses_205638�
 max_pooling2d_45/PartitionedCallPartitionedCall*conv2d_45/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_205591�
!conv2d_46/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_45/PartitionedCall:output:0conv2d_46_205656conv2d_46_205658*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_46_layer_call_and_return_conditional_losses_205655�
 max_pooling2d_46/PartitionedCallPartitionedCall*conv2d_46/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_46_layer_call_and_return_conditional_losses_205601�
!conv2d_47/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_46/PartitionedCall:output:0conv2d_47_205673conv2d_47_205675*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_47_layer_call_and_return_conditional_losses_205672�
 max_pooling2d_47/PartitionedCallPartitionedCall*conv2d_47/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_205611�
flatten_15/PartitionedCallPartitionedCall)max_pooling2d_47/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_flatten_15_layer_call_and_return_conditional_losses_205684�
 dense_44/StatefulPartitionedCallStatefulPartitionedCall#flatten_15/PartitionedCall:output:0dense_44_205697dense_44_205699*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_44_layer_call_and_return_conditional_losses_205696�
 dense_45/StatefulPartitionedCallStatefulPartitionedCall)dense_44/StatefulPartitionedCall:output:0dense_45_205713dense_45_205715*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_45_layer_call_and_return_conditional_losses_205712�
 dense_46/StatefulPartitionedCallStatefulPartitionedCall)dense_45/StatefulPartitionedCall:output:0dense_46_205729dense_46_205731*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������(*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_46_layer_call_and_return_conditional_losses_205728x
IdentityIdentity)dense_46/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������(�
NoOpNoOp"^conv2d_45/StatefulPartitionedCall"^conv2d_46/StatefulPartitionedCall"^conv2d_47/StatefulPartitionedCall!^dense_44/StatefulPartitionedCall!^dense_45/StatefulPartitionedCall!^dense_46/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:�����������: : : : : : : : : : : : 2F
!conv2d_45/StatefulPartitionedCall!conv2d_45/StatefulPartitionedCall2F
!conv2d_46/StatefulPartitionedCall!conv2d_46/StatefulPartitionedCall2F
!conv2d_47/StatefulPartitionedCall!conv2d_47/StatefulPartitionedCall2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall2D
 dense_46/StatefulPartitionedCall dense_46/StatefulPartitionedCall:e a
1
_output_shapes
:�����������
,
_user_specified_namerescaling_15_input:&"
 
_user_specified_name205639:&"
 
_user_specified_name205641:&"
 
_user_specified_name205656:&"
 
_user_specified_name205658:&"
 
_user_specified_name205673:&"
 
_user_specified_name205675:&"
 
_user_specified_name205697:&"
 
_user_specified_name205699:&	"
 
_user_specified_name205713:&
"
 
_user_specified_name205715:&"
 
_user_specified_name205729:&"
 
_user_specified_name205731
�
�
*__inference_conv2d_45_layer_call_fn_205950

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_45_layer_call_and_return_conditional_losses_205638y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:&"
 
_user_specified_name205944:&"
 
_user_specified_name205946
�
�
.__inference_sequential_15_layer_call_fn_205832
rescaling_15_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:���
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
	unknown_9:	�(

unknown_10:(
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallrescaling_15_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������(*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_15_layer_call_and_return_conditional_losses_205774o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������(<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:�����������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
1
_output_shapes
:�����������
,
_user_specified_namerescaling_15_input:&"
 
_user_specified_name205806:&"
 
_user_specified_name205808:&"
 
_user_specified_name205810:&"
 
_user_specified_name205812:&"
 
_user_specified_name205814:&"
 
_user_specified_name205816:&"
 
_user_specified_name205818:&"
 
_user_specified_name205820:&	"
 
_user_specified_name205822:&
"
 
_user_specified_name205824:&"
 
_user_specified_name205826:&"
 
_user_specified_name205828
�
h
L__inference_max_pooling2d_46_layer_call_and_return_conditional_losses_206001

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
��
�
"__inference__traced_restore_206511
file_prefix;
!assignvariableop_conv2d_45_kernel:/
!assignvariableop_1_conv2d_45_bias:=
#assignvariableop_2_conv2d_46_kernel: /
!assignvariableop_3_conv2d_46_bias: =
#assignvariableop_4_conv2d_47_kernel: @/
!assignvariableop_5_conv2d_47_bias:@7
"assignvariableop_6_dense_44_kernel:���/
 assignvariableop_7_dense_44_bias:	�6
"assignvariableop_8_dense_45_kernel:
��/
 assignvariableop_9_dense_45_bias:	�6
#assignvariableop_10_dense_46_kernel:	�(/
!assignvariableop_11_dense_46_bias:('
assignvariableop_12_iteration:	 +
!assignvariableop_13_learning_rate: E
+assignvariableop_14_adam_m_conv2d_45_kernel:E
+assignvariableop_15_adam_v_conv2d_45_kernel:7
)assignvariableop_16_adam_m_conv2d_45_bias:7
)assignvariableop_17_adam_v_conv2d_45_bias:E
+assignvariableop_18_adam_m_conv2d_46_kernel: E
+assignvariableop_19_adam_v_conv2d_46_kernel: 7
)assignvariableop_20_adam_m_conv2d_46_bias: 7
)assignvariableop_21_adam_v_conv2d_46_bias: E
+assignvariableop_22_adam_m_conv2d_47_kernel: @E
+assignvariableop_23_adam_v_conv2d_47_kernel: @7
)assignvariableop_24_adam_m_conv2d_47_bias:@7
)assignvariableop_25_adam_v_conv2d_47_bias:@?
*assignvariableop_26_adam_m_dense_44_kernel:���?
*assignvariableop_27_adam_v_dense_44_kernel:���7
(assignvariableop_28_adam_m_dense_44_bias:	�7
(assignvariableop_29_adam_v_dense_44_bias:	�>
*assignvariableop_30_adam_m_dense_45_kernel:
��>
*assignvariableop_31_adam_v_dense_45_kernel:
��7
(assignvariableop_32_adam_m_dense_45_bias:	�7
(assignvariableop_33_adam_v_dense_45_bias:	�=
*assignvariableop_34_adam_m_dense_46_kernel:	�(=
*assignvariableop_35_adam_v_dense_46_kernel:	�(6
(assignvariableop_36_adam_m_dense_46_bias:(6
(assignvariableop_37_adam_v_dense_46_bias:(%
assignvariableop_38_total_1: %
assignvariableop_39_count_1: #
assignvariableop_40_total: #
assignvariableop_41_count: 
identity_43��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*�
value�B�+B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::*9
dtypes/
-2+	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_45_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_45_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_46_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_46_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_47_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_47_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_44_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_44_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_45_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_45_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp#assignvariableop_10_dense_46_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp!assignvariableop_11_dense_46_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_iterationIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp!assignvariableop_13_learning_rateIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp+assignvariableop_14_adam_m_conv2d_45_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp+assignvariableop_15_adam_v_conv2d_45_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp)assignvariableop_16_adam_m_conv2d_45_biasIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_v_conv2d_45_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_m_conv2d_46_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp+assignvariableop_19_adam_v_conv2d_46_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_m_conv2d_46_biasIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp)assignvariableop_21_adam_v_conv2d_46_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp+assignvariableop_22_adam_m_conv2d_47_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_v_conv2d_47_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_m_conv2d_47_biasIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_v_conv2d_47_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_m_dense_44_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_v_dense_44_kernelIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_m_dense_44_biasIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp(assignvariableop_29_adam_v_dense_44_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp*assignvariableop_30_adam_m_dense_45_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_v_dense_45_kernelIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_m_dense_45_biasIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp(assignvariableop_33_adam_v_dense_45_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adam_m_dense_46_kernelIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_v_dense_46_kernelIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_m_dense_46_biasIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp(assignvariableop_37_adam_v_dense_46_biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOpassignvariableop_38_total_1Identity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOpassignvariableop_39_count_1Identity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOpassignvariableop_40_totalIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOpassignvariableop_41_countIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_42Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_43IdentityIdentity_42:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_43Identity_43:output:0*(
_construction_contextkEagerRuntime*i
_input_shapesX
V: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:0,
*
_user_specified_nameconv2d_45/kernel:.*
(
_user_specified_nameconv2d_45/bias:0,
*
_user_specified_nameconv2d_46/kernel:.*
(
_user_specified_nameconv2d_46/bias:0,
*
_user_specified_nameconv2d_47/kernel:.*
(
_user_specified_nameconv2d_47/bias:/+
)
_user_specified_namedense_44/kernel:-)
'
_user_specified_namedense_44/bias:/	+
)
_user_specified_namedense_45/kernel:-
)
'
_user_specified_namedense_45/bias:/+
)
_user_specified_namedense_46/kernel:-)
'
_user_specified_namedense_46/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:73
1
_user_specified_nameAdam/m/conv2d_45/kernel:73
1
_user_specified_nameAdam/v/conv2d_45/kernel:51
/
_user_specified_nameAdam/m/conv2d_45/bias:51
/
_user_specified_nameAdam/v/conv2d_45/bias:73
1
_user_specified_nameAdam/m/conv2d_46/kernel:73
1
_user_specified_nameAdam/v/conv2d_46/kernel:51
/
_user_specified_nameAdam/m/conv2d_46/bias:51
/
_user_specified_nameAdam/v/conv2d_46/bias:73
1
_user_specified_nameAdam/m/conv2d_47/kernel:73
1
_user_specified_nameAdam/v/conv2d_47/kernel:51
/
_user_specified_nameAdam/m/conv2d_47/bias:51
/
_user_specified_nameAdam/v/conv2d_47/bias:62
0
_user_specified_nameAdam/m/dense_44/kernel:62
0
_user_specified_nameAdam/v/dense_44/kernel:40
.
_user_specified_nameAdam/m/dense_44/bias:40
.
_user_specified_nameAdam/v/dense_44/bias:62
0
_user_specified_nameAdam/m/dense_45/kernel:6 2
0
_user_specified_nameAdam/v/dense_45/kernel:4!0
.
_user_specified_nameAdam/m/dense_45/bias:4"0
.
_user_specified_nameAdam/v/dense_45/bias:6#2
0
_user_specified_nameAdam/m/dense_46/kernel:6$2
0
_user_specified_nameAdam/v/dense_46/kernel:4%0
.
_user_specified_nameAdam/m/dense_46/bias:4&0
.
_user_specified_nameAdam/v/dense_46/bias:''#
!
_user_specified_name	total_1:'(#
!
_user_specified_name	count_1:%)!

_user_specified_nametotal:%*!

_user_specified_namecount
�
K
#__inference__update_step_xla_186471
gradient
variable:(*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:(: *
	_noinline(:D @

_output_shapes
:(
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
)__inference_dense_44_layer_call_fn_206051

inputs
unknown:���
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_44_layer_call_and_return_conditional_losses_205696p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs:&"
 
_user_specified_name206045:&"
 
_user_specified_name206047
�
h
L__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_206031

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

�
D__inference_dense_45_layer_call_and_return_conditional_losses_205712

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

�
D__inference_dense_44_layer_call_and_return_conditional_losses_205696

inputs3
matmul_readvariableop_resource:���.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpw
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:���*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
)__inference_dense_45_layer_call_fn_206071

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_45_layer_call_and_return_conditional_losses_205712p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:&"
 
_user_specified_name206065:&"
 
_user_specified_name206067
�
�
)__inference_dense_46_layer_call_fn_206091

inputs
unknown:	�(
	unknown_0:(
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������(*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_46_layer_call_and_return_conditional_losses_205728o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������(<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:&"
 
_user_specified_name206085:&"
 
_user_specified_name206087
�
W
#__inference__update_step_xla_186426
gradient"
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
: : *
	_noinline(:P L
&
_output_shapes
: 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
��
�&
__inference__traced_save_206376
file_prefixA
'read_disablecopyonread_conv2d_45_kernel:5
'read_1_disablecopyonread_conv2d_45_bias:C
)read_2_disablecopyonread_conv2d_46_kernel: 5
'read_3_disablecopyonread_conv2d_46_bias: C
)read_4_disablecopyonread_conv2d_47_kernel: @5
'read_5_disablecopyonread_conv2d_47_bias:@=
(read_6_disablecopyonread_dense_44_kernel:���5
&read_7_disablecopyonread_dense_44_bias:	�<
(read_8_disablecopyonread_dense_45_kernel:
��5
&read_9_disablecopyonread_dense_45_bias:	�<
)read_10_disablecopyonread_dense_46_kernel:	�(5
'read_11_disablecopyonread_dense_46_bias:(-
#read_12_disablecopyonread_iteration:	 1
'read_13_disablecopyonread_learning_rate: K
1read_14_disablecopyonread_adam_m_conv2d_45_kernel:K
1read_15_disablecopyonread_adam_v_conv2d_45_kernel:=
/read_16_disablecopyonread_adam_m_conv2d_45_bias:=
/read_17_disablecopyonread_adam_v_conv2d_45_bias:K
1read_18_disablecopyonread_adam_m_conv2d_46_kernel: K
1read_19_disablecopyonread_adam_v_conv2d_46_kernel: =
/read_20_disablecopyonread_adam_m_conv2d_46_bias: =
/read_21_disablecopyonread_adam_v_conv2d_46_bias: K
1read_22_disablecopyonread_adam_m_conv2d_47_kernel: @K
1read_23_disablecopyonread_adam_v_conv2d_47_kernel: @=
/read_24_disablecopyonread_adam_m_conv2d_47_bias:@=
/read_25_disablecopyonread_adam_v_conv2d_47_bias:@E
0read_26_disablecopyonread_adam_m_dense_44_kernel:���E
0read_27_disablecopyonread_adam_v_dense_44_kernel:���=
.read_28_disablecopyonread_adam_m_dense_44_bias:	�=
.read_29_disablecopyonread_adam_v_dense_44_bias:	�D
0read_30_disablecopyonread_adam_m_dense_45_kernel:
��D
0read_31_disablecopyonread_adam_v_dense_45_kernel:
��=
.read_32_disablecopyonread_adam_m_dense_45_bias:	�=
.read_33_disablecopyonread_adam_v_dense_45_bias:	�C
0read_34_disablecopyonread_adam_m_dense_46_kernel:	�(C
0read_35_disablecopyonread_adam_v_dense_46_kernel:	�(<
.read_36_disablecopyonread_adam_m_dense_46_bias:(<
.read_37_disablecopyonread_adam_v_dense_46_bias:(+
!read_38_disablecopyonread_total_1: +
!read_39_disablecopyonread_count_1: )
read_40_disablecopyonread_total: )
read_41_disablecopyonread_count: 
savev2_const
identity_85��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_37/DisableCopyOnRead�Read_37/ReadVariableOp�Read_38/DisableCopyOnRead�Read_38/ReadVariableOp�Read_39/DisableCopyOnRead�Read_39/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_40/DisableCopyOnRead�Read_40/ReadVariableOp�Read_41/DisableCopyOnRead�Read_41/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: y
Read/DisableCopyOnReadDisableCopyOnRead'read_disablecopyonread_conv2d_45_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp'read_disablecopyonread_conv2d_45_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
:{
Read_1/DisableCopyOnReadDisableCopyOnRead'read_1_disablecopyonread_conv2d_45_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp'read_1_disablecopyonread_conv2d_45_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:}
Read_2/DisableCopyOnReadDisableCopyOnRead)read_2_disablecopyonread_conv2d_46_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp)read_2_disablecopyonread_conv2d_46_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0u

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: k

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*&
_output_shapes
: {
Read_3/DisableCopyOnReadDisableCopyOnRead'read_3_disablecopyonread_conv2d_46_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp'read_3_disablecopyonread_conv2d_46_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
: }
Read_4/DisableCopyOnReadDisableCopyOnRead)read_4_disablecopyonread_conv2d_47_kernel"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp)read_4_disablecopyonread_conv2d_47_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0u

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @k

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*&
_output_shapes
: @{
Read_5/DisableCopyOnReadDisableCopyOnRead'read_5_disablecopyonread_conv2d_47_bias"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp'read_5_disablecopyonread_conv2d_47_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:@|
Read_6/DisableCopyOnReadDisableCopyOnRead(read_6_disablecopyonread_dense_44_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp(read_6_disablecopyonread_dense_44_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*!
_output_shapes
:���*
dtype0q
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*!
_output_shapes
:���h
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*!
_output_shapes
:���z
Read_7/DisableCopyOnReadDisableCopyOnRead&read_7_disablecopyonread_dense_44_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp&read_7_disablecopyonread_dense_44_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0k
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes	
:�|
Read_8/DisableCopyOnReadDisableCopyOnRead(read_8_disablecopyonread_dense_45_kernel"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp(read_8_disablecopyonread_dense_45_kernel^Read_8/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0p
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��z
Read_9/DisableCopyOnReadDisableCopyOnRead&read_9_disablecopyonread_dense_45_bias"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp&read_9_disablecopyonread_dense_45_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0k
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes	
:�~
Read_10/DisableCopyOnReadDisableCopyOnRead)read_10_disablecopyonread_dense_46_kernel"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp)read_10_disablecopyonread_dense_46_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�(*
dtype0p
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�(f
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:	�(|
Read_11/DisableCopyOnReadDisableCopyOnRead'read_11_disablecopyonread_dense_46_bias"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp'read_11_disablecopyonread_dense_46_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:(*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:(a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:(x
Read_12/DisableCopyOnReadDisableCopyOnRead#read_12_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp#read_12_disablecopyonread_iteration^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_13/DisableCopyOnReadDisableCopyOnRead'read_13_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp'read_13_disablecopyonread_learning_rate^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_14/DisableCopyOnReadDisableCopyOnRead1read_14_disablecopyonread_adam_m_conv2d_45_kernel"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp1read_14_disablecopyonread_adam_m_conv2d_45_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_15/DisableCopyOnReadDisableCopyOnRead1read_15_disablecopyonread_adam_v_conv2d_45_kernel"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp1read_15_disablecopyonread_adam_v_conv2d_45_kernel^Read_15/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_16/DisableCopyOnReadDisableCopyOnRead/read_16_disablecopyonread_adam_m_conv2d_45_bias"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp/read_16_disablecopyonread_adam_m_conv2d_45_bias^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_17/DisableCopyOnReadDisableCopyOnRead/read_17_disablecopyonread_adam_v_conv2d_45_bias"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp/read_17_disablecopyonread_adam_v_conv2d_45_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_18/DisableCopyOnReadDisableCopyOnRead1read_18_disablecopyonread_adam_m_conv2d_46_kernel"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp1read_18_disablecopyonread_adam_m_conv2d_46_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_19/DisableCopyOnReadDisableCopyOnRead1read_19_disablecopyonread_adam_v_conv2d_46_kernel"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp1read_19_disablecopyonread_adam_v_conv2d_46_kernel^Read_19/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_20/DisableCopyOnReadDisableCopyOnRead/read_20_disablecopyonread_adam_m_conv2d_46_bias"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp/read_20_disablecopyonread_adam_m_conv2d_46_bias^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_21/DisableCopyOnReadDisableCopyOnRead/read_21_disablecopyonread_adam_v_conv2d_46_bias"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp/read_21_disablecopyonread_adam_v_conv2d_46_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_22/DisableCopyOnReadDisableCopyOnRead1read_22_disablecopyonread_adam_m_conv2d_47_kernel"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp1read_22_disablecopyonread_adam_m_conv2d_47_kernel^Read_22/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*&
_output_shapes
: @�
Read_23/DisableCopyOnReadDisableCopyOnRead1read_23_disablecopyonread_adam_v_conv2d_47_kernel"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp1read_23_disablecopyonread_adam_v_conv2d_47_kernel^Read_23/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*&
_output_shapes
: @�
Read_24/DisableCopyOnReadDisableCopyOnRead/read_24_disablecopyonread_adam_m_conv2d_47_bias"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp/read_24_disablecopyonread_adam_m_conv2d_47_bias^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_25/DisableCopyOnReadDisableCopyOnRead/read_25_disablecopyonread_adam_v_conv2d_47_bias"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp/read_25_disablecopyonread_adam_v_conv2d_47_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_26/DisableCopyOnReadDisableCopyOnRead0read_26_disablecopyonread_adam_m_dense_44_kernel"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp0read_26_disablecopyonread_adam_m_dense_44_kernel^Read_26/DisableCopyOnRead"/device:CPU:0*!
_output_shapes
:���*
dtype0r
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*!
_output_shapes
:���h
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*!
_output_shapes
:����
Read_27/DisableCopyOnReadDisableCopyOnRead0read_27_disablecopyonread_adam_v_dense_44_kernel"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp0read_27_disablecopyonread_adam_v_dense_44_kernel^Read_27/DisableCopyOnRead"/device:CPU:0*!
_output_shapes
:���*
dtype0r
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*!
_output_shapes
:���h
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*!
_output_shapes
:����
Read_28/DisableCopyOnReadDisableCopyOnRead.read_28_disablecopyonread_adam_m_dense_44_bias"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp.read_28_disablecopyonread_adam_m_dense_44_bias^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_29/DisableCopyOnReadDisableCopyOnRead.read_29_disablecopyonread_adam_v_dense_44_bias"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp.read_29_disablecopyonread_adam_v_dense_44_bias^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_30/DisableCopyOnReadDisableCopyOnRead0read_30_disablecopyonread_adam_m_dense_45_kernel"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp0read_30_disablecopyonread_adam_m_dense_45_kernel^Read_30/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_31/DisableCopyOnReadDisableCopyOnRead0read_31_disablecopyonread_adam_v_dense_45_kernel"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp0read_31_disablecopyonread_adam_v_dense_45_kernel^Read_31/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_32/DisableCopyOnReadDisableCopyOnRead.read_32_disablecopyonread_adam_m_dense_45_bias"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp.read_32_disablecopyonread_adam_m_dense_45_bias^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_33/DisableCopyOnReadDisableCopyOnRead.read_33_disablecopyonread_adam_v_dense_45_bias"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp.read_33_disablecopyonread_adam_v_dense_45_bias^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_34/DisableCopyOnReadDisableCopyOnRead0read_34_disablecopyonread_adam_m_dense_46_kernel"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp0read_34_disablecopyonread_adam_m_dense_46_kernel^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�(*
dtype0p
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�(f
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes
:	�(�
Read_35/DisableCopyOnReadDisableCopyOnRead0read_35_disablecopyonread_adam_v_dense_46_kernel"/device:CPU:0*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp0read_35_disablecopyonread_adam_v_dense_46_kernel^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�(*
dtype0p
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�(f
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
:	�(�
Read_36/DisableCopyOnReadDisableCopyOnRead.read_36_disablecopyonread_adam_m_dense_46_bias"/device:CPU:0*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp.read_36_disablecopyonread_adam_m_dense_46_bias^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:(*
dtype0k
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:(a
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes
:(�
Read_37/DisableCopyOnReadDisableCopyOnRead.read_37_disablecopyonread_adam_v_dense_46_bias"/device:CPU:0*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOp.read_37_disablecopyonread_adam_v_dense_46_bias^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:(*
dtype0k
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:(a
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes
:(v
Read_38/DisableCopyOnReadDisableCopyOnRead!read_38_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOp!read_38_disablecopyonread_total_1^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_39/DisableCopyOnReadDisableCopyOnRead!read_39_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_39/ReadVariableOpReadVariableOp!read_39_disablecopyonread_count_1^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_40/DisableCopyOnReadDisableCopyOnReadread_40_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_40/ReadVariableOpReadVariableOpread_40_disablecopyonread_total^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_41/DisableCopyOnReadDisableCopyOnReadread_41_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_41/ReadVariableOpReadVariableOpread_41_disablecopyonread_count^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*�
value�B�+B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *9
dtypes/
-2+	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_84Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_85IdentityIdentity_84:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_85Identity_85:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:0,
*
_user_specified_nameconv2d_45/kernel:.*
(
_user_specified_nameconv2d_45/bias:0,
*
_user_specified_nameconv2d_46/kernel:.*
(
_user_specified_nameconv2d_46/bias:0,
*
_user_specified_nameconv2d_47/kernel:.*
(
_user_specified_nameconv2d_47/bias:/+
)
_user_specified_namedense_44/kernel:-)
'
_user_specified_namedense_44/bias:/	+
)
_user_specified_namedense_45/kernel:-
)
'
_user_specified_namedense_45/bias:/+
)
_user_specified_namedense_46/kernel:-)
'
_user_specified_namedense_46/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:73
1
_user_specified_nameAdam/m/conv2d_45/kernel:73
1
_user_specified_nameAdam/v/conv2d_45/kernel:51
/
_user_specified_nameAdam/m/conv2d_45/bias:51
/
_user_specified_nameAdam/v/conv2d_45/bias:73
1
_user_specified_nameAdam/m/conv2d_46/kernel:73
1
_user_specified_nameAdam/v/conv2d_46/kernel:51
/
_user_specified_nameAdam/m/conv2d_46/bias:51
/
_user_specified_nameAdam/v/conv2d_46/bias:73
1
_user_specified_nameAdam/m/conv2d_47/kernel:73
1
_user_specified_nameAdam/v/conv2d_47/kernel:51
/
_user_specified_nameAdam/m/conv2d_47/bias:51
/
_user_specified_nameAdam/v/conv2d_47/bias:62
0
_user_specified_nameAdam/m/dense_44/kernel:62
0
_user_specified_nameAdam/v/dense_44/kernel:40
.
_user_specified_nameAdam/m/dense_44/bias:40
.
_user_specified_nameAdam/v/dense_44/bias:62
0
_user_specified_nameAdam/m/dense_45/kernel:6 2
0
_user_specified_nameAdam/v/dense_45/kernel:4!0
.
_user_specified_nameAdam/m/dense_45/bias:4"0
.
_user_specified_nameAdam/v/dense_45/bias:6#2
0
_user_specified_nameAdam/m/dense_46/kernel:6$2
0
_user_specified_nameAdam/v/dense_46/kernel:4%0
.
_user_specified_nameAdam/m/dense_46/bias:4&0
.
_user_specified_nameAdam/v/dense_46/bias:''#
!
_user_specified_name	total_1:'(#
!
_user_specified_name	count_1:%)!

_user_specified_nametotal:%*!

_user_specified_namecount:=+9

_output_shapes
: 

_user_specified_nameConst
�
�
E__inference_conv2d_45_layer_call_and_return_conditional_losses_205961

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
E__inference_conv2d_45_layer_call_and_return_conditional_losses_205638

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

�
D__inference_dense_46_layer_call_and_return_conditional_losses_206102

inputs1
matmul_readvariableop_resource:	�(-
biasadd_readvariableop_resource:(
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������(Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������(S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
W
#__inference__update_step_xla_186436
gradient"
variable: @*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
: @: *
	_noinline(:P L
&
_output_shapes
: @
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
I
-__inference_rescaling_15_layer_call_fn_205933

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_rescaling_15_layer_call_and_return_conditional_losses_205626j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
G
+__inference_flatten_15_layer_call_fn_206036

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_flatten_15_layer_call_and_return_conditional_losses_205684b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  @:W S
/
_output_shapes
:���������  @
 
_user_specified_nameinputs
�
R
#__inference__update_step_xla_186446
gradient
variable:���*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*)
_input_shapes
:����������: *
	_noinline(:R N
(
_output_shapes
:����������
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
*__inference_conv2d_47_layer_call_fn_206010

inputs!
unknown: @
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_47_layer_call_and_return_conditional_losses_205672w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@@ 
 
_user_specified_nameinputs:&"
 
_user_specified_name206004:&"
 
_user_specified_name206006
�
d
H__inference_rescaling_15_layer_call_and_return_conditional_losses_205941

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:�����������d
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
L
#__inference__update_step_xla_186451
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:E A

_output_shapes	
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
h
L__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_205971

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
M
1__inference_max_pooling2d_45_layer_call_fn_205966

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_205591�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
b
F__inference_flatten_15_layer_call_and_return_conditional_losses_206042

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:�����������Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  @:W S
/
_output_shapes
:���������  @
 
_user_specified_nameinputs
�
�
E__inference_conv2d_46_layer_call_and_return_conditional_losses_205991

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:����������� k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:����������� S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

�
D__inference_dense_46_layer_call_and_return_conditional_losses_205728

inputs1
matmul_readvariableop_resource:	�(-
biasadd_readvariableop_resource:(
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������(Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������(S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
[
rescaling_15_inputE
$serving_default_rescaling_15_input:0�����������<
dense_460
StatefulPartitionedCall:0���������(tensorflow/serving/predict:Ϡ
�
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses

!kernel
"bias
 #_jit_compiled_convolution_op"
_tf_keras_layer
�
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses"
_tf_keras_layer
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses

0kernel
1bias
 2_jit_compiled_convolution_op"
_tf_keras_layer
�
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses"
_tf_keras_layer
�
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses

?kernel
@bias
 A_jit_compiled_convolution_op"
_tf_keras_layer
�
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses"
_tf_keras_layer
�
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses"
_tf_keras_layer
�
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses

Tkernel
Ubias"
_tf_keras_layer
�
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses

\kernel
]bias"
_tf_keras_layer
�
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses

dkernel
ebias"
_tf_keras_layer
v
!0
"1
02
13
?4
@5
T6
U7
\8
]9
d10
e11"
trackable_list_wrapper
v
!0
"1
02
13
?4
@5
T6
U7
\8
]9
d10
e11"
trackable_list_wrapper
 "
trackable_list_wrapper
�
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
ktrace_0
ltrace_12�
.__inference_sequential_15_layer_call_fn_205803
.__inference_sequential_15_layer_call_fn_205832�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zktrace_0zltrace_1
�
mtrace_0
ntrace_12�
I__inference_sequential_15_layer_call_and_return_conditional_losses_205735
I__inference_sequential_15_layer_call_and_return_conditional_losses_205774�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zmtrace_0zntrace_1
�B�
!__inference__wrapped_model_205586rescaling_15_input"�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
o
_variables
p_iterations
q_learning_rate
r_index_dict
s
_momentums
t_velocities
u_update_step_xla"
experimentalOptimizer
,
vserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
|trace_02�
-__inference_rescaling_15_layer_call_fn_205933�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z|trace_0
�
}trace_02�
H__inference_rescaling_15_layer_call_and_return_conditional_losses_205941�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z}trace_0
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
~non_trainable_variables

layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_45_layer_call_fn_205950�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_conv2d_45_layer_call_and_return_conditional_losses_205961�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(2conv2d_45/kernel
:2conv2d_45/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_max_pooling2d_45_layer_call_fn_205966�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
L__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_205971�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_46_layer_call_fn_205980�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_conv2d_46_layer_call_and_return_conditional_losses_205991�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:( 2conv2d_46/kernel
: 2conv2d_46/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_max_pooling2d_46_layer_call_fn_205996�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
L__inference_max_pooling2d_46_layer_call_and_return_conditional_losses_206001�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
?0
@1"
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_47_layer_call_fn_206010�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_conv2d_47_layer_call_and_return_conditional_losses_206021�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:( @2conv2d_47/kernel
:@2conv2d_47/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_max_pooling2d_47_layer_call_fn_206026�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
L__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_206031�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_flatten_15_layer_call_fn_206036�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_flatten_15_layer_call_and_return_conditional_losses_206042�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
T0
U1"
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_44_layer_call_fn_206051�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_dense_44_layer_call_and_return_conditional_losses_206062�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
$:"���2dense_44/kernel
:�2dense_44/bias
.
\0
]1"
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_45_layer_call_fn_206071�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_dense_45_layer_call_and_return_conditional_losses_206082�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
#:!
��2dense_45/kernel
:�2dense_45/bias
.
d0
e1"
trackable_list_wrapper
.
d0
e1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_46_layer_call_fn_206091�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_dense_46_layer_call_and_return_conditional_losses_206102�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
": 	�(2dense_46/kernel
:(2dense_46/bias
 "
trackable_list_wrapper
n
0
1
2
3
4
5
6
7
	8

9
10"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
.__inference_sequential_15_layer_call_fn_205803rescaling_15_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
.__inference_sequential_15_layer_call_fn_205832rescaling_15_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_sequential_15_layer_call_and_return_conditional_losses_205735rescaling_15_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_sequential_15_layer_call_and_return_conditional_losses_205774rescaling_15_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
p0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11"
trackable_list_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11"
trackable_list_wrapper
�
�trace_0
�trace_1
�trace_2
�trace_3
�trace_4
�trace_5
�trace_6
�trace_7
�trace_8
�trace_9
�trace_10
�trace_112�
#__inference__update_step_xla_186416
#__inference__update_step_xla_186421
#__inference__update_step_xla_186426
#__inference__update_step_xla_186431
#__inference__update_step_xla_186436
#__inference__update_step_xla_186441
#__inference__update_step_xla_186446
#__inference__update_step_xla_186451
#__inference__update_step_xla_186456
#__inference__update_step_xla_186461
#__inference__update_step_xla_186466
#__inference__update_step_xla_186471�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0z�trace_0z�trace_1z�trace_2z�trace_3z�trace_4z�trace_5z�trace_6z�trace_7z�trace_8z�trace_9z�trace_10z�trace_11
�B�
$__inference_signature_wrapper_205928rescaling_15_input"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 '

kwonlyargs�
jrescaling_15_input
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
-__inference_rescaling_15_layer_call_fn_205933inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_rescaling_15_layer_call_and_return_conditional_losses_205941inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_conv2d_45_layer_call_fn_205950inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_conv2d_45_layer_call_and_return_conditional_losses_205961inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
1__inference_max_pooling2d_45_layer_call_fn_205966inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_205971inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_conv2d_46_layer_call_fn_205980inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_conv2d_46_layer_call_and_return_conditional_losses_205991inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
1__inference_max_pooling2d_46_layer_call_fn_205996inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_max_pooling2d_46_layer_call_and_return_conditional_losses_206001inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_conv2d_47_layer_call_fn_206010inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_conv2d_47_layer_call_and_return_conditional_losses_206021inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
1__inference_max_pooling2d_47_layer_call_fn_206026inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_206031inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_flatten_15_layer_call_fn_206036inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_flatten_15_layer_call_and_return_conditional_losses_206042inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_dense_44_layer_call_fn_206051inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_dense_44_layer_call_and_return_conditional_losses_206062inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_dense_45_layer_call_fn_206071inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_dense_45_layer_call_and_return_conditional_losses_206082inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_dense_46_layer_call_fn_206091inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_dense_46_layer_call_and_return_conditional_losses_206102inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
/:-2Adam/m/conv2d_45/kernel
/:-2Adam/v/conv2d_45/kernel
!:2Adam/m/conv2d_45/bias
!:2Adam/v/conv2d_45/bias
/:- 2Adam/m/conv2d_46/kernel
/:- 2Adam/v/conv2d_46/kernel
!: 2Adam/m/conv2d_46/bias
!: 2Adam/v/conv2d_46/bias
/:- @2Adam/m/conv2d_47/kernel
/:- @2Adam/v/conv2d_47/kernel
!:@2Adam/m/conv2d_47/bias
!:@2Adam/v/conv2d_47/bias
):'���2Adam/m/dense_44/kernel
):'���2Adam/v/dense_44/kernel
!:�2Adam/m/dense_44/bias
!:�2Adam/v/dense_44/bias
(:&
��2Adam/m/dense_45/kernel
(:&
��2Adam/v/dense_45/kernel
!:�2Adam/m/dense_45/bias
!:�2Adam/v/dense_45/bias
':%	�(2Adam/m/dense_46/kernel
':%	�(2Adam/v/dense_46/kernel
 :(2Adam/m/dense_46/bias
 :(2Adam/v/dense_46/bias
�B�
#__inference__update_step_xla_186416gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_186421gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_186426gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_186431gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_186436gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_186441gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_186446gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_186451gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_186456gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_186461gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_186466gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_186471gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper�
#__inference__update_step_xla_186416~x�u
n�k
!�
gradient
<�9	%�"
�
�
p
` VariableSpec 
`��ʞ��?
� "
 �
#__inference__update_step_xla_186421f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`��ʞ��?
� "
 �
#__inference__update_step_xla_186426~x�u
n�k
!�
gradient 
<�9	%�"
� 
�
p
` VariableSpec 
`��˞��?
� "
 �
#__inference__update_step_xla_186431f`�]
V�S
�
gradient 
0�-	�
� 
�
p
` VariableSpec 
`��˞��?
� "
 �
#__inference__update_step_xla_186436~x�u
n�k
!�
gradient @
<�9	%�"
� @
�
p
` VariableSpec 
`��˞��?
� "
 �
#__inference__update_step_xla_186441f`�]
V�S
�
gradient@
0�-	�
�@
�
p
` VariableSpec 
`��˞��?
� "
 �
#__inference__update_step_xla_186446{u�r
k�h
#� 
gradient����������
7�4	 �
����
�
p
` VariableSpec 
`������?
� "
 �
#__inference__update_step_xla_186451hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`������?
� "
 �
#__inference__update_step_xla_186456rl�i
b�_
�
gradient
��
6�3	�
�
��
�
p
` VariableSpec 
`��˞��?
� "
 �
#__inference__update_step_xla_186461hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`��ʞ��?
� "
 �
#__inference__update_step_xla_186466pj�g
`�]
�
gradient	�(
5�2	�
�	�(
�
p
` VariableSpec 
`������?
� "
 �
#__inference__update_step_xla_186471f`�]
V�S
�
gradient(
0�-	�
�(
�
p
` VariableSpec 
`������?
� "
 �
!__inference__wrapped_model_205586�!"01?@TU\]deE�B
;�8
6�3
rescaling_15_input�����������
� "3�0
.
dense_46"�
dense_46���������(�
E__inference_conv2d_45_layer_call_and_return_conditional_losses_205961w!"9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������
� �
*__inference_conv2d_45_layer_call_fn_205950l!"9�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
E__inference_conv2d_46_layer_call_and_return_conditional_losses_205991w019�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0����������� 
� �
*__inference_conv2d_46_layer_call_fn_205980l019�6
/�,
*�'
inputs�����������
� "+�(
unknown����������� �
E__inference_conv2d_47_layer_call_and_return_conditional_losses_206021s?@7�4
-�*
(�%
inputs���������@@ 
� "4�1
*�'
tensor_0���������@@@
� �
*__inference_conv2d_47_layer_call_fn_206010h?@7�4
-�*
(�%
inputs���������@@ 
� ")�&
unknown���������@@@�
D__inference_dense_44_layer_call_and_return_conditional_losses_206062fTU1�.
'�$
"�
inputs�����������
� "-�*
#� 
tensor_0����������
� �
)__inference_dense_44_layer_call_fn_206051[TU1�.
'�$
"�
inputs�����������
� ""�
unknown�����������
D__inference_dense_45_layer_call_and_return_conditional_losses_206082e\]0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
)__inference_dense_45_layer_call_fn_206071Z\]0�-
&�#
!�
inputs����������
� ""�
unknown�����������
D__inference_dense_46_layer_call_and_return_conditional_losses_206102dde0�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������(
� �
)__inference_dense_46_layer_call_fn_206091Yde0�-
&�#
!�
inputs����������
� "!�
unknown���������(�
F__inference_flatten_15_layer_call_and_return_conditional_losses_206042i7�4
-�*
(�%
inputs���������  @
� ".�+
$�!
tensor_0�����������
� �
+__inference_flatten_15_layer_call_fn_206036^7�4
-�*
(�%
inputs���������  @
� "#� 
unknown������������
L__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_205971�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
1__inference_max_pooling2d_45_layer_call_fn_205966�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
L__inference_max_pooling2d_46_layer_call_and_return_conditional_losses_206001�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
1__inference_max_pooling2d_46_layer_call_fn_205996�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
L__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_206031�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
1__inference_max_pooling2d_47_layer_call_fn_206026�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
H__inference_rescaling_15_layer_call_and_return_conditional_losses_205941s9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������
� �
-__inference_rescaling_15_layer_call_fn_205933h9�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
I__inference_sequential_15_layer_call_and_return_conditional_losses_205735�!"01?@TU\]deM�J
C�@
6�3
rescaling_15_input�����������
p

 
� ",�)
"�
tensor_0���������(
� �
I__inference_sequential_15_layer_call_and_return_conditional_losses_205774�!"01?@TU\]deM�J
C�@
6�3
rescaling_15_input�����������
p 

 
� ",�)
"�
tensor_0���������(
� �
.__inference_sequential_15_layer_call_fn_205803�!"01?@TU\]deM�J
C�@
6�3
rescaling_15_input�����������
p

 
� "!�
unknown���������(�
.__inference_sequential_15_layer_call_fn_205832�!"01?@TU\]deM�J
C�@
6�3
rescaling_15_input�����������
p 

 
� "!�
unknown���������(�
$__inference_signature_wrapper_205928�!"01?@TU\]de[�X
� 
Q�N
L
rescaling_15_input6�3
rescaling_15_input�����������"3�0
.
dense_46"�
dense_46���������(