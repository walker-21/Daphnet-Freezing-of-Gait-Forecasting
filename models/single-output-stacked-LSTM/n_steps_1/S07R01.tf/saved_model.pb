јв$
Ч╦
D
AddV2
x"T
y"T
z"T"
Ttype:
2	ђљ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ѕ
ђ
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
$
DisableCopyOnRead
resourceѕ
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
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
є
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( ѕ
?
Mul
x"T
y"T
z"T"
Ttype:
2	љ
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
dtypetypeѕ
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_typeіьout_type"	
Ttype"
out_typetype0:
2	
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
┴
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
executor_typestring ѕе
@
StaticRegexFullMatch	
input

output
"
patternstring
э
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
░
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleіжУelement_dtype"
element_dtypetype"

shape_typetype:
2	
Ъ
TensorListReserve
element_shape"
shape_type
num_elements(
handleіжУelement_dtype"
element_dtypetype"

shape_typetype:
2	
ѕ
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint         
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ
ћ
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
ѕ"serve*2.12.02v2.12.0-rc1-12-g0db597d0d758╝▓"
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
ђ
Adam/v/dense_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/dense_25/bias
y
(Adam/v/dense_25/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_25/bias*
_output_shapes
:*
dtype0
ђ
Adam/m/dense_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/dense_25/bias
y
(Adam/m/dense_25/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_25/bias*
_output_shapes
:*
dtype0
ѕ
Adam/v/dense_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/v/dense_25/kernel
Ђ
*Adam/v/dense_25/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_25/kernel*
_output_shapes

:*
dtype0
ѕ
Adam/m/dense_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/m/dense_25/kernel
Ђ
*Adam/m/dense_25/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_25/kernel*
_output_shapes

:*
dtype0
ђ
Adam/v/dense_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/dense_24/bias
y
(Adam/v/dense_24/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_24/bias*
_output_shapes
:*
dtype0
ђ
Adam/m/dense_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/dense_24/bias
y
(Adam/m/dense_24/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_24/bias*
_output_shapes
:*
dtype0
ѕ
Adam/v/dense_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*'
shared_nameAdam/v/dense_24/kernel
Ђ
*Adam/v/dense_24/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_24/kernel*
_output_shapes

:d*
dtype0
ѕ
Adam/m/dense_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*'
shared_nameAdam/m/dense_24/kernel
Ђ
*Adam/m/dense_24/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_24/kernel*
_output_shapes

:d*
dtype0
Ў
 Adam/v/lstm_25/lstm_cell_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ*1
shared_name" Adam/v/lstm_25/lstm_cell_25/bias
њ
4Adam/v/lstm_25/lstm_cell_25/bias/Read/ReadVariableOpReadVariableOp Adam/v/lstm_25/lstm_cell_25/bias*
_output_shapes	
:љ*
dtype0
Ў
 Adam/m/lstm_25/lstm_cell_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ*1
shared_name" Adam/m/lstm_25/lstm_cell_25/bias
њ
4Adam/m/lstm_25/lstm_cell_25/bias/Read/ReadVariableOpReadVariableOp Adam/m/lstm_25/lstm_cell_25/bias*
_output_shapes	
:љ*
dtype0
х
,Adam/v/lstm_25/lstm_cell_25/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*=
shared_name.,Adam/v/lstm_25/lstm_cell_25/recurrent_kernel
«
@Adam/v/lstm_25/lstm_cell_25/recurrent_kernel/Read/ReadVariableOpReadVariableOp,Adam/v/lstm_25/lstm_cell_25/recurrent_kernel*
_output_shapes
:	dљ*
dtype0
х
,Adam/m/lstm_25/lstm_cell_25/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*=
shared_name.,Adam/m/lstm_25/lstm_cell_25/recurrent_kernel
«
@Adam/m/lstm_25/lstm_cell_25/recurrent_kernel/Read/ReadVariableOpReadVariableOp,Adam/m/lstm_25/lstm_cell_25/recurrent_kernel*
_output_shapes
:	dљ*
dtype0
А
"Adam/v/lstm_25/lstm_cell_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*3
shared_name$"Adam/v/lstm_25/lstm_cell_25/kernel
џ
6Adam/v/lstm_25/lstm_cell_25/kernel/Read/ReadVariableOpReadVariableOp"Adam/v/lstm_25/lstm_cell_25/kernel*
_output_shapes
:	dљ*
dtype0
А
"Adam/m/lstm_25/lstm_cell_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*3
shared_name$"Adam/m/lstm_25/lstm_cell_25/kernel
џ
6Adam/m/lstm_25/lstm_cell_25/kernel/Read/ReadVariableOpReadVariableOp"Adam/m/lstm_25/lstm_cell_25/kernel*
_output_shapes
:	dљ*
dtype0
Ў
 Adam/v/lstm_24/lstm_cell_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ*1
shared_name" Adam/v/lstm_24/lstm_cell_24/bias
њ
4Adam/v/lstm_24/lstm_cell_24/bias/Read/ReadVariableOpReadVariableOp Adam/v/lstm_24/lstm_cell_24/bias*
_output_shapes	
:љ*
dtype0
Ў
 Adam/m/lstm_24/lstm_cell_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ*1
shared_name" Adam/m/lstm_24/lstm_cell_24/bias
њ
4Adam/m/lstm_24/lstm_cell_24/bias/Read/ReadVariableOpReadVariableOp Adam/m/lstm_24/lstm_cell_24/bias*
_output_shapes	
:љ*
dtype0
х
,Adam/v/lstm_24/lstm_cell_24/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*=
shared_name.,Adam/v/lstm_24/lstm_cell_24/recurrent_kernel
«
@Adam/v/lstm_24/lstm_cell_24/recurrent_kernel/Read/ReadVariableOpReadVariableOp,Adam/v/lstm_24/lstm_cell_24/recurrent_kernel*
_output_shapes
:	dљ*
dtype0
х
,Adam/m/lstm_24/lstm_cell_24/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*=
shared_name.,Adam/m/lstm_24/lstm_cell_24/recurrent_kernel
«
@Adam/m/lstm_24/lstm_cell_24/recurrent_kernel/Read/ReadVariableOpReadVariableOp,Adam/m/lstm_24/lstm_cell_24/recurrent_kernel*
_output_shapes
:	dљ*
dtype0
А
"Adam/v/lstm_24/lstm_cell_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:		љ*3
shared_name$"Adam/v/lstm_24/lstm_cell_24/kernel
џ
6Adam/v/lstm_24/lstm_cell_24/kernel/Read/ReadVariableOpReadVariableOp"Adam/v/lstm_24/lstm_cell_24/kernel*
_output_shapes
:		љ*
dtype0
А
"Adam/m/lstm_24/lstm_cell_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:		љ*3
shared_name$"Adam/m/lstm_24/lstm_cell_24/kernel
џ
6Adam/m/lstm_24/lstm_cell_24/kernel/Read/ReadVariableOpReadVariableOp"Adam/m/lstm_24/lstm_cell_24/kernel*
_output_shapes
:		љ*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
І
lstm_25/lstm_cell_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ**
shared_namelstm_25/lstm_cell_25/bias
ё
-lstm_25/lstm_cell_25/bias/Read/ReadVariableOpReadVariableOplstm_25/lstm_cell_25/bias*
_output_shapes	
:љ*
dtype0
Д
%lstm_25/lstm_cell_25/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*6
shared_name'%lstm_25/lstm_cell_25/recurrent_kernel
а
9lstm_25/lstm_cell_25/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_25/lstm_cell_25/recurrent_kernel*
_output_shapes
:	dљ*
dtype0
Њ
lstm_25/lstm_cell_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*,
shared_namelstm_25/lstm_cell_25/kernel
ї
/lstm_25/lstm_cell_25/kernel/Read/ReadVariableOpReadVariableOplstm_25/lstm_cell_25/kernel*
_output_shapes
:	dљ*
dtype0
І
lstm_24/lstm_cell_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ**
shared_namelstm_24/lstm_cell_24/bias
ё
-lstm_24/lstm_cell_24/bias/Read/ReadVariableOpReadVariableOplstm_24/lstm_cell_24/bias*
_output_shapes	
:љ*
dtype0
Д
%lstm_24/lstm_cell_24/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*6
shared_name'%lstm_24/lstm_cell_24/recurrent_kernel
а
9lstm_24/lstm_cell_24/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_24/lstm_cell_24/recurrent_kernel*
_output_shapes
:	dљ*
dtype0
Њ
lstm_24/lstm_cell_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:		љ*,
shared_namelstm_24/lstm_cell_24/kernel
ї
/lstm_24/lstm_cell_24/kernel/Read/ReadVariableOpReadVariableOplstm_24/lstm_cell_24/kernel*
_output_shapes
:		љ*
dtype0
r
dense_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_25/bias
k
!dense_25/bias/Read/ReadVariableOpReadVariableOpdense_25/bias*
_output_shapes
:*
dtype0
z
dense_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_25/kernel
s
#dense_25/kernel/Read/ReadVariableOpReadVariableOpdense_25/kernel*
_output_shapes

:*
dtype0
r
dense_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_24/bias
k
!dense_24/bias/Read/ReadVariableOpReadVariableOpdense_24/bias*
_output_shapes
:*
dtype0
z
dense_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d* 
shared_namedense_24/kernel
s
#dense_24/kernel/Read/ReadVariableOpReadVariableOpdense_24/kernel*
_output_shapes

:d*
dtype0
ѕ
serving_default_lstm_24_inputPlaceholder*+
_output_shapes
:         	*
dtype0* 
shape:         	
╩
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_24_inputlstm_24/lstm_cell_24/kernel%lstm_24/lstm_cell_24/recurrent_kernellstm_24/lstm_cell_24/biaslstm_25/lstm_cell_25/kernel%lstm_25/lstm_cell_25/recurrent_kernellstm_25/lstm_cell_25/biasdense_24/kerneldense_24/biasdense_25/kerneldense_25/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8ѓ *-
f(R&
$__inference_signature_wrapper_193995

NoOpNoOp
╝N
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*эM
valueьMBЖM BсM
ш
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
┴
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec*
┴
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell
 
state_spec*
Ц
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses
'_random_generator* 
д
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses

.kernel
/bias*
д
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses

6kernel
7bias*
J
80
91
:2
;3
<4
=5
.6
/7
68
79*
J
80
91
:2
;3
<4
=5
.6
/7
68
79*
* 
░
>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Ctrace_0
Dtrace_1
Etrace_2
Ftrace_3* 
6
Gtrace_0
Htrace_1
Itrace_2
Jtrace_3* 
* 
Ђ
K
_variables
L_iterations
M_learning_rate
N_index_dict
O
_momentums
P_velocities
Q_update_step_xla*

Rserving_default* 

80
91
:2*

80
91
:2*
* 
Ъ

Sstates
Tnon_trainable_variables

Ulayers
Vmetrics
Wlayer_regularization_losses
Xlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Ytrace_0
Ztrace_1
[trace_2
\trace_3* 
6
]trace_0
^trace_1
_trace_2
`trace_3* 
* 
с
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses
g_random_generator
h
state_size

8kernel
9recurrent_kernel
:bias*
* 

;0
<1
=2*

;0
<1
=2*
* 
Ъ

istates
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
otrace_0
ptrace_1
qtrace_2
rtrace_3* 
6
strace_0
ttrace_1
utrace_2
vtrace_3* 
* 
с
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses
}_random_generator
~
state_size

;kernel
<recurrent_kernel
=bias*
* 
* 
* 
* 
Ћ
non_trainable_variables
ђlayers
Ђmetrics
 ѓlayer_regularization_losses
Ѓlayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses* 

ёtrace_0
Ёtrace_1* 

єtrace_0
Єtrace_1* 
* 

.0
/1*

.0
/1*
* 
ў
ѕnon_trainable_variables
Ѕlayers
іmetrics
 Іlayer_regularization_losses
їlayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses*

Їtrace_0* 

јtrace_0* 
_Y
VARIABLE_VALUEdense_24/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_24/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

60
71*

60
71*
* 
ў
Јnon_trainable_variables
љlayers
Љmetrics
 њlayer_regularization_losses
Њlayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses*

ћtrace_0* 

Ћtrace_0* 
_Y
VARIABLE_VALUEdense_25/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_25/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUElstm_24/lstm_cell_24/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%lstm_24/lstm_cell_24/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_24/lstm_cell_24/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUElstm_25/lstm_cell_25/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%lstm_25/lstm_cell_25/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_25/lstm_cell_25/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
* 
'
0
1
2
3
4*

ќ0
Ќ1*
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
Х
L0
ў1
Ў2
џ3
Џ4
ю5
Ю6
ъ7
Ъ8
а9
А10
б11
Б12
ц13
Ц14
д15
Д16
е17
Е18
ф19
Ф20*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
T
ў0
џ1
ю2
ъ3
а4
б5
ц6
д7
е8
ф9*
T
Ў0
Џ1
Ю2
Ъ3
А4
Б5
Ц6
Д7
Е8
Ф9*
* 
* 
* 
* 

0*
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

80
91
:2*

80
91
:2*
* 
ў
гnon_trainable_variables
Гlayers
«metrics
 »layer_regularization_losses
░layer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses*

▒trace_0
▓trace_1* 

│trace_0
┤trace_1* 
* 
* 
* 
* 

0*
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

;0
<1
=2*

;0
<1
=2*
* 
ў
хnon_trainable_variables
Хlayers
иmetrics
 Иlayer_regularization_losses
╣layer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses*

║trace_0
╗trace_1* 

╝trace_0
йtrace_1* 
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
Й	variables
┐	keras_api

└total

┴count*
M
┬	variables
├	keras_api

─total

┼count
к
_fn_kwargs*
mg
VARIABLE_VALUE"Adam/m/lstm_24/lstm_cell_24/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/v/lstm_24/lstm_cell_24/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE,Adam/m/lstm_24/lstm_cell_24/recurrent_kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE,Adam/v/lstm_24/lstm_cell_24/recurrent_kernel1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE Adam/m/lstm_24/lstm_cell_24/bias1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE Adam/v/lstm_24/lstm_cell_24/bias1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/m/lstm_25/lstm_cell_25/kernel1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/v/lstm_25/lstm_cell_25/kernel1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE,Adam/m/lstm_25/lstm_cell_25/recurrent_kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE,Adam/v/lstm_25/lstm_cell_25/recurrent_kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE Adam/m/lstm_25/lstm_cell_25/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE Adam/v/lstm_25/lstm_cell_25/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_24/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_24/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_24/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_24/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_25/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_25/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_25/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_25/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
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

└0
┴1*

Й	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

─0
┼1*

┬	variables*
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
 	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense_24/kerneldense_24/biasdense_25/kerneldense_25/biaslstm_24/lstm_cell_24/kernel%lstm_24/lstm_cell_24/recurrent_kernellstm_24/lstm_cell_24/biaslstm_25/lstm_cell_25/kernel%lstm_25/lstm_cell_25/recurrent_kernellstm_25/lstm_cell_25/bias	iterationlearning_rate"Adam/m/lstm_24/lstm_cell_24/kernel"Adam/v/lstm_24/lstm_cell_24/kernel,Adam/m/lstm_24/lstm_cell_24/recurrent_kernel,Adam/v/lstm_24/lstm_cell_24/recurrent_kernel Adam/m/lstm_24/lstm_cell_24/bias Adam/v/lstm_24/lstm_cell_24/bias"Adam/m/lstm_25/lstm_cell_25/kernel"Adam/v/lstm_25/lstm_cell_25/kernel,Adam/m/lstm_25/lstm_cell_25/recurrent_kernel,Adam/v/lstm_25/lstm_cell_25/recurrent_kernel Adam/m/lstm_25/lstm_cell_25/bias Adam/v/lstm_25/lstm_cell_25/biasAdam/m/dense_24/kernelAdam/v/dense_24/kernelAdam/m/dense_24/biasAdam/v/dense_24/biasAdam/m/dense_25/kernelAdam/v/dense_25/kernelAdam/m/dense_25/biasAdam/v/dense_25/biastotal_1count_1totalcountConst*1
Tin*
(2&*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *(
f#R!
__inference__traced_save_196392
Щ	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_24/kerneldense_24/biasdense_25/kerneldense_25/biaslstm_24/lstm_cell_24/kernel%lstm_24/lstm_cell_24/recurrent_kernellstm_24/lstm_cell_24/biaslstm_25/lstm_cell_25/kernel%lstm_25/lstm_cell_25/recurrent_kernellstm_25/lstm_cell_25/bias	iterationlearning_rate"Adam/m/lstm_24/lstm_cell_24/kernel"Adam/v/lstm_24/lstm_cell_24/kernel,Adam/m/lstm_24/lstm_cell_24/recurrent_kernel,Adam/v/lstm_24/lstm_cell_24/recurrent_kernel Adam/m/lstm_24/lstm_cell_24/bias Adam/v/lstm_24/lstm_cell_24/bias"Adam/m/lstm_25/lstm_cell_25/kernel"Adam/v/lstm_25/lstm_cell_25/kernel,Adam/m/lstm_25/lstm_cell_25/recurrent_kernel,Adam/v/lstm_25/lstm_cell_25/recurrent_kernel Adam/m/lstm_25/lstm_cell_25/bias Adam/v/lstm_25/lstm_cell_25/biasAdam/m/dense_24/kernelAdam/v/dense_24/kernelAdam/m/dense_24/biasAdam/v/dense_24/biasAdam/m/dense_25/kernelAdam/v/dense_25/kernelAdam/m/dense_25/biasAdam/v/dense_25/biastotal_1count_1totalcount*0
Tin)
'2%*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *+
f&R$
"__inference__traced_restore_196510нч 
С$
с
while_body_192927
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_25_192951_0:	dљ.
while_lstm_cell_25_192953_0:	dљ*
while_lstm_cell_25_192955_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_25_192951:	dљ,
while_lstm_cell_25_192953:	dљ(
while_lstm_cell_25_192955:	љѕб*while/lstm_cell_25/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0│
*while/lstm_cell_25/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_25_192951_0while_lstm_cell_25_192953_0while_lstm_cell_25_192955_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_lstm_cell_25_layer_call_and_return_conditional_losses_192912r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ё
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:03while/lstm_cell_25/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: љ
while/Identity_4Identity3while/lstm_cell_25/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         dљ
while/Identity_5Identity3while/lstm_cell_25/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         dy

while/NoOpNoOp+^while/lstm_cell_25/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"8
while_lstm_cell_25_192951while_lstm_cell_25_192951_0"8
while_lstm_cell_25_192953while_lstm_cell_25_192953_0"8
while_lstm_cell_25_192955while_lstm_cell_25_192955_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_25/StatefulPartitionedCall*while/lstm_cell_25/StatefulPartitionedCall:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Ќ	
├
while_cond_192926
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_192926___redundant_placeholder04
0while_while_cond_192926___redundant_placeholder14
0while_while_cond_192926___redundant_placeholder24
0while_while_cond_192926___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
і:
л
while_body_195370
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_25_matmul_readvariableop_resource_0:	dљH
5while_lstm_cell_25_matmul_1_readvariableop_resource_0:	dљC
4while_lstm_cell_25_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_25_matmul_readvariableop_resource:	dљF
3while_lstm_cell_25_matmul_1_readvariableop_resource:	dљA
2while_lstm_cell_25_biasadd_readvariableop_resource:	љѕб)while/lstm_cell_25/BiasAdd/ReadVariableOpб(while/lstm_cell_25/MatMul/ReadVariableOpб*while/lstm_cell_25/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ю
(while/lstm_cell_25/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_25_matmul_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0║
while/lstm_cell_25/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
*while/lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_25_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0А
while/lstm_cell_25/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љъ
while/lstm_cell_25/addAddV2#while/lstm_cell_25/MatMul:product:0%while/lstm_cell_25/MatMul_1:product:0*
T0*(
_output_shapes
:         љЏ
)while/lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_25_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0Д
while/lstm_cell_25/BiasAddBiasAddwhile/lstm_cell_25/add:z:01while/lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љd
"while/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_25/splitSplit+while/lstm_cell_25/split/split_dim:output:0#while/lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitz
while/lstm_cell_25/SigmoidSigmoid!while/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_25/Sigmoid_1Sigmoid!while/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:         dє
while/lstm_cell_25/mulMul while/lstm_cell_25/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dt
while/lstm_cell_25/ReluRelu!while/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:         dў
while/lstm_cell_25/mul_1Mulwhile/lstm_cell_25/Sigmoid:y:0%while/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:         dЇ
while/lstm_cell_25/add_1AddV2while/lstm_cell_25/mul:z:0while/lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_25/Sigmoid_2Sigmoid!while/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:         dq
while/lstm_cell_25/Relu_1Reluwhile/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:         dю
while/lstm_cell_25/mul_2Mul while/lstm_cell_25/Sigmoid_2:y:0'while/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:         dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ь
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_25/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_25/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dy
while/Identity_5Identitywhile/lstm_cell_25/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dл

while/NoOpNoOp*^while/lstm_cell_25/BiasAdd/ReadVariableOp)^while/lstm_cell_25/MatMul/ReadVariableOp+^while/lstm_cell_25/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"j
2while_lstm_cell_25_biasadd_readvariableop_resource4while_lstm_cell_25_biasadd_readvariableop_resource_0"l
3while_lstm_cell_25_matmul_1_readvariableop_resource5while_lstm_cell_25_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_25_matmul_readvariableop_resource3while_lstm_cell_25_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2V
)while/lstm_cell_25/BiasAdd/ReadVariableOp)while/lstm_cell_25/BiasAdd/ReadVariableOp2T
(while/lstm_cell_25/MatMul/ReadVariableOp(while/lstm_cell_25/MatMul/ReadVariableOp2X
*while/lstm_cell_25/MatMul_1/ReadVariableOp*while/lstm_cell_25/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
█C
л

lstm_25_while_body_194550,
(lstm_25_while_lstm_25_while_loop_counter2
.lstm_25_while_lstm_25_while_maximum_iterations
lstm_25_while_placeholder
lstm_25_while_placeholder_1
lstm_25_while_placeholder_2
lstm_25_while_placeholder_3+
'lstm_25_while_lstm_25_strided_slice_1_0g
clstm_25_while_tensorarrayv2read_tensorlistgetitem_lstm_25_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_25_while_lstm_cell_25_matmul_readvariableop_resource_0:	dљP
=lstm_25_while_lstm_cell_25_matmul_1_readvariableop_resource_0:	dљK
<lstm_25_while_lstm_cell_25_biasadd_readvariableop_resource_0:	љ
lstm_25_while_identity
lstm_25_while_identity_1
lstm_25_while_identity_2
lstm_25_while_identity_3
lstm_25_while_identity_4
lstm_25_while_identity_5)
%lstm_25_while_lstm_25_strided_slice_1e
alstm_25_while_tensorarrayv2read_tensorlistgetitem_lstm_25_tensorarrayunstack_tensorlistfromtensorL
9lstm_25_while_lstm_cell_25_matmul_readvariableop_resource:	dљN
;lstm_25_while_lstm_cell_25_matmul_1_readvariableop_resource:	dљI
:lstm_25_while_lstm_cell_25_biasadd_readvariableop_resource:	љѕб1lstm_25/while/lstm_cell_25/BiasAdd/ReadVariableOpб0lstm_25/while/lstm_cell_25/MatMul/ReadVariableOpб2lstm_25/while/lstm_cell_25/MatMul_1/ReadVariableOpљ
?lstm_25/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╬
1lstm_25/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_25_while_tensorarrayv2read_tensorlistgetitem_lstm_25_tensorarrayunstack_tensorlistfromtensor_0lstm_25_while_placeholderHlstm_25/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Г
0lstm_25/while/lstm_cell_25/MatMul/ReadVariableOpReadVariableOp;lstm_25_while_lstm_cell_25_matmul_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0м
!lstm_25/while/lstm_cell_25/MatMulMatMul8lstm_25/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_25/while/lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ▒
2lstm_25/while/lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp=lstm_25_while_lstm_cell_25_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0╣
#lstm_25/while/lstm_cell_25/MatMul_1MatMullstm_25_while_placeholder_2:lstm_25/while/lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љХ
lstm_25/while/lstm_cell_25/addAddV2+lstm_25/while/lstm_cell_25/MatMul:product:0-lstm_25/while/lstm_cell_25/MatMul_1:product:0*
T0*(
_output_shapes
:         љФ
1lstm_25/while/lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp<lstm_25_while_lstm_cell_25_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0┐
"lstm_25/while/lstm_cell_25/BiasAddBiasAdd"lstm_25/while/lstm_cell_25/add:z:09lstm_25/while/lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љl
*lstm_25/while/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Є
 lstm_25/while/lstm_cell_25/splitSplit3lstm_25/while/lstm_cell_25/split/split_dim:output:0+lstm_25/while/lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitі
"lstm_25/while/lstm_cell_25/SigmoidSigmoid)lstm_25/while/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:         dї
$lstm_25/while/lstm_cell_25/Sigmoid_1Sigmoid)lstm_25/while/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:         dъ
lstm_25/while/lstm_cell_25/mulMul(lstm_25/while/lstm_cell_25/Sigmoid_1:y:0lstm_25_while_placeholder_3*
T0*'
_output_shapes
:         dё
lstm_25/while/lstm_cell_25/ReluRelu)lstm_25/while/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:         d░
 lstm_25/while/lstm_cell_25/mul_1Mul&lstm_25/while/lstm_cell_25/Sigmoid:y:0-lstm_25/while/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:         dЦ
 lstm_25/while/lstm_cell_25/add_1AddV2"lstm_25/while/lstm_cell_25/mul:z:0$lstm_25/while/lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:         dї
$lstm_25/while/lstm_cell_25/Sigmoid_2Sigmoid)lstm_25/while/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:         dЂ
!lstm_25/while/lstm_cell_25/Relu_1Relu$lstm_25/while/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:         d┤
 lstm_25/while/lstm_cell_25/mul_2Mul(lstm_25/while/lstm_cell_25/Sigmoid_2:y:0/lstm_25/while/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:         dz
8lstm_25/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Ї
2lstm_25/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_25_while_placeholder_1Alstm_25/while/TensorArrayV2Write/TensorListSetItem/index:output:0$lstm_25/while/lstm_cell_25/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмU
lstm_25/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_25/while/addAddV2lstm_25_while_placeholderlstm_25/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_25/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Є
lstm_25/while/add_1AddV2(lstm_25_while_lstm_25_while_loop_counterlstm_25/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_25/while/IdentityIdentitylstm_25/while/add_1:z:0^lstm_25/while/NoOp*
T0*
_output_shapes
: і
lstm_25/while/Identity_1Identity.lstm_25_while_lstm_25_while_maximum_iterations^lstm_25/while/NoOp*
T0*
_output_shapes
: q
lstm_25/while/Identity_2Identitylstm_25/while/add:z:0^lstm_25/while/NoOp*
T0*
_output_shapes
: ъ
lstm_25/while/Identity_3IdentityBlstm_25/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_25/while/NoOp*
T0*
_output_shapes
: Љ
lstm_25/while/Identity_4Identity$lstm_25/while/lstm_cell_25/mul_2:z:0^lstm_25/while/NoOp*
T0*'
_output_shapes
:         dЉ
lstm_25/while/Identity_5Identity$lstm_25/while/lstm_cell_25/add_1:z:0^lstm_25/while/NoOp*
T0*'
_output_shapes
:         d­
lstm_25/while/NoOpNoOp2^lstm_25/while/lstm_cell_25/BiasAdd/ReadVariableOp1^lstm_25/while/lstm_cell_25/MatMul/ReadVariableOp3^lstm_25/while/lstm_cell_25/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "=
lstm_25_while_identity_1!lstm_25/while/Identity_1:output:0"=
lstm_25_while_identity_2!lstm_25/while/Identity_2:output:0"=
lstm_25_while_identity_3!lstm_25/while/Identity_3:output:0"=
lstm_25_while_identity_4!lstm_25/while/Identity_4:output:0"=
lstm_25_while_identity_5!lstm_25/while/Identity_5:output:0"9
lstm_25_while_identitylstm_25/while/Identity:output:0"P
%lstm_25_while_lstm_25_strided_slice_1'lstm_25_while_lstm_25_strided_slice_1_0"z
:lstm_25_while_lstm_cell_25_biasadd_readvariableop_resource<lstm_25_while_lstm_cell_25_biasadd_readvariableop_resource_0"|
;lstm_25_while_lstm_cell_25_matmul_1_readvariableop_resource=lstm_25_while_lstm_cell_25_matmul_1_readvariableop_resource_0"x
9lstm_25_while_lstm_cell_25_matmul_readvariableop_resource;lstm_25_while_lstm_cell_25_matmul_readvariableop_resource_0"╚
alstm_25_while_tensorarrayv2read_tensorlistgetitem_lstm_25_tensorarrayunstack_tensorlistfromtensorclstm_25_while_tensorarrayv2read_tensorlistgetitem_lstm_25_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2f
1lstm_25/while/lstm_cell_25/BiasAdd/ReadVariableOp1lstm_25/while/lstm_cell_25/BiasAdd/ReadVariableOp2d
0lstm_25/while/lstm_cell_25/MatMul/ReadVariableOp0lstm_25/while/lstm_cell_25/MatMul/ReadVariableOp2h
2lstm_25/while/lstm_cell_25/MatMul_1/ReadVariableOp2lstm_25/while/lstm_cell_25/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :XT

_output_shapes
: 
:
_user_specified_name" lstm_25/while/maximum_iterations:R N

_output_shapes
: 
4
_user_specified_namelstm_25/while/loop_counter
╬┐
Х	
I__inference_sequential_12_layer_call_and_return_conditional_losses_194351

inputsF
3lstm_24_lstm_cell_24_matmul_readvariableop_resource:		љH
5lstm_24_lstm_cell_24_matmul_1_readvariableop_resource:	dљC
4lstm_24_lstm_cell_24_biasadd_readvariableop_resource:	љF
3lstm_25_lstm_cell_25_matmul_readvariableop_resource:	dљH
5lstm_25_lstm_cell_25_matmul_1_readvariableop_resource:	dљC
4lstm_25_lstm_cell_25_biasadd_readvariableop_resource:	љ9
'dense_24_matmul_readvariableop_resource:d6
(dense_24_biasadd_readvariableop_resource:9
'dense_25_matmul_readvariableop_resource:6
(dense_25_biasadd_readvariableop_resource:
identityѕбdense_24/BiasAdd/ReadVariableOpбdense_24/MatMul/ReadVariableOpбdense_25/BiasAdd/ReadVariableOpбdense_25/MatMul/ReadVariableOpб+lstm_24/lstm_cell_24/BiasAdd/ReadVariableOpб*lstm_24/lstm_cell_24/MatMul/ReadVariableOpб,lstm_24/lstm_cell_24/MatMul_1/ReadVariableOpбlstm_24/whileб+lstm_25/lstm_cell_25/BiasAdd/ReadVariableOpб*lstm_25/lstm_cell_25/MatMul/ReadVariableOpб,lstm_25/lstm_cell_25/MatMul_1/ReadVariableOpбlstm_25/whileQ
lstm_24/ShapeShapeinputs*
T0*
_output_shapes
::ь¤e
lstm_24/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_24/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_24/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
lstm_24/strided_sliceStridedSlicelstm_24/Shape:output:0$lstm_24/strided_slice/stack:output:0&lstm_24/strided_slice/stack_1:output:0&lstm_24/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_24/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dІ
lstm_24/zeros/packedPacklstm_24/strided_slice:output:0lstm_24/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_24/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ё
lstm_24/zerosFilllstm_24/zeros/packed:output:0lstm_24/zeros/Const:output:0*
T0*'
_output_shapes
:         dZ
lstm_24/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dЈ
lstm_24/zeros_1/packedPacklstm_24/strided_slice:output:0!lstm_24/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_24/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    і
lstm_24/zeros_1Filllstm_24/zeros_1/packed:output:0lstm_24/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dk
lstm_24/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_24/transpose	Transposeinputslstm_24/transpose/perm:output:0*
T0*+
_output_shapes
:         	b
lstm_24/Shape_1Shapelstm_24/transpose:y:0*
T0*
_output_shapes
::ь¤g
lstm_24/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_24/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_24/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ѓ
lstm_24/strided_slice_1StridedSlicelstm_24/Shape_1:output:0&lstm_24/strided_slice_1/stack:output:0(lstm_24/strided_slice_1/stack_1:output:0(lstm_24/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_24/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ╠
lstm_24/TensorArrayV2TensorListReserve,lstm_24/TensorArrayV2/element_shape:output:0 lstm_24/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмј
=lstm_24/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   Э
/lstm_24/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_24/transpose:y:0Flstm_24/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмg
lstm_24/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_24/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_24/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Љ
lstm_24/strided_slice_2StridedSlicelstm_24/transpose:y:0&lstm_24/strided_slice_2/stack:output:0(lstm_24/strided_slice_2/stack_1:output:0(lstm_24/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         	*
shrink_axis_maskЪ
*lstm_24/lstm_cell_24/MatMul/ReadVariableOpReadVariableOp3lstm_24_lstm_cell_24_matmul_readvariableop_resource*
_output_shapes
:		љ*
dtype0«
lstm_24/lstm_cell_24/MatMulMatMul lstm_24/strided_slice_2:output:02lstm_24/lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
,lstm_24/lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp5lstm_24_lstm_cell_24_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0е
lstm_24/lstm_cell_24/MatMul_1MatMullstm_24/zeros:output:04lstm_24/lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љц
lstm_24/lstm_cell_24/addAddV2%lstm_24/lstm_cell_24/MatMul:product:0'lstm_24/lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
+lstm_24/lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp4lstm_24_lstm_cell_24_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0Г
lstm_24/lstm_cell_24/BiasAddBiasAddlstm_24/lstm_cell_24/add:z:03lstm_24/lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љf
$lstm_24/lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ш
lstm_24/lstm_cell_24/splitSplit-lstm_24/lstm_cell_24/split/split_dim:output:0%lstm_24/lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split~
lstm_24/lstm_cell_24/SigmoidSigmoid#lstm_24/lstm_cell_24/split:output:0*
T0*'
_output_shapes
:         dђ
lstm_24/lstm_cell_24/Sigmoid_1Sigmoid#lstm_24/lstm_cell_24/split:output:1*
T0*'
_output_shapes
:         dЈ
lstm_24/lstm_cell_24/mulMul"lstm_24/lstm_cell_24/Sigmoid_1:y:0lstm_24/zeros_1:output:0*
T0*'
_output_shapes
:         dx
lstm_24/lstm_cell_24/ReluRelu#lstm_24/lstm_cell_24/split:output:2*
T0*'
_output_shapes
:         dъ
lstm_24/lstm_cell_24/mul_1Mul lstm_24/lstm_cell_24/Sigmoid:y:0'lstm_24/lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:         dЊ
lstm_24/lstm_cell_24/add_1AddV2lstm_24/lstm_cell_24/mul:z:0lstm_24/lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:         dђ
lstm_24/lstm_cell_24/Sigmoid_2Sigmoid#lstm_24/lstm_cell_24/split:output:3*
T0*'
_output_shapes
:         du
lstm_24/lstm_cell_24/Relu_1Relulstm_24/lstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:         dб
lstm_24/lstm_cell_24/mul_2Mul"lstm_24/lstm_cell_24/Sigmoid_2:y:0)lstm_24/lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:         dv
%lstm_24/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   л
lstm_24/TensorArrayV2_1TensorListReserve.lstm_24/TensorArrayV2_1/element_shape:output:0 lstm_24/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмN
lstm_24/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_24/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         \
lstm_24/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ы
lstm_24/whileWhile#lstm_24/while/loop_counter:output:0)lstm_24/while/maximum_iterations:output:0lstm_24/time:output:0 lstm_24/TensorArrayV2_1:handle:0lstm_24/zeros:output:0lstm_24/zeros_1:output:0 lstm_24/strided_slice_1:output:0?lstm_24/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_24_lstm_cell_24_matmul_readvariableop_resource5lstm_24_lstm_cell_24_matmul_1_readvariableop_resource4lstm_24_lstm_cell_24_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_24_while_body_194104*%
condR
lstm_24_while_cond_194103*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ѕ
8lstm_24/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ┌
*lstm_24/TensorArrayV2Stack/TensorListStackTensorListStacklstm_24/while:output:3Alstm_24/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0p
lstm_24/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         i
lstm_24/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_24/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:»
lstm_24/strided_slice_3StridedSlice3lstm_24/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_24/strided_slice_3/stack:output:0(lstm_24/strided_slice_3/stack_1:output:0(lstm_24/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskm
lstm_24/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          «
lstm_24/transpose_1	Transpose3lstm_24/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_24/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dc
lstm_24/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
lstm_25/ShapeShapelstm_24/transpose_1:y:0*
T0*
_output_shapes
::ь¤e
lstm_25/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_25/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_25/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
lstm_25/strided_sliceStridedSlicelstm_25/Shape:output:0$lstm_25/strided_slice/stack:output:0&lstm_25/strided_slice/stack_1:output:0&lstm_25/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_25/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dІ
lstm_25/zeros/packedPacklstm_25/strided_slice:output:0lstm_25/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_25/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ё
lstm_25/zerosFilllstm_25/zeros/packed:output:0lstm_25/zeros/Const:output:0*
T0*'
_output_shapes
:         dZ
lstm_25/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dЈ
lstm_25/zeros_1/packedPacklstm_25/strided_slice:output:0!lstm_25/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_25/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    і
lstm_25/zeros_1Filllstm_25/zeros_1/packed:output:0lstm_25/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dk
lstm_25/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ј
lstm_25/transpose	Transposelstm_24/transpose_1:y:0lstm_25/transpose/perm:output:0*
T0*+
_output_shapes
:         db
lstm_25/Shape_1Shapelstm_25/transpose:y:0*
T0*
_output_shapes
::ь¤g
lstm_25/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_25/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_25/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ѓ
lstm_25/strided_slice_1StridedSlicelstm_25/Shape_1:output:0&lstm_25/strided_slice_1/stack:output:0(lstm_25/strided_slice_1/stack_1:output:0(lstm_25/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_25/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ╠
lstm_25/TensorArrayV2TensorListReserve,lstm_25/TensorArrayV2/element_shape:output:0 lstm_25/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмј
=lstm_25/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Э
/lstm_25/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_25/transpose:y:0Flstm_25/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмg
lstm_25/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_25/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_25/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Љ
lstm_25/strided_slice_2StridedSlicelstm_25/transpose:y:0&lstm_25/strided_slice_2/stack:output:0(lstm_25/strided_slice_2/stack_1:output:0(lstm_25/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskЪ
*lstm_25/lstm_cell_25/MatMul/ReadVariableOpReadVariableOp3lstm_25_lstm_cell_25_matmul_readvariableop_resource*
_output_shapes
:	dљ*
dtype0«
lstm_25/lstm_cell_25/MatMulMatMul lstm_25/strided_slice_2:output:02lstm_25/lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
,lstm_25/lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp5lstm_25_lstm_cell_25_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0е
lstm_25/lstm_cell_25/MatMul_1MatMullstm_25/zeros:output:04lstm_25/lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љц
lstm_25/lstm_cell_25/addAddV2%lstm_25/lstm_cell_25/MatMul:product:0'lstm_25/lstm_cell_25/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
+lstm_25/lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp4lstm_25_lstm_cell_25_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0Г
lstm_25/lstm_cell_25/BiasAddBiasAddlstm_25/lstm_cell_25/add:z:03lstm_25/lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љf
$lstm_25/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ш
lstm_25/lstm_cell_25/splitSplit-lstm_25/lstm_cell_25/split/split_dim:output:0%lstm_25/lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split~
lstm_25/lstm_cell_25/SigmoidSigmoid#lstm_25/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:         dђ
lstm_25/lstm_cell_25/Sigmoid_1Sigmoid#lstm_25/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:         dЈ
lstm_25/lstm_cell_25/mulMul"lstm_25/lstm_cell_25/Sigmoid_1:y:0lstm_25/zeros_1:output:0*
T0*'
_output_shapes
:         dx
lstm_25/lstm_cell_25/ReluRelu#lstm_25/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:         dъ
lstm_25/lstm_cell_25/mul_1Mul lstm_25/lstm_cell_25/Sigmoid:y:0'lstm_25/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:         dЊ
lstm_25/lstm_cell_25/add_1AddV2lstm_25/lstm_cell_25/mul:z:0lstm_25/lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:         dђ
lstm_25/lstm_cell_25/Sigmoid_2Sigmoid#lstm_25/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:         du
lstm_25/lstm_cell_25/Relu_1Relulstm_25/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:         dб
lstm_25/lstm_cell_25/mul_2Mul"lstm_25/lstm_cell_25/Sigmoid_2:y:0)lstm_25/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:         dv
%lstm_25/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   f
$lstm_25/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_25/TensorArrayV2_1TensorListReserve.lstm_25/TensorArrayV2_1/element_shape:output:0-lstm_25/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмN
lstm_25/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_25/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         \
lstm_25/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ы
lstm_25/whileWhile#lstm_25/while/loop_counter:output:0)lstm_25/while/maximum_iterations:output:0lstm_25/time:output:0 lstm_25/TensorArrayV2_1:handle:0lstm_25/zeros:output:0lstm_25/zeros_1:output:0 lstm_25/strided_slice_1:output:0?lstm_25/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_25_lstm_cell_25_matmul_readvariableop_resource5lstm_25_lstm_cell_25_matmul_1_readvariableop_resource4lstm_25_lstm_cell_25_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_25_while_body_194244*%
condR
lstm_25_while_cond_194243*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ѕ
8lstm_25/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Ь
*lstm_25/TensorArrayV2Stack/TensorListStackTensorListStacklstm_25/while:output:3Alstm_25/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0*
num_elementsp
lstm_25/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         i
lstm_25/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_25/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:»
lstm_25/strided_slice_3StridedSlice3lstm_25/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_25/strided_slice_3/stack:output:0(lstm_25/strided_slice_3/stack_1:output:0(lstm_25/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskm
lstm_25/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          «
lstm_25/transpose_1	Transpose3lstm_25/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_25/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dc
lstm_25/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ]
dropout_12/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @ћ
dropout_12/dropout/MulMul lstm_25/strided_slice_3:output:0!dropout_12/dropout/Const:output:0*
T0*'
_output_shapes
:         dv
dropout_12/dropout/ShapeShape lstm_25/strided_slice_3:output:0*
T0*
_output_shapes
::ь¤б
/dropout_12/dropout/random_uniform/RandomUniformRandomUniform!dropout_12/dropout/Shape:output:0*
T0*'
_output_shapes
:         d*
dtype0f
!dropout_12/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?К
dropout_12/dropout/GreaterEqualGreaterEqual8dropout_12/dropout/random_uniform/RandomUniform:output:0*dropout_12/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         d_
dropout_12/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ┐
dropout_12/dropout/SelectV2SelectV2#dropout_12/dropout/GreaterEqual:z:0dropout_12/dropout/Mul:z:0#dropout_12/dropout/Const_1:output:0*
T0*'
_output_shapes
:         dє
dense_24/MatMul/ReadVariableOpReadVariableOp'dense_24_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0Ў
dense_24/MatMulMatMul$dropout_12/dropout/SelectV2:output:0&dense_24/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
dense_24/BiasAdd/ReadVariableOpReadVariableOp(dense_24_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
dense_24/BiasAddBiasAdddense_24/MatMul:product:0'dense_24/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         b
dense_24/ReluReludense_24/BiasAdd:output:0*
T0*'
_output_shapes
:         є
dense_25/MatMul/ReadVariableOpReadVariableOp'dense_25_matmul_readvariableop_resource*
_output_shapes

:*
dtype0љ
dense_25/MatMulMatMuldense_24/Relu:activations:0&dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
dense_25/BiasAdd/ReadVariableOpReadVariableOp(dense_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
dense_25/BiasAddBiasAdddense_25/MatMul:product:0'dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
dense_25/SoftmaxSoftmaxdense_25/BiasAdd:output:0*
T0*'
_output_shapes
:         i
IdentityIdentitydense_25/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         ђ
NoOpNoOp ^dense_24/BiasAdd/ReadVariableOp^dense_24/MatMul/ReadVariableOp ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp,^lstm_24/lstm_cell_24/BiasAdd/ReadVariableOp+^lstm_24/lstm_cell_24/MatMul/ReadVariableOp-^lstm_24/lstm_cell_24/MatMul_1/ReadVariableOp^lstm_24/while,^lstm_25/lstm_cell_25/BiasAdd/ReadVariableOp+^lstm_25/lstm_cell_25/MatMul/ReadVariableOp-^lstm_25/lstm_cell_25/MatMul_1/ReadVariableOp^lstm_25/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         	: : : : : : : : : : 2B
dense_24/BiasAdd/ReadVariableOpdense_24/BiasAdd/ReadVariableOp2@
dense_24/MatMul/ReadVariableOpdense_24/MatMul/ReadVariableOp2B
dense_25/BiasAdd/ReadVariableOpdense_25/BiasAdd/ReadVariableOp2@
dense_25/MatMul/ReadVariableOpdense_25/MatMul/ReadVariableOp2Z
+lstm_24/lstm_cell_24/BiasAdd/ReadVariableOp+lstm_24/lstm_cell_24/BiasAdd/ReadVariableOp2X
*lstm_24/lstm_cell_24/MatMul/ReadVariableOp*lstm_24/lstm_cell_24/MatMul/ReadVariableOp2\
,lstm_24/lstm_cell_24/MatMul_1/ReadVariableOp,lstm_24/lstm_cell_24/MatMul_1/ReadVariableOp2
lstm_24/whilelstm_24/while2Z
+lstm_25/lstm_cell_25/BiasAdd/ReadVariableOp+lstm_25/lstm_cell_25/BiasAdd/ReadVariableOp2X
*lstm_25/lstm_cell_25/MatMul/ReadVariableOp*lstm_25/lstm_cell_25/MatMul/ReadVariableOp2\
,lstm_25/lstm_cell_25/MatMul_1/ReadVariableOp,lstm_25/lstm_cell_25/MatMul_1/ReadVariableOp2
lstm_25/whilelstm_25/while:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
┼K
Џ
C__inference_lstm_25_layer_call_and_return_conditional_losses_193353

inputs>
+lstm_cell_25_matmul_readvariableop_resource:	dљ@
-lstm_cell_25_matmul_1_readvariableop_resource:	dљ;
,lstm_cell_25_biasadd_readvariableop_resource:	љ
identityѕб#lstm_cell_25/BiasAdd/ReadVariableOpб"lstm_cell_25/MatMul/ReadVariableOpб$lstm_cell_25/MatMul_1/ReadVariableOpбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         dR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskЈ
"lstm_cell_25/MatMul/ReadVariableOpReadVariableOp+lstm_cell_25_matmul_readvariableop_resource*
_output_shapes
:	dљ*
dtype0ќ
lstm_cell_25/MatMulMatMulstrided_slice_2:output:0*lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЊ
$lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_25_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0љ
lstm_cell_25/MatMul_1MatMulzeros:output:0,lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љї
lstm_cell_25/addAddV2lstm_cell_25/MatMul:product:0lstm_cell_25/MatMul_1:product:0*
T0*(
_output_shapes
:         љЇ
#lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_25_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0Ћ
lstm_cell_25/BiasAddBiasAddlstm_cell_25/add:z:0+lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ^
lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_cell_25/splitSplit%lstm_cell_25/split/split_dim:output:0lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitn
lstm_cell_25/SigmoidSigmoidlstm_cell_25/split:output:0*
T0*'
_output_shapes
:         dp
lstm_cell_25/Sigmoid_1Sigmoidlstm_cell_25/split:output:1*
T0*'
_output_shapes
:         dw
lstm_cell_25/mulMullstm_cell_25/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dh
lstm_cell_25/ReluRelulstm_cell_25/split:output:2*
T0*'
_output_shapes
:         dє
lstm_cell_25/mul_1Mullstm_cell_25/Sigmoid:y:0lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:         d{
lstm_cell_25/add_1AddV2lstm_cell_25/mul:z:0lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:         dp
lstm_cell_25/Sigmoid_2Sigmoidlstm_cell_25/split:output:3*
T0*'
_output_shapes
:         de
lstm_cell_25/Relu_1Relulstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:         dі
lstm_cell_25/mul_2Mullstm_cell_25/Sigmoid_2:y:0!lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ѓ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_25_matmul_readvariableop_resource-lstm_cell_25_matmul_1_readvariableop_resource,lstm_cell_25_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_193268*
condR
while_cond_193267*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         d└
NoOpNoOp$^lstm_cell_25/BiasAdd/ReadVariableOp#^lstm_cell_25/MatMul/ReadVariableOp%^lstm_cell_25/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2J
#lstm_cell_25/BiasAdd/ReadVariableOp#lstm_cell_25/BiasAdd/ReadVariableOp2H
"lstm_cell_25/MatMul/ReadVariableOp"lstm_cell_25/MatMul/ReadVariableOp2L
$lstm_cell_25/MatMul_1/ReadVariableOp$lstm_cell_25/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
і:
л
while_body_195515
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_25_matmul_readvariableop_resource_0:	dљH
5while_lstm_cell_25_matmul_1_readvariableop_resource_0:	dљC
4while_lstm_cell_25_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_25_matmul_readvariableop_resource:	dљF
3while_lstm_cell_25_matmul_1_readvariableop_resource:	dљA
2while_lstm_cell_25_biasadd_readvariableop_resource:	љѕб)while/lstm_cell_25/BiasAdd/ReadVariableOpб(while/lstm_cell_25/MatMul/ReadVariableOpб*while/lstm_cell_25/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ю
(while/lstm_cell_25/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_25_matmul_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0║
while/lstm_cell_25/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
*while/lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_25_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0А
while/lstm_cell_25/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љъ
while/lstm_cell_25/addAddV2#while/lstm_cell_25/MatMul:product:0%while/lstm_cell_25/MatMul_1:product:0*
T0*(
_output_shapes
:         љЏ
)while/lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_25_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0Д
while/lstm_cell_25/BiasAddBiasAddwhile/lstm_cell_25/add:z:01while/lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љd
"while/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_25/splitSplit+while/lstm_cell_25/split/split_dim:output:0#while/lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitz
while/lstm_cell_25/SigmoidSigmoid!while/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_25/Sigmoid_1Sigmoid!while/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:         dє
while/lstm_cell_25/mulMul while/lstm_cell_25/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dt
while/lstm_cell_25/ReluRelu!while/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:         dў
while/lstm_cell_25/mul_1Mulwhile/lstm_cell_25/Sigmoid:y:0%while/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:         dЇ
while/lstm_cell_25/add_1AddV2while/lstm_cell_25/mul:z:0while/lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_25/Sigmoid_2Sigmoid!while/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:         dq
while/lstm_cell_25/Relu_1Reluwhile/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:         dю
while/lstm_cell_25/mul_2Mul while/lstm_cell_25/Sigmoid_2:y:0'while/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:         dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ь
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_25/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_25/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dy
while/Identity_5Identitywhile/lstm_cell_25/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dл

while/NoOpNoOp*^while/lstm_cell_25/BiasAdd/ReadVariableOp)^while/lstm_cell_25/MatMul/ReadVariableOp+^while/lstm_cell_25/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"j
2while_lstm_cell_25_biasadd_readvariableop_resource4while_lstm_cell_25_biasadd_readvariableop_resource_0"l
3while_lstm_cell_25_matmul_1_readvariableop_resource5while_lstm_cell_25_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_25_matmul_readvariableop_resource3while_lstm_cell_25_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2V
)while/lstm_cell_25/BiasAdd/ReadVariableOp)while/lstm_cell_25/BiasAdd/ReadVariableOp2T
(while/lstm_cell_25/MatMul/ReadVariableOp(while/lstm_cell_25/MatMul/ReadVariableOp2X
*while/lstm_cell_25/MatMul_1/ReadVariableOp*while/lstm_cell_25/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
ѕ
с
lstm_25_while_cond_194243,
(lstm_25_while_lstm_25_while_loop_counter2
.lstm_25_while_lstm_25_while_maximum_iterations
lstm_25_while_placeholder
lstm_25_while_placeholder_1
lstm_25_while_placeholder_2
lstm_25_while_placeholder_3.
*lstm_25_while_less_lstm_25_strided_slice_1D
@lstm_25_while_lstm_25_while_cond_194243___redundant_placeholder0D
@lstm_25_while_lstm_25_while_cond_194243___redundant_placeholder1D
@lstm_25_while_lstm_25_while_cond_194243___redundant_placeholder2D
@lstm_25_while_lstm_25_while_cond_194243___redundant_placeholder3
lstm_25_while_identity
ѓ
lstm_25/while/LessLesslstm_25_while_placeholder*lstm_25_while_less_lstm_25_strided_slice_1*
T0*
_output_shapes
: [
lstm_25/while/IdentityIdentitylstm_25/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_25_while_identitylstm_25/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :XT

_output_shapes
: 
:
_user_specified_name" lstm_25/while/maximum_iterations:R N

_output_shapes
: 
4
_user_specified_namelstm_25/while/loop_counter
џ

e
F__inference_dropout_12_layer_call_and_return_conditional_losses_195912

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         dQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::ь¤ї
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         d*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?д
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         dT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Њ
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:         da
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:         d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         d:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
П
є
H__inference_lstm_cell_25_layer_call_and_return_conditional_losses_196153

inputs
states_0
states_11
matmul_readvariableop_resource:	dљ3
 matmul_1_readvariableop_resource:	dљ.
biasadd_readvariableop_resource:	љ
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dљ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         љs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:         d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         dЉ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         d:         d:         d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:QM
'
_output_shapes
:         d
"
_user_specified_name
states_1:QM
'
_output_shapes
:         d
"
_user_specified_name
states_0:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
Ќ	
├
while_cond_194752
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_194752___redundant_placeholder04
0while_while_cond_194752___redundant_placeholder14
0while_while_cond_194752___redundant_placeholder24
0while_while_cond_194752___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Ь8
л
while_body_194753
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_24_matmul_readvariableop_resource_0:		љH
5while_lstm_cell_24_matmul_1_readvariableop_resource_0:	dљC
4while_lstm_cell_24_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_24_matmul_readvariableop_resource:		љF
3while_lstm_cell_24_matmul_1_readvariableop_resource:	dљA
2while_lstm_cell_24_biasadd_readvariableop_resource:	љѕб)while/lstm_cell_24/BiasAdd/ReadVariableOpб(while/lstm_cell_24/MatMul/ReadVariableOpб*while/lstm_cell_24/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         	*
element_dtype0Ю
(while/lstm_cell_24/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_24_matmul_readvariableop_resource_0*
_output_shapes
:		љ*
dtype0║
while/lstm_cell_24/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
*while/lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_24_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0А
while/lstm_cell_24/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љъ
while/lstm_cell_24/addAddV2#while/lstm_cell_24/MatMul:product:0%while/lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:         љЏ
)while/lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_24_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0Д
while/lstm_cell_24/BiasAddBiasAddwhile/lstm_cell_24/add:z:01while/lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љd
"while/lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_24/splitSplit+while/lstm_cell_24/split/split_dim:output:0#while/lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitz
while/lstm_cell_24/SigmoidSigmoid!while/lstm_cell_24/split:output:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_24/Sigmoid_1Sigmoid!while/lstm_cell_24/split:output:1*
T0*'
_output_shapes
:         dє
while/lstm_cell_24/mulMul while/lstm_cell_24/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dt
while/lstm_cell_24/ReluRelu!while/lstm_cell_24/split:output:2*
T0*'
_output_shapes
:         dў
while/lstm_cell_24/mul_1Mulwhile/lstm_cell_24/Sigmoid:y:0%while/lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:         dЇ
while/lstm_cell_24/add_1AddV2while/lstm_cell_24/mul:z:0while/lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_24/Sigmoid_2Sigmoid!while/lstm_cell_24/split:output:3*
T0*'
_output_shapes
:         dq
while/lstm_cell_24/Relu_1Reluwhile/lstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:         dю
while/lstm_cell_24/mul_2Mul while/lstm_cell_24/Sigmoid_2:y:0'while/lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:         d┼
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_24/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_24/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dy
while/Identity_5Identitywhile/lstm_cell_24/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dл

while/NoOpNoOp*^while/lstm_cell_24/BiasAdd/ReadVariableOp)^while/lstm_cell_24/MatMul/ReadVariableOp+^while/lstm_cell_24/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"j
2while_lstm_cell_24_biasadd_readvariableop_resource4while_lstm_cell_24_biasadd_readvariableop_resource_0"l
3while_lstm_cell_24_matmul_1_readvariableop_resource5while_lstm_cell_24_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_24_matmul_readvariableop_resource3while_lstm_cell_24_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2V
)while/lstm_cell_24/BiasAdd/ReadVariableOp)while/lstm_cell_24/BiasAdd/ReadVariableOp2T
(while/lstm_cell_24/MatMul/ReadVariableOp(while/lstm_cell_24/MatMul/ReadVariableOp2X
*while/lstm_cell_24/MatMul_1/ReadVariableOp*while/lstm_cell_24/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
иB
л

lstm_24_while_body_194410,
(lstm_24_while_lstm_24_while_loop_counter2
.lstm_24_while_lstm_24_while_maximum_iterations
lstm_24_while_placeholder
lstm_24_while_placeholder_1
lstm_24_while_placeholder_2
lstm_24_while_placeholder_3+
'lstm_24_while_lstm_24_strided_slice_1_0g
clstm_24_while_tensorarrayv2read_tensorlistgetitem_lstm_24_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_24_while_lstm_cell_24_matmul_readvariableop_resource_0:		љP
=lstm_24_while_lstm_cell_24_matmul_1_readvariableop_resource_0:	dљK
<lstm_24_while_lstm_cell_24_biasadd_readvariableop_resource_0:	љ
lstm_24_while_identity
lstm_24_while_identity_1
lstm_24_while_identity_2
lstm_24_while_identity_3
lstm_24_while_identity_4
lstm_24_while_identity_5)
%lstm_24_while_lstm_24_strided_slice_1e
alstm_24_while_tensorarrayv2read_tensorlistgetitem_lstm_24_tensorarrayunstack_tensorlistfromtensorL
9lstm_24_while_lstm_cell_24_matmul_readvariableop_resource:		љN
;lstm_24_while_lstm_cell_24_matmul_1_readvariableop_resource:	dљI
:lstm_24_while_lstm_cell_24_biasadd_readvariableop_resource:	љѕб1lstm_24/while/lstm_cell_24/BiasAdd/ReadVariableOpб0lstm_24/while/lstm_cell_24/MatMul/ReadVariableOpб2lstm_24/while/lstm_cell_24/MatMul_1/ReadVariableOpљ
?lstm_24/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   ╬
1lstm_24/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_24_while_tensorarrayv2read_tensorlistgetitem_lstm_24_tensorarrayunstack_tensorlistfromtensor_0lstm_24_while_placeholderHlstm_24/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         	*
element_dtype0Г
0lstm_24/while/lstm_cell_24/MatMul/ReadVariableOpReadVariableOp;lstm_24_while_lstm_cell_24_matmul_readvariableop_resource_0*
_output_shapes
:		љ*
dtype0м
!lstm_24/while/lstm_cell_24/MatMulMatMul8lstm_24/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_24/while/lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ▒
2lstm_24/while/lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp=lstm_24_while_lstm_cell_24_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0╣
#lstm_24/while/lstm_cell_24/MatMul_1MatMullstm_24_while_placeholder_2:lstm_24/while/lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љХ
lstm_24/while/lstm_cell_24/addAddV2+lstm_24/while/lstm_cell_24/MatMul:product:0-lstm_24/while/lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:         љФ
1lstm_24/while/lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp<lstm_24_while_lstm_cell_24_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0┐
"lstm_24/while/lstm_cell_24/BiasAddBiasAdd"lstm_24/while/lstm_cell_24/add:z:09lstm_24/while/lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љl
*lstm_24/while/lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Є
 lstm_24/while/lstm_cell_24/splitSplit3lstm_24/while/lstm_cell_24/split/split_dim:output:0+lstm_24/while/lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitі
"lstm_24/while/lstm_cell_24/SigmoidSigmoid)lstm_24/while/lstm_cell_24/split:output:0*
T0*'
_output_shapes
:         dї
$lstm_24/while/lstm_cell_24/Sigmoid_1Sigmoid)lstm_24/while/lstm_cell_24/split:output:1*
T0*'
_output_shapes
:         dъ
lstm_24/while/lstm_cell_24/mulMul(lstm_24/while/lstm_cell_24/Sigmoid_1:y:0lstm_24_while_placeholder_3*
T0*'
_output_shapes
:         dё
lstm_24/while/lstm_cell_24/ReluRelu)lstm_24/while/lstm_cell_24/split:output:2*
T0*'
_output_shapes
:         d░
 lstm_24/while/lstm_cell_24/mul_1Mul&lstm_24/while/lstm_cell_24/Sigmoid:y:0-lstm_24/while/lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:         dЦ
 lstm_24/while/lstm_cell_24/add_1AddV2"lstm_24/while/lstm_cell_24/mul:z:0$lstm_24/while/lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:         dї
$lstm_24/while/lstm_cell_24/Sigmoid_2Sigmoid)lstm_24/while/lstm_cell_24/split:output:3*
T0*'
_output_shapes
:         dЂ
!lstm_24/while/lstm_cell_24/Relu_1Relu$lstm_24/while/lstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:         d┤
 lstm_24/while/lstm_cell_24/mul_2Mul(lstm_24/while/lstm_cell_24/Sigmoid_2:y:0/lstm_24/while/lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:         dт
2lstm_24/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_24_while_placeholder_1lstm_24_while_placeholder$lstm_24/while/lstm_cell_24/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмU
lstm_24/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_24/while/addAddV2lstm_24_while_placeholderlstm_24/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_24/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Є
lstm_24/while/add_1AddV2(lstm_24_while_lstm_24_while_loop_counterlstm_24/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_24/while/IdentityIdentitylstm_24/while/add_1:z:0^lstm_24/while/NoOp*
T0*
_output_shapes
: і
lstm_24/while/Identity_1Identity.lstm_24_while_lstm_24_while_maximum_iterations^lstm_24/while/NoOp*
T0*
_output_shapes
: q
lstm_24/while/Identity_2Identitylstm_24/while/add:z:0^lstm_24/while/NoOp*
T0*
_output_shapes
: ъ
lstm_24/while/Identity_3IdentityBlstm_24/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_24/while/NoOp*
T0*
_output_shapes
: Љ
lstm_24/while/Identity_4Identity$lstm_24/while/lstm_cell_24/mul_2:z:0^lstm_24/while/NoOp*
T0*'
_output_shapes
:         dЉ
lstm_24/while/Identity_5Identity$lstm_24/while/lstm_cell_24/add_1:z:0^lstm_24/while/NoOp*
T0*'
_output_shapes
:         d­
lstm_24/while/NoOpNoOp2^lstm_24/while/lstm_cell_24/BiasAdd/ReadVariableOp1^lstm_24/while/lstm_cell_24/MatMul/ReadVariableOp3^lstm_24/while/lstm_cell_24/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "=
lstm_24_while_identity_1!lstm_24/while/Identity_1:output:0"=
lstm_24_while_identity_2!lstm_24/while/Identity_2:output:0"=
lstm_24_while_identity_3!lstm_24/while/Identity_3:output:0"=
lstm_24_while_identity_4!lstm_24/while/Identity_4:output:0"=
lstm_24_while_identity_5!lstm_24/while/Identity_5:output:0"9
lstm_24_while_identitylstm_24/while/Identity:output:0"P
%lstm_24_while_lstm_24_strided_slice_1'lstm_24_while_lstm_24_strided_slice_1_0"z
:lstm_24_while_lstm_cell_24_biasadd_readvariableop_resource<lstm_24_while_lstm_cell_24_biasadd_readvariableop_resource_0"|
;lstm_24_while_lstm_cell_24_matmul_1_readvariableop_resource=lstm_24_while_lstm_cell_24_matmul_1_readvariableop_resource_0"x
9lstm_24_while_lstm_cell_24_matmul_readvariableop_resource;lstm_24_while_lstm_cell_24_matmul_readvariableop_resource_0"╚
alstm_24_while_tensorarrayv2read_tensorlistgetitem_lstm_24_tensorarrayunstack_tensorlistfromtensorclstm_24_while_tensorarrayv2read_tensorlistgetitem_lstm_24_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2f
1lstm_24/while/lstm_cell_24/BiasAdd/ReadVariableOp1lstm_24/while/lstm_cell_24/BiasAdd/ReadVariableOp2d
0lstm_24/while/lstm_cell_24/MatMul/ReadVariableOp0lstm_24/while/lstm_cell_24/MatMul/ReadVariableOp2h
2lstm_24/while/lstm_cell_24/MatMul_1/ReadVariableOp2lstm_24/while/lstm_cell_24/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :XT

_output_shapes
: 
:
_user_specified_name" lstm_24/while/maximum_iterations:R N

_output_shapes
: 
4
_user_specified_namelstm_24/while/loop_counter
┼K
Џ
C__inference_lstm_25_layer_call_and_return_conditional_losses_195745

inputs>
+lstm_cell_25_matmul_readvariableop_resource:	dљ@
-lstm_cell_25_matmul_1_readvariableop_resource:	dљ;
,lstm_cell_25_biasadd_readvariableop_resource:	љ
identityѕб#lstm_cell_25/BiasAdd/ReadVariableOpб"lstm_cell_25/MatMul/ReadVariableOpб$lstm_cell_25/MatMul_1/ReadVariableOpбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         dR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskЈ
"lstm_cell_25/MatMul/ReadVariableOpReadVariableOp+lstm_cell_25_matmul_readvariableop_resource*
_output_shapes
:	dљ*
dtype0ќ
lstm_cell_25/MatMulMatMulstrided_slice_2:output:0*lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЊ
$lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_25_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0љ
lstm_cell_25/MatMul_1MatMulzeros:output:0,lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љї
lstm_cell_25/addAddV2lstm_cell_25/MatMul:product:0lstm_cell_25/MatMul_1:product:0*
T0*(
_output_shapes
:         љЇ
#lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_25_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0Ћ
lstm_cell_25/BiasAddBiasAddlstm_cell_25/add:z:0+lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ^
lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_cell_25/splitSplit%lstm_cell_25/split/split_dim:output:0lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitn
lstm_cell_25/SigmoidSigmoidlstm_cell_25/split:output:0*
T0*'
_output_shapes
:         dp
lstm_cell_25/Sigmoid_1Sigmoidlstm_cell_25/split:output:1*
T0*'
_output_shapes
:         dw
lstm_cell_25/mulMullstm_cell_25/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dh
lstm_cell_25/ReluRelulstm_cell_25/split:output:2*
T0*'
_output_shapes
:         dє
lstm_cell_25/mul_1Mullstm_cell_25/Sigmoid:y:0lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:         d{
lstm_cell_25/add_1AddV2lstm_cell_25/mul:z:0lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:         dp
lstm_cell_25/Sigmoid_2Sigmoidlstm_cell_25/split:output:3*
T0*'
_output_shapes
:         de
lstm_cell_25/Relu_1Relulstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:         dі
lstm_cell_25/mul_2Mullstm_cell_25/Sigmoid_2:y:0!lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ѓ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_25_matmul_readvariableop_resource-lstm_cell_25_matmul_1_readvariableop_resource,lstm_cell_25_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_195660*
condR
while_cond_195659*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         d└
NoOpNoOp$^lstm_cell_25/BiasAdd/ReadVariableOp#^lstm_cell_25/MatMul/ReadVariableOp%^lstm_cell_25/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2J
#lstm_cell_25/BiasAdd/ReadVariableOp#lstm_cell_25/BiasAdd/ReadVariableOp2H
"lstm_cell_25/MatMul/ReadVariableOp"lstm_cell_25/MatMul/ReadVariableOp2L
$lstm_cell_25/MatMul_1/ReadVariableOp$lstm_cell_25/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
Ќ	
├
while_cond_193116
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_193116___redundant_placeholder04
0while_while_cond_193116___redundant_placeholder14
0while_while_cond_193116___redundant_placeholder24
0while_while_cond_193116___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Љ

Щ
$__inference_signature_wrapper_193995
lstm_24_input
unknown:		љ
	unknown_0:	dљ
	unknown_1:	љ
	unknown_2:	dљ
	unknown_3:	dљ
	unknown_4:	љ
	unknown_5:d
	unknown_6:
	unknown_7:
	unknown_8:
identityѕбStatefulPartitionedCallЦ
StatefulPartitionedCallStatefulPartitionedCalllstm_24_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8ѓ **
f%R#
!__inference__wrapped_model_192351o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         	: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:         	
'
_user_specified_namelstm_24_input
Ў9
Ё
C__inference_lstm_25_layer_call_and_return_conditional_losses_192997

inputs&
lstm_cell_25_192913:	dљ&
lstm_cell_25_192915:	dљ"
lstm_cell_25_192917:	љ
identityѕб$lstm_cell_25/StatefulPartitionedCallбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  dR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskш
$lstm_cell_25/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_25_192913lstm_cell_25_192915lstm_cell_25_192917*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_lstm_cell_25_layer_call_and_return_conditional_losses_192912n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : и
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_25_192913lstm_cell_25_192915lstm_cell_25_192917*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_192927*
condR
while_cond_192926*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         du
NoOpNoOp%^lstm_cell_25/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2L
$lstm_cell_25/StatefulPartitionedCall$lstm_cell_25/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs
Н
ё
H__inference_lstm_cell_25_layer_call_and_return_conditional_losses_192912

inputs

states
states_11
matmul_readvariableop_resource:	dљ3
 matmul_1_readvariableop_resource:	dљ.
biasadd_readvariableop_resource:	љ
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dљ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         љs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:         d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         dЉ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         d:         d:         d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:OK
'
_output_shapes
:         d
 
_user_specified_namestates:OK
'
_output_shapes
:         d
 
_user_specified_namestates:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
Ќ	
├
while_cond_195659
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_195659___redundant_placeholder04
0while_while_cond_195659___redundant_placeholder14
0while_while_cond_195659___redundant_placeholder24
0while_while_cond_195659___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Ў9
Ё
C__inference_lstm_25_layer_call_and_return_conditional_losses_192850

inputs&
lstm_cell_25_192766:	dљ&
lstm_cell_25_192768:	dљ"
lstm_cell_25_192770:	љ
identityѕб$lstm_cell_25/StatefulPartitionedCallбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  dR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskш
$lstm_cell_25/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_25_192766lstm_cell_25_192768lstm_cell_25_192770*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_lstm_cell_25_layer_call_and_return_conditional_losses_192765n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : и
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_25_192766lstm_cell_25_192768lstm_cell_25_192770*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_192780*
condR
while_cond_192779*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         du
NoOpNoOp%^lstm_cell_25/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2L
$lstm_cell_25/StatefulPartitionedCall$lstm_cell_25/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs
э
х
(__inference_lstm_25_layer_call_fn_195299

inputs
unknown:	dљ
	unknown_0:	dљ
	unknown_1:	љ
identityѕбStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_lstm_25_layer_call_and_return_conditional_losses_193353o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
Ы
В
I__inference_sequential_12_layer_call_and_return_conditional_losses_193410
lstm_24_input!
lstm_24_193202:		љ!
lstm_24_193204:	dљ
lstm_24_193206:	љ!
lstm_25_193354:	dљ!
lstm_25_193356:	dљ
lstm_25_193358:	љ!
dense_24_193387:d
dense_24_193389:!
dense_25_193404:
dense_25_193406:
identityѕб dense_24/StatefulPartitionedCallб dense_25/StatefulPartitionedCallб"dropout_12/StatefulPartitionedCallбlstm_24/StatefulPartitionedCallбlstm_25/StatefulPartitionedCallЅ
lstm_24/StatefulPartitionedCallStatefulPartitionedCalllstm_24_inputlstm_24_193202lstm_24_193204lstm_24_193206*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_lstm_24_layer_call_and_return_conditional_losses_193201а
lstm_25/StatefulPartitionedCallStatefulPartitionedCall(lstm_24/StatefulPartitionedCall:output:0lstm_25_193354lstm_25_193356lstm_25_193358*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_lstm_25_layer_call_and_return_conditional_losses_193353Ь
"dropout_12/StatefulPartitionedCallStatefulPartitionedCall(lstm_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dropout_12_layer_call_and_return_conditional_losses_193373Ћ
 dense_24/StatefulPartitionedCallStatefulPartitionedCall+dropout_12/StatefulPartitionedCall:output:0dense_24_193387dense_24_193389*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_dense_24_layer_call_and_return_conditional_losses_193386Њ
 dense_25/StatefulPartitionedCallStatefulPartitionedCall)dense_24/StatefulPartitionedCall:output:0dense_25_193404dense_25_193406*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_dense_25_layer_call_and_return_conditional_losses_193403x
IdentityIdentity)dense_25/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ш
NoOpNoOp!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall#^dropout_12/StatefulPartitionedCall ^lstm_24/StatefulPartitionedCall ^lstm_25/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         	: : : : : : : : : : 2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2H
"dropout_12/StatefulPartitionedCall"dropout_12/StatefulPartitionedCall2B
lstm_24/StatefulPartitionedCalllstm_24/StatefulPartitionedCall2B
lstm_25/StatefulPartitionedCalllstm_25/StatefulPartitionedCall:Z V
+
_output_shapes
:         	
'
_user_specified_namelstm_24_input
┘
d
F__inference_dropout_12_layer_call_and_return_conditional_losses_195917

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:         d[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         d"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         d:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
Ќ	
├
while_cond_195514
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_195514___redundant_placeholder04
0while_while_cond_195514___redundant_placeholder14
0while_while_cond_195514___redundant_placeholder24
0while_while_cond_195514___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Ќ	
├
while_cond_193267
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_193267___redundant_placeholder04
0while_while_cond_193267___redundant_placeholder14
0while_while_cond_193267___redundant_placeholder24
0while_while_cond_193267___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Ь8
л
while_body_195182
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_24_matmul_readvariableop_resource_0:		љH
5while_lstm_cell_24_matmul_1_readvariableop_resource_0:	dљC
4while_lstm_cell_24_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_24_matmul_readvariableop_resource:		љF
3while_lstm_cell_24_matmul_1_readvariableop_resource:	dљA
2while_lstm_cell_24_biasadd_readvariableop_resource:	љѕб)while/lstm_cell_24/BiasAdd/ReadVariableOpб(while/lstm_cell_24/MatMul/ReadVariableOpб*while/lstm_cell_24/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         	*
element_dtype0Ю
(while/lstm_cell_24/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_24_matmul_readvariableop_resource_0*
_output_shapes
:		љ*
dtype0║
while/lstm_cell_24/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
*while/lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_24_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0А
while/lstm_cell_24/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љъ
while/lstm_cell_24/addAddV2#while/lstm_cell_24/MatMul:product:0%while/lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:         љЏ
)while/lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_24_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0Д
while/lstm_cell_24/BiasAddBiasAddwhile/lstm_cell_24/add:z:01while/lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љd
"while/lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_24/splitSplit+while/lstm_cell_24/split/split_dim:output:0#while/lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitz
while/lstm_cell_24/SigmoidSigmoid!while/lstm_cell_24/split:output:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_24/Sigmoid_1Sigmoid!while/lstm_cell_24/split:output:1*
T0*'
_output_shapes
:         dє
while/lstm_cell_24/mulMul while/lstm_cell_24/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dt
while/lstm_cell_24/ReluRelu!while/lstm_cell_24/split:output:2*
T0*'
_output_shapes
:         dў
while/lstm_cell_24/mul_1Mulwhile/lstm_cell_24/Sigmoid:y:0%while/lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:         dЇ
while/lstm_cell_24/add_1AddV2while/lstm_cell_24/mul:z:0while/lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_24/Sigmoid_2Sigmoid!while/lstm_cell_24/split:output:3*
T0*'
_output_shapes
:         dq
while/lstm_cell_24/Relu_1Reluwhile/lstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:         dю
while/lstm_cell_24/mul_2Mul while/lstm_cell_24/Sigmoid_2:y:0'while/lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:         d┼
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_24/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_24/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dy
while/Identity_5Identitywhile/lstm_cell_24/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dл

while/NoOpNoOp*^while/lstm_cell_24/BiasAdd/ReadVariableOp)^while/lstm_cell_24/MatMul/ReadVariableOp+^while/lstm_cell_24/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"j
2while_lstm_cell_24_biasadd_readvariableop_resource4while_lstm_cell_24_biasadd_readvariableop_resource_0"l
3while_lstm_cell_24_matmul_1_readvariableop_resource5while_lstm_cell_24_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_24_matmul_readvariableop_resource3while_lstm_cell_24_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2V
)while/lstm_cell_24/BiasAdd/ReadVariableOp)while/lstm_cell_24/BiasAdd/ReadVariableOp2T
(while/lstm_cell_24/MatMul/ReadVariableOp(while/lstm_cell_24/MatMul/ReadVariableOp2X
*while/lstm_cell_24/MatMul_1/ReadVariableOp*while/lstm_cell_24/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
С$
с
while_body_192780
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_25_192804_0:	dљ.
while_lstm_cell_25_192806_0:	dљ*
while_lstm_cell_25_192808_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_25_192804:	dљ,
while_lstm_cell_25_192806:	dљ(
while_lstm_cell_25_192808:	љѕб*while/lstm_cell_25/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0│
*while/lstm_cell_25/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_25_192804_0while_lstm_cell_25_192806_0while_lstm_cell_25_192808_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_lstm_cell_25_layer_call_and_return_conditional_losses_192765r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ё
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:03while/lstm_cell_25/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: љ
while/Identity_4Identity3while/lstm_cell_25/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         dљ
while/Identity_5Identity3while/lstm_cell_25/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         dy

while/NoOpNoOp+^while/lstm_cell_25/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"8
while_lstm_cell_25_192804while_lstm_cell_25_192804_0"8
while_lstm_cell_25_192806while_lstm_cell_25_192806_0"8
while_lstm_cell_25_192808while_lstm_cell_25_192808_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_25/StatefulPartitionedCall*while/lstm_cell_25/StatefulPartitionedCall:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
УK
Ю
C__inference_lstm_25_layer_call_and_return_conditional_losses_195600
inputs_0>
+lstm_cell_25_matmul_readvariableop_resource:	dљ@
-lstm_cell_25_matmul_1_readvariableop_resource:	dљ;
,lstm_cell_25_biasadd_readvariableop_resource:	љ
identityѕб#lstm_cell_25/BiasAdd/ReadVariableOpб"lstm_cell_25/MatMul/ReadVariableOpб$lstm_cell_25/MatMul_1/ReadVariableOpбwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  dR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskЈ
"lstm_cell_25/MatMul/ReadVariableOpReadVariableOp+lstm_cell_25_matmul_readvariableop_resource*
_output_shapes
:	dљ*
dtype0ќ
lstm_cell_25/MatMulMatMulstrided_slice_2:output:0*lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЊ
$lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_25_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0љ
lstm_cell_25/MatMul_1MatMulzeros:output:0,lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љї
lstm_cell_25/addAddV2lstm_cell_25/MatMul:product:0lstm_cell_25/MatMul_1:product:0*
T0*(
_output_shapes
:         љЇ
#lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_25_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0Ћ
lstm_cell_25/BiasAddBiasAddlstm_cell_25/add:z:0+lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ^
lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_cell_25/splitSplit%lstm_cell_25/split/split_dim:output:0lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitn
lstm_cell_25/SigmoidSigmoidlstm_cell_25/split:output:0*
T0*'
_output_shapes
:         dp
lstm_cell_25/Sigmoid_1Sigmoidlstm_cell_25/split:output:1*
T0*'
_output_shapes
:         dw
lstm_cell_25/mulMullstm_cell_25/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dh
lstm_cell_25/ReluRelulstm_cell_25/split:output:2*
T0*'
_output_shapes
:         dє
lstm_cell_25/mul_1Mullstm_cell_25/Sigmoid:y:0lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:         d{
lstm_cell_25/add_1AddV2lstm_cell_25/mul:z:0lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:         dp
lstm_cell_25/Sigmoid_2Sigmoidlstm_cell_25/split:output:3*
T0*'
_output_shapes
:         de
lstm_cell_25/Relu_1Relulstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:         dі
lstm_cell_25/mul_2Mullstm_cell_25/Sigmoid_2:y:0!lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ѓ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_25_matmul_readvariableop_resource-lstm_cell_25_matmul_1_readvariableop_resource,lstm_cell_25_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_195515*
condR
while_cond_195514*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         d└
NoOpNoOp$^lstm_cell_25/BiasAdd/ReadVariableOp#^lstm_cell_25/MatMul/ReadVariableOp%^lstm_cell_25/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2J
#lstm_cell_25/BiasAdd/ReadVariableOp#lstm_cell_25/BiasAdd/ReadVariableOp2H
"lstm_cell_25/MatMul/ReadVariableOp"lstm_cell_25/MatMul/ReadVariableOp2L
$lstm_cell_25/MatMul_1/ReadVariableOp$lstm_cell_25/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs_0
в
Ш
-__inference_lstm_cell_24_layer_call_fn_195974

inputs
states_0
states_1
unknown:		љ
	unknown_0:	dљ
	unknown_1:	љ
identity

identity_1

identity_2ѕбStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_lstm_cell_24_layer_call_and_return_conditional_losses_192415o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         	:         d:         d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:QM
'
_output_shapes
:         d
"
_user_specified_name
states_1:QM
'
_output_shapes
:         d
"
_user_specified_name
states_0:O K
'
_output_shapes
:         	
 
_user_specified_nameinputs
┐J
Џ
C__inference_lstm_24_layer_call_and_return_conditional_losses_193555

inputs>
+lstm_cell_24_matmul_readvariableop_resource:		љ@
-lstm_cell_24_matmul_1_readvariableop_resource:	dљ;
,lstm_cell_24_biasadd_readvariableop_resource:	љ
identityѕб#lstm_cell_24/BiasAdd/ReadVariableOpб"lstm_cell_24/MatMul/ReadVariableOpб$lstm_cell_24/MatMul_1/ReadVariableOpбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         	R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         	*
shrink_axis_maskЈ
"lstm_cell_24/MatMul/ReadVariableOpReadVariableOp+lstm_cell_24_matmul_readvariableop_resource*
_output_shapes
:		љ*
dtype0ќ
lstm_cell_24/MatMulMatMulstrided_slice_2:output:0*lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЊ
$lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_24_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0љ
lstm_cell_24/MatMul_1MatMulzeros:output:0,lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љї
lstm_cell_24/addAddV2lstm_cell_24/MatMul:product:0lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:         љЇ
#lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_24_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0Ћ
lstm_cell_24/BiasAddBiasAddlstm_cell_24/add:z:0+lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ^
lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_cell_24/splitSplit%lstm_cell_24/split/split_dim:output:0lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitn
lstm_cell_24/SigmoidSigmoidlstm_cell_24/split:output:0*
T0*'
_output_shapes
:         dp
lstm_cell_24/Sigmoid_1Sigmoidlstm_cell_24/split:output:1*
T0*'
_output_shapes
:         dw
lstm_cell_24/mulMullstm_cell_24/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dh
lstm_cell_24/ReluRelulstm_cell_24/split:output:2*
T0*'
_output_shapes
:         dє
lstm_cell_24/mul_1Mullstm_cell_24/Sigmoid:y:0lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:         d{
lstm_cell_24/add_1AddV2lstm_cell_24/mul:z:0lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:         dp
lstm_cell_24/Sigmoid_2Sigmoidlstm_cell_24/split:output:3*
T0*'
_output_shapes
:         de
lstm_cell_24/Relu_1Relulstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:         dі
lstm_cell_24/mul_2Mullstm_cell_24/Sigmoid_2:y:0!lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ѓ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_24_matmul_readvariableop_resource-lstm_cell_24_matmul_1_readvariableop_resource,lstm_cell_24_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_193471*
condR
while_cond_193470*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         d└
NoOpNoOp$^lstm_cell_24/BiasAdd/ReadVariableOp#^lstm_cell_24/MatMul/ReadVariableOp%^lstm_cell_24/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         	: : : 2J
#lstm_cell_24/BiasAdd/ReadVariableOp#lstm_cell_24/BiasAdd/ReadVariableOp2H
"lstm_cell_24/MatMul/ReadVariableOp"lstm_cell_24/MatMul/ReadVariableOp2L
$lstm_cell_24/MatMul_1/ReadVariableOp$lstm_cell_24/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
в
Ш
-__inference_lstm_cell_24_layer_call_fn_195991

inputs
states_0
states_1
unknown:		љ
	unknown_0:	dљ
	unknown_1:	љ
identity

identity_1

identity_2ѕбStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_lstm_cell_24_layer_call_and_return_conditional_losses_192560o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         	:         d:         d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:QM
'
_output_shapes
:         d
"
_user_specified_name
states_1:QM
'
_output_shapes
:         d
"
_user_specified_name
states_0:O K
'
_output_shapes
:         	
 
_user_specified_nameinputs
кT
њ
'sequential_12_lstm_25_while_body_192251H
Dsequential_12_lstm_25_while_sequential_12_lstm_25_while_loop_counterN
Jsequential_12_lstm_25_while_sequential_12_lstm_25_while_maximum_iterations+
'sequential_12_lstm_25_while_placeholder-
)sequential_12_lstm_25_while_placeholder_1-
)sequential_12_lstm_25_while_placeholder_2-
)sequential_12_lstm_25_while_placeholder_3G
Csequential_12_lstm_25_while_sequential_12_lstm_25_strided_slice_1_0Ѓ
sequential_12_lstm_25_while_tensorarrayv2read_tensorlistgetitem_sequential_12_lstm_25_tensorarrayunstack_tensorlistfromtensor_0\
Isequential_12_lstm_25_while_lstm_cell_25_matmul_readvariableop_resource_0:	dљ^
Ksequential_12_lstm_25_while_lstm_cell_25_matmul_1_readvariableop_resource_0:	dљY
Jsequential_12_lstm_25_while_lstm_cell_25_biasadd_readvariableop_resource_0:	љ(
$sequential_12_lstm_25_while_identity*
&sequential_12_lstm_25_while_identity_1*
&sequential_12_lstm_25_while_identity_2*
&sequential_12_lstm_25_while_identity_3*
&sequential_12_lstm_25_while_identity_4*
&sequential_12_lstm_25_while_identity_5E
Asequential_12_lstm_25_while_sequential_12_lstm_25_strided_slice_1Ђ
}sequential_12_lstm_25_while_tensorarrayv2read_tensorlistgetitem_sequential_12_lstm_25_tensorarrayunstack_tensorlistfromtensorZ
Gsequential_12_lstm_25_while_lstm_cell_25_matmul_readvariableop_resource:	dљ\
Isequential_12_lstm_25_while_lstm_cell_25_matmul_1_readvariableop_resource:	dљW
Hsequential_12_lstm_25_while_lstm_cell_25_biasadd_readvariableop_resource:	љѕб?sequential_12/lstm_25/while/lstm_cell_25/BiasAdd/ReadVariableOpб>sequential_12/lstm_25/while/lstm_cell_25/MatMul/ReadVariableOpб@sequential_12/lstm_25/while/lstm_cell_25/MatMul_1/ReadVariableOpъ
Msequential_12/lstm_25/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ћ
?sequential_12/lstm_25/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_12_lstm_25_while_tensorarrayv2read_tensorlistgetitem_sequential_12_lstm_25_tensorarrayunstack_tensorlistfromtensor_0'sequential_12_lstm_25_while_placeholderVsequential_12/lstm_25/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0╔
>sequential_12/lstm_25/while/lstm_cell_25/MatMul/ReadVariableOpReadVariableOpIsequential_12_lstm_25_while_lstm_cell_25_matmul_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Ч
/sequential_12/lstm_25/while/lstm_cell_25/MatMulMatMulFsequential_12/lstm_25/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_12/lstm_25/while/lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ═
@sequential_12/lstm_25/while/lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOpKsequential_12_lstm_25_while_lstm_cell_25_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0с
1sequential_12/lstm_25/while/lstm_cell_25/MatMul_1MatMul)sequential_12_lstm_25_while_placeholder_2Hsequential_12/lstm_25/while/lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЯ
,sequential_12/lstm_25/while/lstm_cell_25/addAddV29sequential_12/lstm_25/while/lstm_cell_25/MatMul:product:0;sequential_12/lstm_25/while/lstm_cell_25/MatMul_1:product:0*
T0*(
_output_shapes
:         љК
?sequential_12/lstm_25/while/lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOpJsequential_12_lstm_25_while_lstm_cell_25_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ж
0sequential_12/lstm_25/while/lstm_cell_25/BiasAddBiasAdd0sequential_12/lstm_25/while/lstm_cell_25/add:z:0Gsequential_12/lstm_25/while/lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љz
8sequential_12/lstm_25/while/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▒
.sequential_12/lstm_25/while/lstm_cell_25/splitSplitAsequential_12/lstm_25/while/lstm_cell_25/split/split_dim:output:09sequential_12/lstm_25/while/lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitд
0sequential_12/lstm_25/while/lstm_cell_25/SigmoidSigmoid7sequential_12/lstm_25/while/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:         dе
2sequential_12/lstm_25/while/lstm_cell_25/Sigmoid_1Sigmoid7sequential_12/lstm_25/while/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:         d╚
,sequential_12/lstm_25/while/lstm_cell_25/mulMul6sequential_12/lstm_25/while/lstm_cell_25/Sigmoid_1:y:0)sequential_12_lstm_25_while_placeholder_3*
T0*'
_output_shapes
:         dа
-sequential_12/lstm_25/while/lstm_cell_25/ReluRelu7sequential_12/lstm_25/while/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:         d┌
.sequential_12/lstm_25/while/lstm_cell_25/mul_1Mul4sequential_12/lstm_25/while/lstm_cell_25/Sigmoid:y:0;sequential_12/lstm_25/while/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:         d¤
.sequential_12/lstm_25/while/lstm_cell_25/add_1AddV20sequential_12/lstm_25/while/lstm_cell_25/mul:z:02sequential_12/lstm_25/while/lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:         dе
2sequential_12/lstm_25/while/lstm_cell_25/Sigmoid_2Sigmoid7sequential_12/lstm_25/while/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:         dЮ
/sequential_12/lstm_25/while/lstm_cell_25/Relu_1Relu2sequential_12/lstm_25/while/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:         dя
.sequential_12/lstm_25/while/lstm_cell_25/mul_2Mul6sequential_12/lstm_25/while/lstm_cell_25/Sigmoid_2:y:0=sequential_12/lstm_25/while/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:         dѕ
Fsequential_12/lstm_25/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ┼
@sequential_12/lstm_25/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_12_lstm_25_while_placeholder_1Osequential_12/lstm_25/while/TensorArrayV2Write/TensorListSetItem/index:output:02sequential_12/lstm_25/while/lstm_cell_25/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмc
!sequential_12/lstm_25/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ъ
sequential_12/lstm_25/while/addAddV2'sequential_12_lstm_25_while_placeholder*sequential_12/lstm_25/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_12/lstm_25/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :┐
!sequential_12/lstm_25/while/add_1AddV2Dsequential_12_lstm_25_while_sequential_12_lstm_25_while_loop_counter,sequential_12/lstm_25/while/add_1/y:output:0*
T0*
_output_shapes
: Џ
$sequential_12/lstm_25/while/IdentityIdentity%sequential_12/lstm_25/while/add_1:z:0!^sequential_12/lstm_25/while/NoOp*
T0*
_output_shapes
: ┬
&sequential_12/lstm_25/while/Identity_1IdentityJsequential_12_lstm_25_while_sequential_12_lstm_25_while_maximum_iterations!^sequential_12/lstm_25/while/NoOp*
T0*
_output_shapes
: Џ
&sequential_12/lstm_25/while/Identity_2Identity#sequential_12/lstm_25/while/add:z:0!^sequential_12/lstm_25/while/NoOp*
T0*
_output_shapes
: ╚
&sequential_12/lstm_25/while/Identity_3IdentityPsequential_12/lstm_25/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_12/lstm_25/while/NoOp*
T0*
_output_shapes
: ╗
&sequential_12/lstm_25/while/Identity_4Identity2sequential_12/lstm_25/while/lstm_cell_25/mul_2:z:0!^sequential_12/lstm_25/while/NoOp*
T0*'
_output_shapes
:         d╗
&sequential_12/lstm_25/while/Identity_5Identity2sequential_12/lstm_25/while/lstm_cell_25/add_1:z:0!^sequential_12/lstm_25/while/NoOp*
T0*'
_output_shapes
:         dе
 sequential_12/lstm_25/while/NoOpNoOp@^sequential_12/lstm_25/while/lstm_cell_25/BiasAdd/ReadVariableOp?^sequential_12/lstm_25/while/lstm_cell_25/MatMul/ReadVariableOpA^sequential_12/lstm_25/while/lstm_cell_25/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_12_lstm_25_while_identity_1/sequential_12/lstm_25/while/Identity_1:output:0"Y
&sequential_12_lstm_25_while_identity_2/sequential_12/lstm_25/while/Identity_2:output:0"Y
&sequential_12_lstm_25_while_identity_3/sequential_12/lstm_25/while/Identity_3:output:0"Y
&sequential_12_lstm_25_while_identity_4/sequential_12/lstm_25/while/Identity_4:output:0"Y
&sequential_12_lstm_25_while_identity_5/sequential_12/lstm_25/while/Identity_5:output:0"U
$sequential_12_lstm_25_while_identity-sequential_12/lstm_25/while/Identity:output:0"ќ
Hsequential_12_lstm_25_while_lstm_cell_25_biasadd_readvariableop_resourceJsequential_12_lstm_25_while_lstm_cell_25_biasadd_readvariableop_resource_0"ў
Isequential_12_lstm_25_while_lstm_cell_25_matmul_1_readvariableop_resourceKsequential_12_lstm_25_while_lstm_cell_25_matmul_1_readvariableop_resource_0"ћ
Gsequential_12_lstm_25_while_lstm_cell_25_matmul_readvariableop_resourceIsequential_12_lstm_25_while_lstm_cell_25_matmul_readvariableop_resource_0"ѕ
Asequential_12_lstm_25_while_sequential_12_lstm_25_strided_slice_1Csequential_12_lstm_25_while_sequential_12_lstm_25_strided_slice_1_0"ђ
}sequential_12_lstm_25_while_tensorarrayv2read_tensorlistgetitem_sequential_12_lstm_25_tensorarrayunstack_tensorlistfromtensorsequential_12_lstm_25_while_tensorarrayv2read_tensorlistgetitem_sequential_12_lstm_25_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2ѓ
?sequential_12/lstm_25/while/lstm_cell_25/BiasAdd/ReadVariableOp?sequential_12/lstm_25/while/lstm_cell_25/BiasAdd/ReadVariableOp2ђ
>sequential_12/lstm_25/while/lstm_cell_25/MatMul/ReadVariableOp>sequential_12/lstm_25/while/lstm_cell_25/MatMul/ReadVariableOp2ё
@sequential_12/lstm_25/while/lstm_cell_25/MatMul_1/ReadVariableOp@sequential_12/lstm_25/while/lstm_cell_25/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :fb

_output_shapes
: 
H
_user_specified_name0.sequential_12/lstm_25/while/maximum_iterations:` \

_output_shapes
: 
B
_user_specified_name*(sequential_12/lstm_25/while/loop_counter
і:
л
while_body_193622
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_25_matmul_readvariableop_resource_0:	dљH
5while_lstm_cell_25_matmul_1_readvariableop_resource_0:	dљC
4while_lstm_cell_25_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_25_matmul_readvariableop_resource:	dљF
3while_lstm_cell_25_matmul_1_readvariableop_resource:	dљA
2while_lstm_cell_25_biasadd_readvariableop_resource:	љѕб)while/lstm_cell_25/BiasAdd/ReadVariableOpб(while/lstm_cell_25/MatMul/ReadVariableOpб*while/lstm_cell_25/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ю
(while/lstm_cell_25/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_25_matmul_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0║
while/lstm_cell_25/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
*while/lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_25_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0А
while/lstm_cell_25/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љъ
while/lstm_cell_25/addAddV2#while/lstm_cell_25/MatMul:product:0%while/lstm_cell_25/MatMul_1:product:0*
T0*(
_output_shapes
:         љЏ
)while/lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_25_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0Д
while/lstm_cell_25/BiasAddBiasAddwhile/lstm_cell_25/add:z:01while/lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љd
"while/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_25/splitSplit+while/lstm_cell_25/split/split_dim:output:0#while/lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitz
while/lstm_cell_25/SigmoidSigmoid!while/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_25/Sigmoid_1Sigmoid!while/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:         dє
while/lstm_cell_25/mulMul while/lstm_cell_25/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dt
while/lstm_cell_25/ReluRelu!while/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:         dў
while/lstm_cell_25/mul_1Mulwhile/lstm_cell_25/Sigmoid:y:0%while/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:         dЇ
while/lstm_cell_25/add_1AddV2while/lstm_cell_25/mul:z:0while/lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_25/Sigmoid_2Sigmoid!while/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:         dq
while/lstm_cell_25/Relu_1Reluwhile/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:         dю
while/lstm_cell_25/mul_2Mul while/lstm_cell_25/Sigmoid_2:y:0'while/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:         dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ь
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_25/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_25/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dy
while/Identity_5Identitywhile/lstm_cell_25/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dл

while/NoOpNoOp*^while/lstm_cell_25/BiasAdd/ReadVariableOp)^while/lstm_cell_25/MatMul/ReadVariableOp+^while/lstm_cell_25/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"j
2while_lstm_cell_25_biasadd_readvariableop_resource4while_lstm_cell_25_biasadd_readvariableop_resource_0"l
3while_lstm_cell_25_matmul_1_readvariableop_resource5while_lstm_cell_25_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_25_matmul_readvariableop_resource3while_lstm_cell_25_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2V
)while/lstm_cell_25/BiasAdd/ReadVariableOp)while/lstm_cell_25/BiasAdd/ReadVariableOp2T
(while/lstm_cell_25/MatMul/ReadVariableOp(while/lstm_cell_25/MatMul/ReadVariableOp2X
*while/lstm_cell_25/MatMul_1/ReadVariableOp*while/lstm_cell_25/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
▓і
▀"
__inference__traced_save_196392
file_prefix8
&read_disablecopyonread_dense_24_kernel:d4
&read_1_disablecopyonread_dense_24_bias::
(read_2_disablecopyonread_dense_25_kernel:4
&read_3_disablecopyonread_dense_25_bias:G
4read_4_disablecopyonread_lstm_24_lstm_cell_24_kernel:		љQ
>read_5_disablecopyonread_lstm_24_lstm_cell_24_recurrent_kernel:	dљA
2read_6_disablecopyonread_lstm_24_lstm_cell_24_bias:	љG
4read_7_disablecopyonread_lstm_25_lstm_cell_25_kernel:	dљQ
>read_8_disablecopyonread_lstm_25_lstm_cell_25_recurrent_kernel:	dљA
2read_9_disablecopyonread_lstm_25_lstm_cell_25_bias:	љ-
#read_10_disablecopyonread_iteration:	 1
'read_11_disablecopyonread_learning_rate: O
<read_12_disablecopyonread_adam_m_lstm_24_lstm_cell_24_kernel:		љO
<read_13_disablecopyonread_adam_v_lstm_24_lstm_cell_24_kernel:		љY
Fread_14_disablecopyonread_adam_m_lstm_24_lstm_cell_24_recurrent_kernel:	dљY
Fread_15_disablecopyonread_adam_v_lstm_24_lstm_cell_24_recurrent_kernel:	dљI
:read_16_disablecopyonread_adam_m_lstm_24_lstm_cell_24_bias:	љI
:read_17_disablecopyonread_adam_v_lstm_24_lstm_cell_24_bias:	љO
<read_18_disablecopyonread_adam_m_lstm_25_lstm_cell_25_kernel:	dљO
<read_19_disablecopyonread_adam_v_lstm_25_lstm_cell_25_kernel:	dљY
Fread_20_disablecopyonread_adam_m_lstm_25_lstm_cell_25_recurrent_kernel:	dљY
Fread_21_disablecopyonread_adam_v_lstm_25_lstm_cell_25_recurrent_kernel:	dљI
:read_22_disablecopyonread_adam_m_lstm_25_lstm_cell_25_bias:	љI
:read_23_disablecopyonread_adam_v_lstm_25_lstm_cell_25_bias:	љB
0read_24_disablecopyonread_adam_m_dense_24_kernel:dB
0read_25_disablecopyonread_adam_v_dense_24_kernel:d<
.read_26_disablecopyonread_adam_m_dense_24_bias:<
.read_27_disablecopyonread_adam_v_dense_24_bias:B
0read_28_disablecopyonread_adam_m_dense_25_kernel:B
0read_29_disablecopyonread_adam_v_dense_25_kernel:<
.read_30_disablecopyonread_adam_m_dense_25_bias:<
.read_31_disablecopyonread_adam_v_dense_25_bias:+
!read_32_disablecopyonread_total_1: +
!read_33_disablecopyonread_count_1: )
read_34_disablecopyonread_total: )
read_35_disablecopyonread_count: 
savev2_const
identity_73ѕбMergeV2CheckpointsбRead/DisableCopyOnReadбRead/ReadVariableOpбRead_1/DisableCopyOnReadбRead_1/ReadVariableOpбRead_10/DisableCopyOnReadбRead_10/ReadVariableOpбRead_11/DisableCopyOnReadбRead_11/ReadVariableOpбRead_12/DisableCopyOnReadбRead_12/ReadVariableOpбRead_13/DisableCopyOnReadбRead_13/ReadVariableOpбRead_14/DisableCopyOnReadбRead_14/ReadVariableOpбRead_15/DisableCopyOnReadбRead_15/ReadVariableOpбRead_16/DisableCopyOnReadбRead_16/ReadVariableOpбRead_17/DisableCopyOnReadбRead_17/ReadVariableOpбRead_18/DisableCopyOnReadбRead_18/ReadVariableOpбRead_19/DisableCopyOnReadбRead_19/ReadVariableOpбRead_2/DisableCopyOnReadбRead_2/ReadVariableOpбRead_20/DisableCopyOnReadбRead_20/ReadVariableOpбRead_21/DisableCopyOnReadбRead_21/ReadVariableOpбRead_22/DisableCopyOnReadбRead_22/ReadVariableOpбRead_23/DisableCopyOnReadбRead_23/ReadVariableOpбRead_24/DisableCopyOnReadбRead_24/ReadVariableOpбRead_25/DisableCopyOnReadбRead_25/ReadVariableOpбRead_26/DisableCopyOnReadбRead_26/ReadVariableOpбRead_27/DisableCopyOnReadбRead_27/ReadVariableOpбRead_28/DisableCopyOnReadбRead_28/ReadVariableOpбRead_29/DisableCopyOnReadбRead_29/ReadVariableOpбRead_3/DisableCopyOnReadбRead_3/ReadVariableOpбRead_30/DisableCopyOnReadбRead_30/ReadVariableOpбRead_31/DisableCopyOnReadбRead_31/ReadVariableOpбRead_32/DisableCopyOnReadбRead_32/ReadVariableOpбRead_33/DisableCopyOnReadбRead_33/ReadVariableOpбRead_34/DisableCopyOnReadбRead_34/ReadVariableOpбRead_35/DisableCopyOnReadбRead_35/ReadVariableOpбRead_4/DisableCopyOnReadбRead_4/ReadVariableOpбRead_5/DisableCopyOnReadбRead_5/ReadVariableOpбRead_6/DisableCopyOnReadбRead_6/ReadVariableOpбRead_7/DisableCopyOnReadбRead_7/ReadVariableOpбRead_8/DisableCopyOnReadбRead_8/ReadVariableOpбRead_9/DisableCopyOnReadбRead_9/ReadVariableOpw
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
_temp/partЂ
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
value	B : Њ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: x
Read/DisableCopyOnReadDisableCopyOnRead&read_disablecopyonread_dense_24_kernel"/device:CPU:0*
_output_shapes
 б
Read/ReadVariableOpReadVariableOp&read_disablecopyonread_dense_24_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:d*
dtype0i
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:da

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes

:dz
Read_1/DisableCopyOnReadDisableCopyOnRead&read_1_disablecopyonread_dense_24_bias"/device:CPU:0*
_output_shapes
 б
Read_1/ReadVariableOpReadVariableOp&read_1_disablecopyonread_dense_24_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:|
Read_2/DisableCopyOnReadDisableCopyOnRead(read_2_disablecopyonread_dense_25_kernel"/device:CPU:0*
_output_shapes
 е
Read_2/ReadVariableOpReadVariableOp(read_2_disablecopyonread_dense_25_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0m

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:c

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes

:z
Read_3/DisableCopyOnReadDisableCopyOnRead&read_3_disablecopyonread_dense_25_bias"/device:CPU:0*
_output_shapes
 б
Read_3/ReadVariableOpReadVariableOp&read_3_disablecopyonread_dense_25_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:ѕ
Read_4/DisableCopyOnReadDisableCopyOnRead4read_4_disablecopyonread_lstm_24_lstm_cell_24_kernel"/device:CPU:0*
_output_shapes
 х
Read_4/ReadVariableOpReadVariableOp4read_4_disablecopyonread_lstm_24_lstm_cell_24_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:		љ*
dtype0n

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:		љd

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:		љњ
Read_5/DisableCopyOnReadDisableCopyOnRead>read_5_disablecopyonread_lstm_24_lstm_cell_24_recurrent_kernel"/device:CPU:0*
_output_shapes
 ┐
Read_5/ReadVariableOpReadVariableOp>read_5_disablecopyonread_lstm_24_lstm_cell_24_recurrent_kernel^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	dљ*
dtype0o
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	dљf
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:	dљє
Read_6/DisableCopyOnReadDisableCopyOnRead2read_6_disablecopyonread_lstm_24_lstm_cell_24_bias"/device:CPU:0*
_output_shapes
 »
Read_6/ReadVariableOpReadVariableOp2read_6_disablecopyonread_lstm_24_lstm_cell_24_bias^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:љ*
dtype0k
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:љb
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes	
:љѕ
Read_7/DisableCopyOnReadDisableCopyOnRead4read_7_disablecopyonread_lstm_25_lstm_cell_25_kernel"/device:CPU:0*
_output_shapes
 х
Read_7/ReadVariableOpReadVariableOp4read_7_disablecopyonread_lstm_25_lstm_cell_25_kernel^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	dљ*
dtype0o
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	dљf
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:	dљњ
Read_8/DisableCopyOnReadDisableCopyOnRead>read_8_disablecopyonread_lstm_25_lstm_cell_25_recurrent_kernel"/device:CPU:0*
_output_shapes
 ┐
Read_8/ReadVariableOpReadVariableOp>read_8_disablecopyonread_lstm_25_lstm_cell_25_recurrent_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	dљ*
dtype0o
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	dљf
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:	dљє
Read_9/DisableCopyOnReadDisableCopyOnRead2read_9_disablecopyonread_lstm_25_lstm_cell_25_bias"/device:CPU:0*
_output_shapes
 »
Read_9/ReadVariableOpReadVariableOp2read_9_disablecopyonread_lstm_25_lstm_cell_25_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:љ*
dtype0k
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:љb
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes	
:љx
Read_10/DisableCopyOnReadDisableCopyOnRead#read_10_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 Ю
Read_10/ReadVariableOpReadVariableOp#read_10_disablecopyonread_iteration^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_11/DisableCopyOnReadDisableCopyOnRead'read_11_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 А
Read_11/ReadVariableOpReadVariableOp'read_11_disablecopyonread_learning_rate^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
: Љ
Read_12/DisableCopyOnReadDisableCopyOnRead<read_12_disablecopyonread_adam_m_lstm_24_lstm_cell_24_kernel"/device:CPU:0*
_output_shapes
 ┐
Read_12/ReadVariableOpReadVariableOp<read_12_disablecopyonread_adam_m_lstm_24_lstm_cell_24_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:		љ*
dtype0p
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:		љf
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
:		љЉ
Read_13/DisableCopyOnReadDisableCopyOnRead<read_13_disablecopyonread_adam_v_lstm_24_lstm_cell_24_kernel"/device:CPU:0*
_output_shapes
 ┐
Read_13/ReadVariableOpReadVariableOp<read_13_disablecopyonread_adam_v_lstm_24_lstm_cell_24_kernel^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:		љ*
dtype0p
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:		љf
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:		љЏ
Read_14/DisableCopyOnReadDisableCopyOnReadFread_14_disablecopyonread_adam_m_lstm_24_lstm_cell_24_recurrent_kernel"/device:CPU:0*
_output_shapes
 ╔
Read_14/ReadVariableOpReadVariableOpFread_14_disablecopyonread_adam_m_lstm_24_lstm_cell_24_recurrent_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	dљ*
dtype0p
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	dљf
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
:	dљЏ
Read_15/DisableCopyOnReadDisableCopyOnReadFread_15_disablecopyonread_adam_v_lstm_24_lstm_cell_24_recurrent_kernel"/device:CPU:0*
_output_shapes
 ╔
Read_15/ReadVariableOpReadVariableOpFread_15_disablecopyonread_adam_v_lstm_24_lstm_cell_24_recurrent_kernel^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	dљ*
dtype0p
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	dљf
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:	dљЈ
Read_16/DisableCopyOnReadDisableCopyOnRead:read_16_disablecopyonread_adam_m_lstm_24_lstm_cell_24_bias"/device:CPU:0*
_output_shapes
 ╣
Read_16/ReadVariableOpReadVariableOp:read_16_disablecopyonread_adam_m_lstm_24_lstm_cell_24_bias^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:љ*
dtype0l
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:љb
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes	
:љЈ
Read_17/DisableCopyOnReadDisableCopyOnRead:read_17_disablecopyonread_adam_v_lstm_24_lstm_cell_24_bias"/device:CPU:0*
_output_shapes
 ╣
Read_17/ReadVariableOpReadVariableOp:read_17_disablecopyonread_adam_v_lstm_24_lstm_cell_24_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:љ*
dtype0l
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:љb
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes	
:љЉ
Read_18/DisableCopyOnReadDisableCopyOnRead<read_18_disablecopyonread_adam_m_lstm_25_lstm_cell_25_kernel"/device:CPU:0*
_output_shapes
 ┐
Read_18/ReadVariableOpReadVariableOp<read_18_disablecopyonread_adam_m_lstm_25_lstm_cell_25_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	dљ*
dtype0p
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	dљf
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
:	dљЉ
Read_19/DisableCopyOnReadDisableCopyOnRead<read_19_disablecopyonread_adam_v_lstm_25_lstm_cell_25_kernel"/device:CPU:0*
_output_shapes
 ┐
Read_19/ReadVariableOpReadVariableOp<read_19_disablecopyonread_adam_v_lstm_25_lstm_cell_25_kernel^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	dљ*
dtype0p
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	dљf
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:	dљЏ
Read_20/DisableCopyOnReadDisableCopyOnReadFread_20_disablecopyonread_adam_m_lstm_25_lstm_cell_25_recurrent_kernel"/device:CPU:0*
_output_shapes
 ╔
Read_20/ReadVariableOpReadVariableOpFread_20_disablecopyonread_adam_m_lstm_25_lstm_cell_25_recurrent_kernel^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	dљ*
dtype0p
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	dљf
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
:	dљЏ
Read_21/DisableCopyOnReadDisableCopyOnReadFread_21_disablecopyonread_adam_v_lstm_25_lstm_cell_25_recurrent_kernel"/device:CPU:0*
_output_shapes
 ╔
Read_21/ReadVariableOpReadVariableOpFread_21_disablecopyonread_adam_v_lstm_25_lstm_cell_25_recurrent_kernel^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	dљ*
dtype0p
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	dљf
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:	dљЈ
Read_22/DisableCopyOnReadDisableCopyOnRead:read_22_disablecopyonread_adam_m_lstm_25_lstm_cell_25_bias"/device:CPU:0*
_output_shapes
 ╣
Read_22/ReadVariableOpReadVariableOp:read_22_disablecopyonread_adam_m_lstm_25_lstm_cell_25_bias^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:љ*
dtype0l
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:љb
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes	
:љЈ
Read_23/DisableCopyOnReadDisableCopyOnRead:read_23_disablecopyonread_adam_v_lstm_25_lstm_cell_25_bias"/device:CPU:0*
_output_shapes
 ╣
Read_23/ReadVariableOpReadVariableOp:read_23_disablecopyonread_adam_v_lstm_25_lstm_cell_25_bias^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:љ*
dtype0l
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:љb
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes	
:љЁ
Read_24/DisableCopyOnReadDisableCopyOnRead0read_24_disablecopyonread_adam_m_dense_24_kernel"/device:CPU:0*
_output_shapes
 ▓
Read_24/ReadVariableOpReadVariableOp0read_24_disablecopyonread_adam_m_dense_24_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:d*
dtype0o
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:de
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes

:dЁ
Read_25/DisableCopyOnReadDisableCopyOnRead0read_25_disablecopyonread_adam_v_dense_24_kernel"/device:CPU:0*
_output_shapes
 ▓
Read_25/ReadVariableOpReadVariableOp0read_25_disablecopyonread_adam_v_dense_24_kernel^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:d*
dtype0o
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:de
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes

:dЃ
Read_26/DisableCopyOnReadDisableCopyOnRead.read_26_disablecopyonread_adam_m_dense_24_bias"/device:CPU:0*
_output_shapes
 г
Read_26/ReadVariableOpReadVariableOp.read_26_disablecopyonread_adam_m_dense_24_bias^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
:Ѓ
Read_27/DisableCopyOnReadDisableCopyOnRead.read_27_disablecopyonread_adam_v_dense_24_bias"/device:CPU:0*
_output_shapes
 г
Read_27/ReadVariableOpReadVariableOp.read_27_disablecopyonread_adam_v_dense_24_bias^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
:Ё
Read_28/DisableCopyOnReadDisableCopyOnRead0read_28_disablecopyonread_adam_m_dense_25_kernel"/device:CPU:0*
_output_shapes
 ▓
Read_28/ReadVariableOpReadVariableOp0read_28_disablecopyonread_adam_m_dense_25_kernel^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes

:Ё
Read_29/DisableCopyOnReadDisableCopyOnRead0read_29_disablecopyonread_adam_v_dense_25_kernel"/device:CPU:0*
_output_shapes
 ▓
Read_29/ReadVariableOpReadVariableOp0read_29_disablecopyonread_adam_v_dense_25_kernel^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes

:Ѓ
Read_30/DisableCopyOnReadDisableCopyOnRead.read_30_disablecopyonread_adam_m_dense_25_bias"/device:CPU:0*
_output_shapes
 г
Read_30/ReadVariableOpReadVariableOp.read_30_disablecopyonread_adam_m_dense_25_bias^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes
:Ѓ
Read_31/DisableCopyOnReadDisableCopyOnRead.read_31_disablecopyonread_adam_v_dense_25_bias"/device:CPU:0*
_output_shapes
 г
Read_31/ReadVariableOpReadVariableOp.read_31_disablecopyonread_adam_v_dense_25_bias^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_32/DisableCopyOnReadDisableCopyOnRead!read_32_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 Џ
Read_32/ReadVariableOpReadVariableOp!read_32_disablecopyonread_total_1^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_33/DisableCopyOnReadDisableCopyOnRead!read_33_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 Џ
Read_33/ReadVariableOpReadVariableOp!read_33_disablecopyonread_count_1^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_34/DisableCopyOnReadDisableCopyOnReadread_34_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Ў
Read_34/ReadVariableOpReadVariableOpread_34_disablecopyonread_total^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_35/DisableCopyOnReadDisableCopyOnReadread_35_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Ў
Read_35/ReadVariableOpReadVariableOpread_35_disablecopyonread_count^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
: ю
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*┼
value╗BИ%B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHи
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ј
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *3
dtypes)
'2%	љ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_72Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_73IdentityIdentity_72:output:0^NoOp*
T0*
_output_shapes
: и
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "#
identity_73Identity_73:output:0*_
_input_shapesN
L: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
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
Read_35/ReadVariableOpRead_35/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:%

_output_shapes
: :C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
к
К
I__inference_sequential_12_layer_call_and_return_conditional_losses_193732
lstm_24_input!
lstm_24_193556:		љ!
lstm_24_193558:	dљ
lstm_24_193560:	љ!
lstm_25_193708:	dљ!
lstm_25_193710:	dљ
lstm_25_193712:	љ!
dense_24_193721:d
dense_24_193723:!
dense_25_193726:
dense_25_193728:
identityѕб dense_24/StatefulPartitionedCallб dense_25/StatefulPartitionedCallбlstm_24/StatefulPartitionedCallбlstm_25/StatefulPartitionedCallЅ
lstm_24/StatefulPartitionedCallStatefulPartitionedCalllstm_24_inputlstm_24_193556lstm_24_193558lstm_24_193560*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_lstm_24_layer_call_and_return_conditional_losses_193555а
lstm_25/StatefulPartitionedCallStatefulPartitionedCall(lstm_24/StatefulPartitionedCall:output:0lstm_25_193708lstm_25_193710lstm_25_193712*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_lstm_25_layer_call_and_return_conditional_losses_193707я
dropout_12/PartitionedCallPartitionedCall(lstm_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dropout_12_layer_call_and_return_conditional_losses_193719Ї
 dense_24/StatefulPartitionedCallStatefulPartitionedCall#dropout_12/PartitionedCall:output:0dense_24_193721dense_24_193723*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_dense_24_layer_call_and_return_conditional_losses_193386Њ
 dense_25/StatefulPartitionedCallStatefulPartitionedCall)dense_24/StatefulPartitionedCall:output:0dense_25_193726dense_25_193728*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_dense_25_layer_call_and_return_conditional_losses_193403x
IdentityIdentity)dense_25/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         л
NoOpNoOp!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall ^lstm_24/StatefulPartitionedCall ^lstm_25/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         	: : : : : : : : : : 2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2B
lstm_24/StatefulPartitionedCalllstm_24/StatefulPartitionedCall2B
lstm_25/StatefulPartitionedCalllstm_25/StatefulPartitionedCall:Z V
+
_output_shapes
:         	
'
_user_specified_namelstm_24_input
УK
Ю
C__inference_lstm_25_layer_call_and_return_conditional_losses_195455
inputs_0>
+lstm_cell_25_matmul_readvariableop_resource:	dљ@
-lstm_cell_25_matmul_1_readvariableop_resource:	dљ;
,lstm_cell_25_biasadd_readvariableop_resource:	љ
identityѕб#lstm_cell_25/BiasAdd/ReadVariableOpб"lstm_cell_25/MatMul/ReadVariableOpб$lstm_cell_25/MatMul_1/ReadVariableOpбwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  dR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskЈ
"lstm_cell_25/MatMul/ReadVariableOpReadVariableOp+lstm_cell_25_matmul_readvariableop_resource*
_output_shapes
:	dљ*
dtype0ќ
lstm_cell_25/MatMulMatMulstrided_slice_2:output:0*lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЊ
$lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_25_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0љ
lstm_cell_25/MatMul_1MatMulzeros:output:0,lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љї
lstm_cell_25/addAddV2lstm_cell_25/MatMul:product:0lstm_cell_25/MatMul_1:product:0*
T0*(
_output_shapes
:         љЇ
#lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_25_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0Ћ
lstm_cell_25/BiasAddBiasAddlstm_cell_25/add:z:0+lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ^
lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_cell_25/splitSplit%lstm_cell_25/split/split_dim:output:0lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitn
lstm_cell_25/SigmoidSigmoidlstm_cell_25/split:output:0*
T0*'
_output_shapes
:         dp
lstm_cell_25/Sigmoid_1Sigmoidlstm_cell_25/split:output:1*
T0*'
_output_shapes
:         dw
lstm_cell_25/mulMullstm_cell_25/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dh
lstm_cell_25/ReluRelulstm_cell_25/split:output:2*
T0*'
_output_shapes
:         dє
lstm_cell_25/mul_1Mullstm_cell_25/Sigmoid:y:0lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:         d{
lstm_cell_25/add_1AddV2lstm_cell_25/mul:z:0lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:         dp
lstm_cell_25/Sigmoid_2Sigmoidlstm_cell_25/split:output:3*
T0*'
_output_shapes
:         de
lstm_cell_25/Relu_1Relulstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:         dі
lstm_cell_25/mul_2Mullstm_cell_25/Sigmoid_2:y:0!lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ѓ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_25_matmul_readvariableop_resource-lstm_cell_25_matmul_1_readvariableop_resource,lstm_cell_25_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_195370*
condR
while_cond_195369*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         d└
NoOpNoOp$^lstm_cell_25/BiasAdd/ReadVariableOp#^lstm_cell_25/MatMul/ReadVariableOp%^lstm_cell_25/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2J
#lstm_cell_25/BiasAdd/ReadVariableOp#lstm_cell_25/BiasAdd/ReadVariableOp2H
"lstm_cell_25/MatMul/ReadVariableOp"lstm_cell_25/MatMul/ReadVariableOp2L
$lstm_cell_25/MatMul_1/ReadVariableOp$lstm_cell_25/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs_0
А
G
+__inference_dropout_12_layer_call_fn_195900

inputs
identity▒
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dropout_12_layer_call_and_return_conditional_losses_193719`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         d:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
і:
л
while_body_195660
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_25_matmul_readvariableop_resource_0:	dљH
5while_lstm_cell_25_matmul_1_readvariableop_resource_0:	dљC
4while_lstm_cell_25_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_25_matmul_readvariableop_resource:	dљF
3while_lstm_cell_25_matmul_1_readvariableop_resource:	dљA
2while_lstm_cell_25_biasadd_readvariableop_resource:	љѕб)while/lstm_cell_25/BiasAdd/ReadVariableOpб(while/lstm_cell_25/MatMul/ReadVariableOpб*while/lstm_cell_25/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ю
(while/lstm_cell_25/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_25_matmul_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0║
while/lstm_cell_25/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
*while/lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_25_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0А
while/lstm_cell_25/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љъ
while/lstm_cell_25/addAddV2#while/lstm_cell_25/MatMul:product:0%while/lstm_cell_25/MatMul_1:product:0*
T0*(
_output_shapes
:         љЏ
)while/lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_25_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0Д
while/lstm_cell_25/BiasAddBiasAddwhile/lstm_cell_25/add:z:01while/lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љd
"while/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_25/splitSplit+while/lstm_cell_25/split/split_dim:output:0#while/lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitz
while/lstm_cell_25/SigmoidSigmoid!while/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_25/Sigmoid_1Sigmoid!while/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:         dє
while/lstm_cell_25/mulMul while/lstm_cell_25/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dt
while/lstm_cell_25/ReluRelu!while/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:         dў
while/lstm_cell_25/mul_1Mulwhile/lstm_cell_25/Sigmoid:y:0%while/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:         dЇ
while/lstm_cell_25/add_1AddV2while/lstm_cell_25/mul:z:0while/lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_25/Sigmoid_2Sigmoid!while/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:         dq
while/lstm_cell_25/Relu_1Reluwhile/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:         dю
while/lstm_cell_25/mul_2Mul while/lstm_cell_25/Sigmoid_2:y:0'while/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:         dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ь
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_25/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_25/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dy
while/Identity_5Identitywhile/lstm_cell_25/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dл

while/NoOpNoOp*^while/lstm_cell_25/BiasAdd/ReadVariableOp)^while/lstm_cell_25/MatMul/ReadVariableOp+^while/lstm_cell_25/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"j
2while_lstm_cell_25_biasadd_readvariableop_resource4while_lstm_cell_25_biasadd_readvariableop_resource_0"l
3while_lstm_cell_25_matmul_1_readvariableop_resource5while_lstm_cell_25_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_25_matmul_readvariableop_resource3while_lstm_cell_25_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2V
)while/lstm_cell_25/BiasAdd/ReadVariableOp)while/lstm_cell_25/BiasAdd/ReadVariableOp2T
(while/lstm_cell_25/MatMul/ReadVariableOp(while/lstm_cell_25/MatMul/ReadVariableOp2X
*while/lstm_cell_25/MatMul_1/ReadVariableOp*while/lstm_cell_25/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Џ

ш
D__inference_dense_24_layer_call_and_return_conditional_losses_193386

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
в
Ш
-__inference_lstm_cell_25_layer_call_fn_196089

inputs
states_0
states_1
unknown:	dљ
	unknown_0:	dљ
	unknown_1:	љ
identity

identity_1

identity_2ѕбStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_lstm_cell_25_layer_call_and_return_conditional_losses_192912o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         d:         d:         d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:QM
'
_output_shapes
:         d
"
_user_specified_name
states_1:QM
'
_output_shapes
:         d
"
_user_specified_name
states_0:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
э
х
(__inference_lstm_25_layer_call_fn_195310

inputs
unknown:	dљ
	unknown_0:	dљ
	unknown_1:	љ
identityѕбStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_lstm_25_layer_call_and_return_conditional_losses_193707o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
Ќ	
├
while_cond_192428
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_192428___redundant_placeholder04
0while_while_cond_192428___redundant_placeholder14
0while_while_cond_192428___redundant_placeholder24
0while_while_cond_192428___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
┐J
Џ
C__inference_lstm_24_layer_call_and_return_conditional_losses_195123

inputs>
+lstm_cell_24_matmul_readvariableop_resource:		љ@
-lstm_cell_24_matmul_1_readvariableop_resource:	dљ;
,lstm_cell_24_biasadd_readvariableop_resource:	љ
identityѕб#lstm_cell_24/BiasAdd/ReadVariableOpб"lstm_cell_24/MatMul/ReadVariableOpб$lstm_cell_24/MatMul_1/ReadVariableOpбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         	R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         	*
shrink_axis_maskЈ
"lstm_cell_24/MatMul/ReadVariableOpReadVariableOp+lstm_cell_24_matmul_readvariableop_resource*
_output_shapes
:		љ*
dtype0ќ
lstm_cell_24/MatMulMatMulstrided_slice_2:output:0*lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЊ
$lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_24_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0љ
lstm_cell_24/MatMul_1MatMulzeros:output:0,lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љї
lstm_cell_24/addAddV2lstm_cell_24/MatMul:product:0lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:         љЇ
#lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_24_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0Ћ
lstm_cell_24/BiasAddBiasAddlstm_cell_24/add:z:0+lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ^
lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_cell_24/splitSplit%lstm_cell_24/split/split_dim:output:0lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitn
lstm_cell_24/SigmoidSigmoidlstm_cell_24/split:output:0*
T0*'
_output_shapes
:         dp
lstm_cell_24/Sigmoid_1Sigmoidlstm_cell_24/split:output:1*
T0*'
_output_shapes
:         dw
lstm_cell_24/mulMullstm_cell_24/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dh
lstm_cell_24/ReluRelulstm_cell_24/split:output:2*
T0*'
_output_shapes
:         dє
lstm_cell_24/mul_1Mullstm_cell_24/Sigmoid:y:0lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:         d{
lstm_cell_24/add_1AddV2lstm_cell_24/mul:z:0lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:         dp
lstm_cell_24/Sigmoid_2Sigmoidlstm_cell_24/split:output:3*
T0*'
_output_shapes
:         de
lstm_cell_24/Relu_1Relulstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:         dі
lstm_cell_24/mul_2Mullstm_cell_24/Sigmoid_2:y:0!lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ѓ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_24_matmul_readvariableop_resource-lstm_cell_24_matmul_1_readvariableop_resource,lstm_cell_24_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_195039*
condR
while_cond_195038*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         d└
NoOpNoOp$^lstm_cell_24/BiasAdd/ReadVariableOp#^lstm_cell_24/MatMul/ReadVariableOp%^lstm_cell_24/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         	: : : 2J
#lstm_cell_24/BiasAdd/ReadVariableOp#lstm_cell_24/BiasAdd/ReadVariableOp2H
"lstm_cell_24/MatMul/ReadVariableOp"lstm_cell_24/MatMul/ReadVariableOp2L
$lstm_cell_24/MatMul_1/ReadVariableOp$lstm_cell_24/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
┬
ќ
)__inference_dense_24_layer_call_fn_195926

inputs
unknown:d
	unknown_0:
identityѕбStatefulPartitionedCall┘
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_dense_24_layer_call_and_return_conditional_losses_193386o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         d: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
Ь8
л
while_body_195039
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_24_matmul_readvariableop_resource_0:		љH
5while_lstm_cell_24_matmul_1_readvariableop_resource_0:	dљC
4while_lstm_cell_24_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_24_matmul_readvariableop_resource:		љF
3while_lstm_cell_24_matmul_1_readvariableop_resource:	dљA
2while_lstm_cell_24_biasadd_readvariableop_resource:	љѕб)while/lstm_cell_24/BiasAdd/ReadVariableOpб(while/lstm_cell_24/MatMul/ReadVariableOpб*while/lstm_cell_24/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         	*
element_dtype0Ю
(while/lstm_cell_24/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_24_matmul_readvariableop_resource_0*
_output_shapes
:		љ*
dtype0║
while/lstm_cell_24/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
*while/lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_24_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0А
while/lstm_cell_24/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љъ
while/lstm_cell_24/addAddV2#while/lstm_cell_24/MatMul:product:0%while/lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:         љЏ
)while/lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_24_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0Д
while/lstm_cell_24/BiasAddBiasAddwhile/lstm_cell_24/add:z:01while/lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љd
"while/lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_24/splitSplit+while/lstm_cell_24/split/split_dim:output:0#while/lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitz
while/lstm_cell_24/SigmoidSigmoid!while/lstm_cell_24/split:output:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_24/Sigmoid_1Sigmoid!while/lstm_cell_24/split:output:1*
T0*'
_output_shapes
:         dє
while/lstm_cell_24/mulMul while/lstm_cell_24/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dt
while/lstm_cell_24/ReluRelu!while/lstm_cell_24/split:output:2*
T0*'
_output_shapes
:         dў
while/lstm_cell_24/mul_1Mulwhile/lstm_cell_24/Sigmoid:y:0%while/lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:         dЇ
while/lstm_cell_24/add_1AddV2while/lstm_cell_24/mul:z:0while/lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_24/Sigmoid_2Sigmoid!while/lstm_cell_24/split:output:3*
T0*'
_output_shapes
:         dq
while/lstm_cell_24/Relu_1Reluwhile/lstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:         dю
while/lstm_cell_24/mul_2Mul while/lstm_cell_24/Sigmoid_2:y:0'while/lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:         d┼
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_24/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_24/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dy
while/Identity_5Identitywhile/lstm_cell_24/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dл

while/NoOpNoOp*^while/lstm_cell_24/BiasAdd/ReadVariableOp)^while/lstm_cell_24/MatMul/ReadVariableOp+^while/lstm_cell_24/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"j
2while_lstm_cell_24_biasadd_readvariableop_resource4while_lstm_cell_24_biasadd_readvariableop_resource_0"l
3while_lstm_cell_24_matmul_1_readvariableop_resource5while_lstm_cell_24_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_24_matmul_readvariableop_resource3while_lstm_cell_24_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2V
)while/lstm_cell_24/BiasAdd/ReadVariableOp)while/lstm_cell_24/BiasAdd/ReadVariableOp2T
(while/lstm_cell_24/MatMul/ReadVariableOp(while/lstm_cell_24/MatMul/ReadVariableOp2X
*while/lstm_cell_24/MatMul_1/ReadVariableOp*while/lstm_cell_24/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
г
ч
'sequential_12_lstm_25_while_cond_192250H
Dsequential_12_lstm_25_while_sequential_12_lstm_25_while_loop_counterN
Jsequential_12_lstm_25_while_sequential_12_lstm_25_while_maximum_iterations+
'sequential_12_lstm_25_while_placeholder-
)sequential_12_lstm_25_while_placeholder_1-
)sequential_12_lstm_25_while_placeholder_2-
)sequential_12_lstm_25_while_placeholder_3J
Fsequential_12_lstm_25_while_less_sequential_12_lstm_25_strided_slice_1`
\sequential_12_lstm_25_while_sequential_12_lstm_25_while_cond_192250___redundant_placeholder0`
\sequential_12_lstm_25_while_sequential_12_lstm_25_while_cond_192250___redundant_placeholder1`
\sequential_12_lstm_25_while_sequential_12_lstm_25_while_cond_192250___redundant_placeholder2`
\sequential_12_lstm_25_while_sequential_12_lstm_25_while_cond_192250___redundant_placeholder3(
$sequential_12_lstm_25_while_identity
║
 sequential_12/lstm_25/while/LessLess'sequential_12_lstm_25_while_placeholderFsequential_12_lstm_25_while_less_sequential_12_lstm_25_strided_slice_1*
T0*
_output_shapes
: w
$sequential_12/lstm_25/while/IdentityIdentity$sequential_12/lstm_25/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_12_lstm_25_while_identity-sequential_12/lstm_25/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :fb

_output_shapes
: 
H
_user_specified_name0.sequential_12/lstm_25/while/maximum_iterations:` \

_output_shapes
: 
B
_user_specified_name*(sequential_12/lstm_25/while/loop_counter
і:
л
while_body_195805
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_25_matmul_readvariableop_resource_0:	dљH
5while_lstm_cell_25_matmul_1_readvariableop_resource_0:	dљC
4while_lstm_cell_25_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_25_matmul_readvariableop_resource:	dљF
3while_lstm_cell_25_matmul_1_readvariableop_resource:	dљA
2while_lstm_cell_25_biasadd_readvariableop_resource:	љѕб)while/lstm_cell_25/BiasAdd/ReadVariableOpб(while/lstm_cell_25/MatMul/ReadVariableOpб*while/lstm_cell_25/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ю
(while/lstm_cell_25/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_25_matmul_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0║
while/lstm_cell_25/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
*while/lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_25_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0А
while/lstm_cell_25/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љъ
while/lstm_cell_25/addAddV2#while/lstm_cell_25/MatMul:product:0%while/lstm_cell_25/MatMul_1:product:0*
T0*(
_output_shapes
:         љЏ
)while/lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_25_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0Д
while/lstm_cell_25/BiasAddBiasAddwhile/lstm_cell_25/add:z:01while/lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љd
"while/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_25/splitSplit+while/lstm_cell_25/split/split_dim:output:0#while/lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitz
while/lstm_cell_25/SigmoidSigmoid!while/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_25/Sigmoid_1Sigmoid!while/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:         dє
while/lstm_cell_25/mulMul while/lstm_cell_25/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dt
while/lstm_cell_25/ReluRelu!while/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:         dў
while/lstm_cell_25/mul_1Mulwhile/lstm_cell_25/Sigmoid:y:0%while/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:         dЇ
while/lstm_cell_25/add_1AddV2while/lstm_cell_25/mul:z:0while/lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_25/Sigmoid_2Sigmoid!while/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:         dq
while/lstm_cell_25/Relu_1Reluwhile/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:         dю
while/lstm_cell_25/mul_2Mul while/lstm_cell_25/Sigmoid_2:y:0'while/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:         dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ь
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_25/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_25/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dy
while/Identity_5Identitywhile/lstm_cell_25/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dл

while/NoOpNoOp*^while/lstm_cell_25/BiasAdd/ReadVariableOp)^while/lstm_cell_25/MatMul/ReadVariableOp+^while/lstm_cell_25/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"j
2while_lstm_cell_25_biasadd_readvariableop_resource4while_lstm_cell_25_biasadd_readvariableop_resource_0"l
3while_lstm_cell_25_matmul_1_readvariableop_resource5while_lstm_cell_25_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_25_matmul_readvariableop_resource3while_lstm_cell_25_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2V
)while/lstm_cell_25/BiasAdd/ReadVariableOp)while/lstm_cell_25/BiasAdd/ReadVariableOp2T
(while/lstm_cell_25/MatMul/ReadVariableOp(while/lstm_cell_25/MatMul/ReadVariableOp2X
*while/lstm_cell_25/MatMul_1/ReadVariableOp*while/lstm_cell_25/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Ј
и
(__inference_lstm_25_layer_call_fn_195277
inputs_0
unknown:	dљ
	unknown_0:	dљ
	unknown_1:	љ
identityѕбStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_lstm_25_layer_call_and_return_conditional_losses_192850o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs_0
ѕ
с
lstm_24_while_cond_194409,
(lstm_24_while_lstm_24_while_loop_counter2
.lstm_24_while_lstm_24_while_maximum_iterations
lstm_24_while_placeholder
lstm_24_while_placeholder_1
lstm_24_while_placeholder_2
lstm_24_while_placeholder_3.
*lstm_24_while_less_lstm_24_strided_slice_1D
@lstm_24_while_lstm_24_while_cond_194409___redundant_placeholder0D
@lstm_24_while_lstm_24_while_cond_194409___redundant_placeholder1D
@lstm_24_while_lstm_24_while_cond_194409___redundant_placeholder2D
@lstm_24_while_lstm_24_while_cond_194409___redundant_placeholder3
lstm_24_while_identity
ѓ
lstm_24/while/LessLesslstm_24_while_placeholder*lstm_24_while_less_lstm_24_strided_slice_1*
T0*
_output_shapes
: [
lstm_24/while/IdentityIdentitylstm_24/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_24_while_identitylstm_24/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :XT

_output_shapes
: 
:
_user_specified_name" lstm_24/while/maximum_iterations:R N

_output_shapes
: 
4
_user_specified_namelstm_24/while/loop_counter
«8
Ё
C__inference_lstm_24_layer_call_and_return_conditional_losses_192498

inputs&
lstm_cell_24_192416:		љ&
lstm_cell_24_192418:	dљ"
lstm_cell_24_192420:	љ
identityѕб$lstm_cell_24/StatefulPartitionedCallбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  	R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         	*
shrink_axis_maskш
$lstm_cell_24/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_24_192416lstm_cell_24_192418lstm_cell_24_192420*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_lstm_cell_24_layer_call_and_return_conditional_losses_192415n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : и
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_24_192416lstm_cell_24_192418lstm_cell_24_192420*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_192429*
condR
while_cond_192428*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  du
NoOpNoOp%^lstm_cell_24/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  	: : : 2L
$lstm_cell_24/StatefulPartitionedCall$lstm_cell_24/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  	
 
_user_specified_nameinputs
Ќ	
├
while_cond_195804
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_195804___redundant_placeholder04
0while_while_cond_195804___redundant_placeholder14
0while_while_cond_195804___redundant_placeholder24
0while_while_cond_195804___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Н
ё
H__inference_lstm_cell_25_layer_call_and_return_conditional_losses_192765

inputs

states
states_11
matmul_readvariableop_resource:	dљ3
 matmul_1_readvariableop_resource:	dљ.
biasadd_readvariableop_resource:	љ
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dљ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         љs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:         d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         dЉ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         d:         d:         d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:OK
'
_output_shapes
:         d
 
_user_specified_namestates:OK
'
_output_shapes
:         d
 
_user_specified_namestates:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
Ќ	
├
while_cond_194895
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_194895___redundant_placeholder04
0while_while_cond_194895___redundant_placeholder14
0while_while_cond_194895___redundant_placeholder24
0while_while_cond_194895___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Е
и
(__inference_lstm_24_layer_call_fn_194672
inputs_0
unknown:		љ
	unknown_0:	dљ
	unknown_1:	љ
identityѕбStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_lstm_24_layer_call_and_return_conditional_losses_192643|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  	: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  	
"
_user_specified_name
inputs_0
█C
л

lstm_25_while_body_194244,
(lstm_25_while_lstm_25_while_loop_counter2
.lstm_25_while_lstm_25_while_maximum_iterations
lstm_25_while_placeholder
lstm_25_while_placeholder_1
lstm_25_while_placeholder_2
lstm_25_while_placeholder_3+
'lstm_25_while_lstm_25_strided_slice_1_0g
clstm_25_while_tensorarrayv2read_tensorlistgetitem_lstm_25_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_25_while_lstm_cell_25_matmul_readvariableop_resource_0:	dљP
=lstm_25_while_lstm_cell_25_matmul_1_readvariableop_resource_0:	dљK
<lstm_25_while_lstm_cell_25_biasadd_readvariableop_resource_0:	љ
lstm_25_while_identity
lstm_25_while_identity_1
lstm_25_while_identity_2
lstm_25_while_identity_3
lstm_25_while_identity_4
lstm_25_while_identity_5)
%lstm_25_while_lstm_25_strided_slice_1e
alstm_25_while_tensorarrayv2read_tensorlistgetitem_lstm_25_tensorarrayunstack_tensorlistfromtensorL
9lstm_25_while_lstm_cell_25_matmul_readvariableop_resource:	dљN
;lstm_25_while_lstm_cell_25_matmul_1_readvariableop_resource:	dљI
:lstm_25_while_lstm_cell_25_biasadd_readvariableop_resource:	љѕб1lstm_25/while/lstm_cell_25/BiasAdd/ReadVariableOpб0lstm_25/while/lstm_cell_25/MatMul/ReadVariableOpб2lstm_25/while/lstm_cell_25/MatMul_1/ReadVariableOpљ
?lstm_25/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╬
1lstm_25/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_25_while_tensorarrayv2read_tensorlistgetitem_lstm_25_tensorarrayunstack_tensorlistfromtensor_0lstm_25_while_placeholderHlstm_25/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Г
0lstm_25/while/lstm_cell_25/MatMul/ReadVariableOpReadVariableOp;lstm_25_while_lstm_cell_25_matmul_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0м
!lstm_25/while/lstm_cell_25/MatMulMatMul8lstm_25/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_25/while/lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ▒
2lstm_25/while/lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp=lstm_25_while_lstm_cell_25_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0╣
#lstm_25/while/lstm_cell_25/MatMul_1MatMullstm_25_while_placeholder_2:lstm_25/while/lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љХ
lstm_25/while/lstm_cell_25/addAddV2+lstm_25/while/lstm_cell_25/MatMul:product:0-lstm_25/while/lstm_cell_25/MatMul_1:product:0*
T0*(
_output_shapes
:         љФ
1lstm_25/while/lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp<lstm_25_while_lstm_cell_25_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0┐
"lstm_25/while/lstm_cell_25/BiasAddBiasAdd"lstm_25/while/lstm_cell_25/add:z:09lstm_25/while/lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љl
*lstm_25/while/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Є
 lstm_25/while/lstm_cell_25/splitSplit3lstm_25/while/lstm_cell_25/split/split_dim:output:0+lstm_25/while/lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitі
"lstm_25/while/lstm_cell_25/SigmoidSigmoid)lstm_25/while/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:         dї
$lstm_25/while/lstm_cell_25/Sigmoid_1Sigmoid)lstm_25/while/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:         dъ
lstm_25/while/lstm_cell_25/mulMul(lstm_25/while/lstm_cell_25/Sigmoid_1:y:0lstm_25_while_placeholder_3*
T0*'
_output_shapes
:         dё
lstm_25/while/lstm_cell_25/ReluRelu)lstm_25/while/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:         d░
 lstm_25/while/lstm_cell_25/mul_1Mul&lstm_25/while/lstm_cell_25/Sigmoid:y:0-lstm_25/while/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:         dЦ
 lstm_25/while/lstm_cell_25/add_1AddV2"lstm_25/while/lstm_cell_25/mul:z:0$lstm_25/while/lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:         dї
$lstm_25/while/lstm_cell_25/Sigmoid_2Sigmoid)lstm_25/while/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:         dЂ
!lstm_25/while/lstm_cell_25/Relu_1Relu$lstm_25/while/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:         d┤
 lstm_25/while/lstm_cell_25/mul_2Mul(lstm_25/while/lstm_cell_25/Sigmoid_2:y:0/lstm_25/while/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:         dz
8lstm_25/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Ї
2lstm_25/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_25_while_placeholder_1Alstm_25/while/TensorArrayV2Write/TensorListSetItem/index:output:0$lstm_25/while/lstm_cell_25/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмU
lstm_25/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_25/while/addAddV2lstm_25_while_placeholderlstm_25/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_25/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Є
lstm_25/while/add_1AddV2(lstm_25_while_lstm_25_while_loop_counterlstm_25/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_25/while/IdentityIdentitylstm_25/while/add_1:z:0^lstm_25/while/NoOp*
T0*
_output_shapes
: і
lstm_25/while/Identity_1Identity.lstm_25_while_lstm_25_while_maximum_iterations^lstm_25/while/NoOp*
T0*
_output_shapes
: q
lstm_25/while/Identity_2Identitylstm_25/while/add:z:0^lstm_25/while/NoOp*
T0*
_output_shapes
: ъ
lstm_25/while/Identity_3IdentityBlstm_25/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_25/while/NoOp*
T0*
_output_shapes
: Љ
lstm_25/while/Identity_4Identity$lstm_25/while/lstm_cell_25/mul_2:z:0^lstm_25/while/NoOp*
T0*'
_output_shapes
:         dЉ
lstm_25/while/Identity_5Identity$lstm_25/while/lstm_cell_25/add_1:z:0^lstm_25/while/NoOp*
T0*'
_output_shapes
:         d­
lstm_25/while/NoOpNoOp2^lstm_25/while/lstm_cell_25/BiasAdd/ReadVariableOp1^lstm_25/while/lstm_cell_25/MatMul/ReadVariableOp3^lstm_25/while/lstm_cell_25/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "=
lstm_25_while_identity_1!lstm_25/while/Identity_1:output:0"=
lstm_25_while_identity_2!lstm_25/while/Identity_2:output:0"=
lstm_25_while_identity_3!lstm_25/while/Identity_3:output:0"=
lstm_25_while_identity_4!lstm_25/while/Identity_4:output:0"=
lstm_25_while_identity_5!lstm_25/while/Identity_5:output:0"9
lstm_25_while_identitylstm_25/while/Identity:output:0"P
%lstm_25_while_lstm_25_strided_slice_1'lstm_25_while_lstm_25_strided_slice_1_0"z
:lstm_25_while_lstm_cell_25_biasadd_readvariableop_resource<lstm_25_while_lstm_cell_25_biasadd_readvariableop_resource_0"|
;lstm_25_while_lstm_cell_25_matmul_1_readvariableop_resource=lstm_25_while_lstm_cell_25_matmul_1_readvariableop_resource_0"x
9lstm_25_while_lstm_cell_25_matmul_readvariableop_resource;lstm_25_while_lstm_cell_25_matmul_readvariableop_resource_0"╚
alstm_25_while_tensorarrayv2read_tensorlistgetitem_lstm_25_tensorarrayunstack_tensorlistfromtensorclstm_25_while_tensorarrayv2read_tensorlistgetitem_lstm_25_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2f
1lstm_25/while/lstm_cell_25/BiasAdd/ReadVariableOp1lstm_25/while/lstm_cell_25/BiasAdd/ReadVariableOp2d
0lstm_25/while/lstm_cell_25/MatMul/ReadVariableOp0lstm_25/while/lstm_cell_25/MatMul/ReadVariableOp2h
2lstm_25/while/lstm_cell_25/MatMul_1/ReadVariableOp2lstm_25/while/lstm_cell_25/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :XT

_output_shapes
: 
:
_user_specified_name" lstm_25/while/maximum_iterations:R N

_output_shapes
: 
4
_user_specified_namelstm_25/while/loop_counter
Е
и
(__inference_lstm_24_layer_call_fn_194661
inputs_0
unknown:		љ
	unknown_0:	dљ
	unknown_1:	љ
identityѕбStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_lstm_24_layer_call_and_return_conditional_losses_192498|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  	: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  	
"
_user_specified_name
inputs_0
П
є
H__inference_lstm_cell_25_layer_call_and_return_conditional_losses_196121

inputs
states_0
states_11
matmul_readvariableop_resource:	dљ3
 matmul_1_readvariableop_resource:	dљ.
biasadd_readvariableop_resource:	љ
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dљ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         љs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:         d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         dЉ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         d:         d:         d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:QM
'
_output_shapes
:         d
"
_user_specified_name
states_1:QM
'
_output_shapes
:         d
"
_user_specified_name
states_0:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
 
х
(__inference_lstm_24_layer_call_fn_194694

inputs
unknown:		љ
	unknown_0:	dљ
	unknown_1:	љ
identityѕбStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_lstm_24_layer_call_and_return_conditional_losses_193555s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         	: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
Ми
Х	
I__inference_sequential_12_layer_call_and_return_conditional_losses_194650

inputsF
3lstm_24_lstm_cell_24_matmul_readvariableop_resource:		љH
5lstm_24_lstm_cell_24_matmul_1_readvariableop_resource:	dљC
4lstm_24_lstm_cell_24_biasadd_readvariableop_resource:	љF
3lstm_25_lstm_cell_25_matmul_readvariableop_resource:	dљH
5lstm_25_lstm_cell_25_matmul_1_readvariableop_resource:	dљC
4lstm_25_lstm_cell_25_biasadd_readvariableop_resource:	љ9
'dense_24_matmul_readvariableop_resource:d6
(dense_24_biasadd_readvariableop_resource:9
'dense_25_matmul_readvariableop_resource:6
(dense_25_biasadd_readvariableop_resource:
identityѕбdense_24/BiasAdd/ReadVariableOpбdense_24/MatMul/ReadVariableOpбdense_25/BiasAdd/ReadVariableOpбdense_25/MatMul/ReadVariableOpб+lstm_24/lstm_cell_24/BiasAdd/ReadVariableOpб*lstm_24/lstm_cell_24/MatMul/ReadVariableOpб,lstm_24/lstm_cell_24/MatMul_1/ReadVariableOpбlstm_24/whileб+lstm_25/lstm_cell_25/BiasAdd/ReadVariableOpб*lstm_25/lstm_cell_25/MatMul/ReadVariableOpб,lstm_25/lstm_cell_25/MatMul_1/ReadVariableOpбlstm_25/whileQ
lstm_24/ShapeShapeinputs*
T0*
_output_shapes
::ь¤e
lstm_24/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_24/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_24/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
lstm_24/strided_sliceStridedSlicelstm_24/Shape:output:0$lstm_24/strided_slice/stack:output:0&lstm_24/strided_slice/stack_1:output:0&lstm_24/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_24/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dІ
lstm_24/zeros/packedPacklstm_24/strided_slice:output:0lstm_24/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_24/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ё
lstm_24/zerosFilllstm_24/zeros/packed:output:0lstm_24/zeros/Const:output:0*
T0*'
_output_shapes
:         dZ
lstm_24/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dЈ
lstm_24/zeros_1/packedPacklstm_24/strided_slice:output:0!lstm_24/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_24/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    і
lstm_24/zeros_1Filllstm_24/zeros_1/packed:output:0lstm_24/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dk
lstm_24/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_24/transpose	Transposeinputslstm_24/transpose/perm:output:0*
T0*+
_output_shapes
:         	b
lstm_24/Shape_1Shapelstm_24/transpose:y:0*
T0*
_output_shapes
::ь¤g
lstm_24/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_24/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_24/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ѓ
lstm_24/strided_slice_1StridedSlicelstm_24/Shape_1:output:0&lstm_24/strided_slice_1/stack:output:0(lstm_24/strided_slice_1/stack_1:output:0(lstm_24/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_24/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ╠
lstm_24/TensorArrayV2TensorListReserve,lstm_24/TensorArrayV2/element_shape:output:0 lstm_24/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмј
=lstm_24/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   Э
/lstm_24/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_24/transpose:y:0Flstm_24/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмg
lstm_24/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_24/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_24/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Љ
lstm_24/strided_slice_2StridedSlicelstm_24/transpose:y:0&lstm_24/strided_slice_2/stack:output:0(lstm_24/strided_slice_2/stack_1:output:0(lstm_24/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         	*
shrink_axis_maskЪ
*lstm_24/lstm_cell_24/MatMul/ReadVariableOpReadVariableOp3lstm_24_lstm_cell_24_matmul_readvariableop_resource*
_output_shapes
:		љ*
dtype0«
lstm_24/lstm_cell_24/MatMulMatMul lstm_24/strided_slice_2:output:02lstm_24/lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
,lstm_24/lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp5lstm_24_lstm_cell_24_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0е
lstm_24/lstm_cell_24/MatMul_1MatMullstm_24/zeros:output:04lstm_24/lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љц
lstm_24/lstm_cell_24/addAddV2%lstm_24/lstm_cell_24/MatMul:product:0'lstm_24/lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
+lstm_24/lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp4lstm_24_lstm_cell_24_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0Г
lstm_24/lstm_cell_24/BiasAddBiasAddlstm_24/lstm_cell_24/add:z:03lstm_24/lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љf
$lstm_24/lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ш
lstm_24/lstm_cell_24/splitSplit-lstm_24/lstm_cell_24/split/split_dim:output:0%lstm_24/lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split~
lstm_24/lstm_cell_24/SigmoidSigmoid#lstm_24/lstm_cell_24/split:output:0*
T0*'
_output_shapes
:         dђ
lstm_24/lstm_cell_24/Sigmoid_1Sigmoid#lstm_24/lstm_cell_24/split:output:1*
T0*'
_output_shapes
:         dЈ
lstm_24/lstm_cell_24/mulMul"lstm_24/lstm_cell_24/Sigmoid_1:y:0lstm_24/zeros_1:output:0*
T0*'
_output_shapes
:         dx
lstm_24/lstm_cell_24/ReluRelu#lstm_24/lstm_cell_24/split:output:2*
T0*'
_output_shapes
:         dъ
lstm_24/lstm_cell_24/mul_1Mul lstm_24/lstm_cell_24/Sigmoid:y:0'lstm_24/lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:         dЊ
lstm_24/lstm_cell_24/add_1AddV2lstm_24/lstm_cell_24/mul:z:0lstm_24/lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:         dђ
lstm_24/lstm_cell_24/Sigmoid_2Sigmoid#lstm_24/lstm_cell_24/split:output:3*
T0*'
_output_shapes
:         du
lstm_24/lstm_cell_24/Relu_1Relulstm_24/lstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:         dб
lstm_24/lstm_cell_24/mul_2Mul"lstm_24/lstm_cell_24/Sigmoid_2:y:0)lstm_24/lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:         dv
%lstm_24/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   л
lstm_24/TensorArrayV2_1TensorListReserve.lstm_24/TensorArrayV2_1/element_shape:output:0 lstm_24/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмN
lstm_24/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_24/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         \
lstm_24/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ы
lstm_24/whileWhile#lstm_24/while/loop_counter:output:0)lstm_24/while/maximum_iterations:output:0lstm_24/time:output:0 lstm_24/TensorArrayV2_1:handle:0lstm_24/zeros:output:0lstm_24/zeros_1:output:0 lstm_24/strided_slice_1:output:0?lstm_24/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_24_lstm_cell_24_matmul_readvariableop_resource5lstm_24_lstm_cell_24_matmul_1_readvariableop_resource4lstm_24_lstm_cell_24_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_24_while_body_194410*%
condR
lstm_24_while_cond_194409*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ѕ
8lstm_24/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ┌
*lstm_24/TensorArrayV2Stack/TensorListStackTensorListStacklstm_24/while:output:3Alstm_24/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0p
lstm_24/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         i
lstm_24/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_24/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:»
lstm_24/strided_slice_3StridedSlice3lstm_24/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_24/strided_slice_3/stack:output:0(lstm_24/strided_slice_3/stack_1:output:0(lstm_24/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskm
lstm_24/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          «
lstm_24/transpose_1	Transpose3lstm_24/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_24/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dc
lstm_24/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
lstm_25/ShapeShapelstm_24/transpose_1:y:0*
T0*
_output_shapes
::ь¤e
lstm_25/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_25/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_25/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
lstm_25/strided_sliceStridedSlicelstm_25/Shape:output:0$lstm_25/strided_slice/stack:output:0&lstm_25/strided_slice/stack_1:output:0&lstm_25/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_25/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dІ
lstm_25/zeros/packedPacklstm_25/strided_slice:output:0lstm_25/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_25/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ё
lstm_25/zerosFilllstm_25/zeros/packed:output:0lstm_25/zeros/Const:output:0*
T0*'
_output_shapes
:         dZ
lstm_25/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dЈ
lstm_25/zeros_1/packedPacklstm_25/strided_slice:output:0!lstm_25/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_25/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    і
lstm_25/zeros_1Filllstm_25/zeros_1/packed:output:0lstm_25/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dk
lstm_25/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ј
lstm_25/transpose	Transposelstm_24/transpose_1:y:0lstm_25/transpose/perm:output:0*
T0*+
_output_shapes
:         db
lstm_25/Shape_1Shapelstm_25/transpose:y:0*
T0*
_output_shapes
::ь¤g
lstm_25/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_25/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_25/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ѓ
lstm_25/strided_slice_1StridedSlicelstm_25/Shape_1:output:0&lstm_25/strided_slice_1/stack:output:0(lstm_25/strided_slice_1/stack_1:output:0(lstm_25/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_25/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ╠
lstm_25/TensorArrayV2TensorListReserve,lstm_25/TensorArrayV2/element_shape:output:0 lstm_25/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмј
=lstm_25/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Э
/lstm_25/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_25/transpose:y:0Flstm_25/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмg
lstm_25/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_25/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_25/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Љ
lstm_25/strided_slice_2StridedSlicelstm_25/transpose:y:0&lstm_25/strided_slice_2/stack:output:0(lstm_25/strided_slice_2/stack_1:output:0(lstm_25/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskЪ
*lstm_25/lstm_cell_25/MatMul/ReadVariableOpReadVariableOp3lstm_25_lstm_cell_25_matmul_readvariableop_resource*
_output_shapes
:	dљ*
dtype0«
lstm_25/lstm_cell_25/MatMulMatMul lstm_25/strided_slice_2:output:02lstm_25/lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
,lstm_25/lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp5lstm_25_lstm_cell_25_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0е
lstm_25/lstm_cell_25/MatMul_1MatMullstm_25/zeros:output:04lstm_25/lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љц
lstm_25/lstm_cell_25/addAddV2%lstm_25/lstm_cell_25/MatMul:product:0'lstm_25/lstm_cell_25/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
+lstm_25/lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp4lstm_25_lstm_cell_25_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0Г
lstm_25/lstm_cell_25/BiasAddBiasAddlstm_25/lstm_cell_25/add:z:03lstm_25/lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љf
$lstm_25/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ш
lstm_25/lstm_cell_25/splitSplit-lstm_25/lstm_cell_25/split/split_dim:output:0%lstm_25/lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split~
lstm_25/lstm_cell_25/SigmoidSigmoid#lstm_25/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:         dђ
lstm_25/lstm_cell_25/Sigmoid_1Sigmoid#lstm_25/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:         dЈ
lstm_25/lstm_cell_25/mulMul"lstm_25/lstm_cell_25/Sigmoid_1:y:0lstm_25/zeros_1:output:0*
T0*'
_output_shapes
:         dx
lstm_25/lstm_cell_25/ReluRelu#lstm_25/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:         dъ
lstm_25/lstm_cell_25/mul_1Mul lstm_25/lstm_cell_25/Sigmoid:y:0'lstm_25/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:         dЊ
lstm_25/lstm_cell_25/add_1AddV2lstm_25/lstm_cell_25/mul:z:0lstm_25/lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:         dђ
lstm_25/lstm_cell_25/Sigmoid_2Sigmoid#lstm_25/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:         du
lstm_25/lstm_cell_25/Relu_1Relulstm_25/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:         dб
lstm_25/lstm_cell_25/mul_2Mul"lstm_25/lstm_cell_25/Sigmoid_2:y:0)lstm_25/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:         dv
%lstm_25/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   f
$lstm_25/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_25/TensorArrayV2_1TensorListReserve.lstm_25/TensorArrayV2_1/element_shape:output:0-lstm_25/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмN
lstm_25/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_25/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         \
lstm_25/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ы
lstm_25/whileWhile#lstm_25/while/loop_counter:output:0)lstm_25/while/maximum_iterations:output:0lstm_25/time:output:0 lstm_25/TensorArrayV2_1:handle:0lstm_25/zeros:output:0lstm_25/zeros_1:output:0 lstm_25/strided_slice_1:output:0?lstm_25/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_25_lstm_cell_25_matmul_readvariableop_resource5lstm_25_lstm_cell_25_matmul_1_readvariableop_resource4lstm_25_lstm_cell_25_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_25_while_body_194550*%
condR
lstm_25_while_cond_194549*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ѕ
8lstm_25/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Ь
*lstm_25/TensorArrayV2Stack/TensorListStackTensorListStacklstm_25/while:output:3Alstm_25/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0*
num_elementsp
lstm_25/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         i
lstm_25/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_25/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:»
lstm_25/strided_slice_3StridedSlice3lstm_25/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_25/strided_slice_3/stack:output:0(lstm_25/strided_slice_3/stack_1:output:0(lstm_25/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskm
lstm_25/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          «
lstm_25/transpose_1	Transpose3lstm_25/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_25/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dc
lstm_25/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    s
dropout_12/IdentityIdentity lstm_25/strided_slice_3:output:0*
T0*'
_output_shapes
:         dє
dense_24/MatMul/ReadVariableOpReadVariableOp'dense_24_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0Љ
dense_24/MatMulMatMuldropout_12/Identity:output:0&dense_24/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
dense_24/BiasAdd/ReadVariableOpReadVariableOp(dense_24_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
dense_24/BiasAddBiasAdddense_24/MatMul:product:0'dense_24/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         b
dense_24/ReluReludense_24/BiasAdd:output:0*
T0*'
_output_shapes
:         є
dense_25/MatMul/ReadVariableOpReadVariableOp'dense_25_matmul_readvariableop_resource*
_output_shapes

:*
dtype0љ
dense_25/MatMulMatMuldense_24/Relu:activations:0&dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
dense_25/BiasAdd/ReadVariableOpReadVariableOp(dense_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
dense_25/BiasAddBiasAdddense_25/MatMul:product:0'dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
dense_25/SoftmaxSoftmaxdense_25/BiasAdd:output:0*
T0*'
_output_shapes
:         i
IdentityIdentitydense_25/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         ђ
NoOpNoOp ^dense_24/BiasAdd/ReadVariableOp^dense_24/MatMul/ReadVariableOp ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp,^lstm_24/lstm_cell_24/BiasAdd/ReadVariableOp+^lstm_24/lstm_cell_24/MatMul/ReadVariableOp-^lstm_24/lstm_cell_24/MatMul_1/ReadVariableOp^lstm_24/while,^lstm_25/lstm_cell_25/BiasAdd/ReadVariableOp+^lstm_25/lstm_cell_25/MatMul/ReadVariableOp-^lstm_25/lstm_cell_25/MatMul_1/ReadVariableOp^lstm_25/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         	: : : : : : : : : : 2B
dense_24/BiasAdd/ReadVariableOpdense_24/BiasAdd/ReadVariableOp2@
dense_24/MatMul/ReadVariableOpdense_24/MatMul/ReadVariableOp2B
dense_25/BiasAdd/ReadVariableOpdense_25/BiasAdd/ReadVariableOp2@
dense_25/MatMul/ReadVariableOpdense_25/MatMul/ReadVariableOp2Z
+lstm_24/lstm_cell_24/BiasAdd/ReadVariableOp+lstm_24/lstm_cell_24/BiasAdd/ReadVariableOp2X
*lstm_24/lstm_cell_24/MatMul/ReadVariableOp*lstm_24/lstm_cell_24/MatMul/ReadVariableOp2\
,lstm_24/lstm_cell_24/MatMul_1/ReadVariableOp,lstm_24/lstm_cell_24/MatMul_1/ReadVariableOp2
lstm_24/whilelstm_24/while2Z
+lstm_25/lstm_cell_25/BiasAdd/ReadVariableOp+lstm_25/lstm_cell_25/BiasAdd/ReadVariableOp2X
*lstm_25/lstm_cell_25/MatMul/ReadVariableOp*lstm_25/lstm_cell_25/MatMul/ReadVariableOp2\
,lstm_25/lstm_cell_25/MatMul_1/ReadVariableOp,lstm_25/lstm_cell_25/MatMul_1/ReadVariableOp2
lstm_25/whilelstm_25/while:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
П
є
H__inference_lstm_cell_24_layer_call_and_return_conditional_losses_196055

inputs
states_0
states_11
matmul_readvariableop_resource:		љ3
 matmul_1_readvariableop_resource:	dљ.
biasadd_readvariableop_resource:	љ
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		љ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         љs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:         d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         dЉ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         	:         d:         d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:QM
'
_output_shapes
:         d
"
_user_specified_name
states_1:QM
'
_output_shapes
:         d
"
_user_specified_name
states_0:O K
'
_output_shapes
:         	
 
_user_specified_nameinputs
▒
└
I__inference_sequential_12_layer_call_and_return_conditional_losses_193818

inputs!
lstm_24_193792:		љ!
lstm_24_193794:	dљ
lstm_24_193796:	љ!
lstm_25_193799:	dљ!
lstm_25_193801:	dљ
lstm_25_193803:	љ!
dense_24_193807:d
dense_24_193809:!
dense_25_193812:
dense_25_193814:
identityѕб dense_24/StatefulPartitionedCallб dense_25/StatefulPartitionedCallбlstm_24/StatefulPartitionedCallбlstm_25/StatefulPartitionedCallѓ
lstm_24/StatefulPartitionedCallStatefulPartitionedCallinputslstm_24_193792lstm_24_193794lstm_24_193796*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_lstm_24_layer_call_and_return_conditional_losses_193555а
lstm_25/StatefulPartitionedCallStatefulPartitionedCall(lstm_24/StatefulPartitionedCall:output:0lstm_25_193799lstm_25_193801lstm_25_193803*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_lstm_25_layer_call_and_return_conditional_losses_193707я
dropout_12/PartitionedCallPartitionedCall(lstm_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dropout_12_layer_call_and_return_conditional_losses_193719Ї
 dense_24/StatefulPartitionedCallStatefulPartitionedCall#dropout_12/PartitionedCall:output:0dense_24_193807dense_24_193809*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_dense_24_layer_call_and_return_conditional_losses_193386Њ
 dense_25/StatefulPartitionedCallStatefulPartitionedCall)dense_24/StatefulPartitionedCall:output:0dense_25_193812dense_25_193814*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_dense_25_layer_call_and_return_conditional_losses_193403x
IdentityIdentity)dense_25/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         л
NoOpNoOp!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall ^lstm_24/StatefulPartitionedCall ^lstm_25/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         	: : : : : : : : : : 2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2B
lstm_24/StatefulPartitionedCalllstm_24/StatefulPartitionedCall2B
lstm_25/StatefulPartitionedCalllstm_25/StatefulPartitionedCall:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
├

ё
.__inference_sequential_12_layer_call_fn_193787
lstm_24_input
unknown:		љ
	unknown_0:	dљ
	unknown_1:	љ
	unknown_2:	dљ
	unknown_3:	dљ
	unknown_4:	љ
	unknown_5:d
	unknown_6:
	unknown_7:
	unknown_8:
identityѕбStatefulPartitionedCall═
StatefulPartitionedCallStatefulPartitionedCalllstm_24_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_sequential_12_layer_call_and_return_conditional_losses_193764o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         	: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:         	
'
_user_specified_namelstm_24_input
џ

e
F__inference_dropout_12_layer_call_and_return_conditional_losses_193373

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         dQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::ь¤ї
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         d*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?д
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         dT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Њ
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:         da
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:         d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         d:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
«8
Ё
C__inference_lstm_24_layer_call_and_return_conditional_losses_192643

inputs&
lstm_cell_24_192561:		љ&
lstm_cell_24_192563:	dљ"
lstm_cell_24_192565:	љ
identityѕб$lstm_cell_24/StatefulPartitionedCallбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  	R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         	*
shrink_axis_maskш
$lstm_cell_24/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_24_192561lstm_cell_24_192563lstm_cell_24_192565*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_lstm_cell_24_layer_call_and_return_conditional_losses_192560n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : и
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_24_192561lstm_cell_24_192563lstm_cell_24_192565*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_192574*
condR
while_cond_192573*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  du
NoOpNoOp%^lstm_cell_24/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  	: : : 2L
$lstm_cell_24/StatefulPartitionedCall$lstm_cell_24/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  	
 
_user_specified_nameinputs
а

ш
D__inference_dense_25_layer_call_and_return_conditional_losses_193403

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
┬
ќ
)__inference_dense_25_layer_call_fn_195946

inputs
unknown:
	unknown_0:
identityѕбStatefulPartitionedCall┘
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_dense_25_layer_call_and_return_conditional_losses_193403o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╩Џ
Њ
"__inference__traced_restore_196510
file_prefix2
 assignvariableop_dense_24_kernel:d.
 assignvariableop_1_dense_24_bias:4
"assignvariableop_2_dense_25_kernel:.
 assignvariableop_3_dense_25_bias:A
.assignvariableop_4_lstm_24_lstm_cell_24_kernel:		љK
8assignvariableop_5_lstm_24_lstm_cell_24_recurrent_kernel:	dљ;
,assignvariableop_6_lstm_24_lstm_cell_24_bias:	љA
.assignvariableop_7_lstm_25_lstm_cell_25_kernel:	dљK
8assignvariableop_8_lstm_25_lstm_cell_25_recurrent_kernel:	dљ;
,assignvariableop_9_lstm_25_lstm_cell_25_bias:	љ'
assignvariableop_10_iteration:	 +
!assignvariableop_11_learning_rate: I
6assignvariableop_12_adam_m_lstm_24_lstm_cell_24_kernel:		љI
6assignvariableop_13_adam_v_lstm_24_lstm_cell_24_kernel:		љS
@assignvariableop_14_adam_m_lstm_24_lstm_cell_24_recurrent_kernel:	dљS
@assignvariableop_15_adam_v_lstm_24_lstm_cell_24_recurrent_kernel:	dљC
4assignvariableop_16_adam_m_lstm_24_lstm_cell_24_bias:	љC
4assignvariableop_17_adam_v_lstm_24_lstm_cell_24_bias:	љI
6assignvariableop_18_adam_m_lstm_25_lstm_cell_25_kernel:	dљI
6assignvariableop_19_adam_v_lstm_25_lstm_cell_25_kernel:	dљS
@assignvariableop_20_adam_m_lstm_25_lstm_cell_25_recurrent_kernel:	dљS
@assignvariableop_21_adam_v_lstm_25_lstm_cell_25_recurrent_kernel:	dљC
4assignvariableop_22_adam_m_lstm_25_lstm_cell_25_bias:	љC
4assignvariableop_23_adam_v_lstm_25_lstm_cell_25_bias:	љ<
*assignvariableop_24_adam_m_dense_24_kernel:d<
*assignvariableop_25_adam_v_dense_24_kernel:d6
(assignvariableop_26_adam_m_dense_24_bias:6
(assignvariableop_27_adam_v_dense_24_bias:<
*assignvariableop_28_adam_m_dense_25_kernel:<
*assignvariableop_29_adam_v_dense_25_kernel:6
(assignvariableop_30_adam_m_dense_25_bias:6
(assignvariableop_31_adam_v_dense_25_bias:%
assignvariableop_32_total_1: %
assignvariableop_33_count_1: #
assignvariableop_34_total: #
assignvariableop_35_count: 
identity_37ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_26бAssignVariableOp_27бAssignVariableOp_28бAssignVariableOp_29бAssignVariableOp_3бAssignVariableOp_30бAssignVariableOp_31бAssignVariableOp_32бAssignVariableOp_33бAssignVariableOp_34бAssignVariableOp_35бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9Ъ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*┼
value╗BИ%B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH║
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ┌
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ф
_output_shapesЌ
ћ:::::::::::::::::::::::::::::::::::::*3
dtypes)
'2%	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOpAssignVariableOp assignvariableop_dense_24_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_24_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_25_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_25_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:┼
AssignVariableOp_4AssignVariableOp.assignvariableop_4_lstm_24_lstm_cell_24_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_5AssignVariableOp8assignvariableop_5_lstm_24_lstm_cell_24_recurrent_kernelIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_6AssignVariableOp,assignvariableop_6_lstm_24_lstm_cell_24_biasIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:┼
AssignVariableOp_7AssignVariableOp.assignvariableop_7_lstm_25_lstm_cell_25_kernelIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_8AssignVariableOp8assignvariableop_8_lstm_25_lstm_cell_25_recurrent_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_9AssignVariableOp,assignvariableop_9_lstm_25_lstm_cell_25_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:Х
AssignVariableOp_10AssignVariableOpassignvariableop_10_iterationIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_11AssignVariableOp!assignvariableop_11_learning_rateIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_12AssignVariableOp6assignvariableop_12_adam_m_lstm_24_lstm_cell_24_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_13AssignVariableOp6assignvariableop_13_adam_v_lstm_24_lstm_cell_24_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:┘
AssignVariableOp_14AssignVariableOp@assignvariableop_14_adam_m_lstm_24_lstm_cell_24_recurrent_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:┘
AssignVariableOp_15AssignVariableOp@assignvariableop_15_adam_v_lstm_24_lstm_cell_24_recurrent_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:═
AssignVariableOp_16AssignVariableOp4assignvariableop_16_adam_m_lstm_24_lstm_cell_24_biasIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:═
AssignVariableOp_17AssignVariableOp4assignvariableop_17_adam_v_lstm_24_lstm_cell_24_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_18AssignVariableOp6assignvariableop_18_adam_m_lstm_25_lstm_cell_25_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_19AssignVariableOp6assignvariableop_19_adam_v_lstm_25_lstm_cell_25_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:┘
AssignVariableOp_20AssignVariableOp@assignvariableop_20_adam_m_lstm_25_lstm_cell_25_recurrent_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:┘
AssignVariableOp_21AssignVariableOp@assignvariableop_21_adam_v_lstm_25_lstm_cell_25_recurrent_kernelIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:═
AssignVariableOp_22AssignVariableOp4assignvariableop_22_adam_m_lstm_25_lstm_cell_25_biasIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:═
AssignVariableOp_23AssignVariableOp4assignvariableop_23_adam_v_lstm_25_lstm_cell_25_biasIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_m_dense_24_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_v_dense_24_kernelIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_m_dense_24_biasIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_27AssignVariableOp(assignvariableop_27_adam_v_dense_24_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_28AssignVariableOp*assignvariableop_28_adam_m_dense_25_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_v_dense_25_kernelIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_m_dense_25_biasIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_31AssignVariableOp(assignvariableop_31_adam_v_dense_25_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_32AssignVariableOpassignvariableop_32_total_1Identity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_33AssignVariableOpassignvariableop_33_count_1Identity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_34AssignVariableOpassignvariableop_34_totalIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_35AssignVariableOpassignvariableop_35_countIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 у
Identity_36Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_37IdentityIdentity_36:output:0^NoOp_1*
T0*
_output_shapes
: н
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_37Identity_37:output:0*]
_input_shapesL
J: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
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
AssignVariableOp_1AssignVariableOp_12*
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
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
├

ё
.__inference_sequential_12_layer_call_fn_193841
lstm_24_input
unknown:		љ
	unknown_0:	dљ
	unknown_1:	љ
	unknown_2:	dљ
	unknown_3:	dљ
	unknown_4:	љ
	unknown_5:d
	unknown_6:
	unknown_7:
	unknown_8:
identityѕбStatefulPartitionedCall═
StatefulPartitionedCallStatefulPartitionedCalllstm_24_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_sequential_12_layer_call_and_return_conditional_losses_193818o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         	: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:         	
'
_user_specified_namelstm_24_input
«

§
.__inference_sequential_12_layer_call_fn_194045

inputs
unknown:		љ
	unknown_0:	dљ
	unknown_1:	љ
	unknown_2:	dљ
	unknown_3:	dљ
	unknown_4:	љ
	unknown_5:d
	unknown_6:
	unknown_7:
	unknown_8:
identityѕбStatefulPartitionedCallк
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_sequential_12_layer_call_and_return_conditional_losses_193818o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         	: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
§J
Ю
C__inference_lstm_24_layer_call_and_return_conditional_losses_194980
inputs_0>
+lstm_cell_24_matmul_readvariableop_resource:		љ@
-lstm_cell_24_matmul_1_readvariableop_resource:	dљ;
,lstm_cell_24_biasadd_readvariableop_resource:	љ
identityѕб#lstm_cell_24/BiasAdd/ReadVariableOpб"lstm_cell_24/MatMul/ReadVariableOpб$lstm_cell_24/MatMul_1/ReadVariableOpбwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  	R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         	*
shrink_axis_maskЈ
"lstm_cell_24/MatMul/ReadVariableOpReadVariableOp+lstm_cell_24_matmul_readvariableop_resource*
_output_shapes
:		љ*
dtype0ќ
lstm_cell_24/MatMulMatMulstrided_slice_2:output:0*lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЊ
$lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_24_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0љ
lstm_cell_24/MatMul_1MatMulzeros:output:0,lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љї
lstm_cell_24/addAddV2lstm_cell_24/MatMul:product:0lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:         љЇ
#lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_24_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0Ћ
lstm_cell_24/BiasAddBiasAddlstm_cell_24/add:z:0+lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ^
lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_cell_24/splitSplit%lstm_cell_24/split/split_dim:output:0lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitn
lstm_cell_24/SigmoidSigmoidlstm_cell_24/split:output:0*
T0*'
_output_shapes
:         dp
lstm_cell_24/Sigmoid_1Sigmoidlstm_cell_24/split:output:1*
T0*'
_output_shapes
:         dw
lstm_cell_24/mulMullstm_cell_24/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dh
lstm_cell_24/ReluRelulstm_cell_24/split:output:2*
T0*'
_output_shapes
:         dє
lstm_cell_24/mul_1Mullstm_cell_24/Sigmoid:y:0lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:         d{
lstm_cell_24/add_1AddV2lstm_cell_24/mul:z:0lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:         dp
lstm_cell_24/Sigmoid_2Sigmoidlstm_cell_24/split:output:3*
T0*'
_output_shapes
:         de
lstm_cell_24/Relu_1Relulstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:         dі
lstm_cell_24/mul_2Mullstm_cell_24/Sigmoid_2:y:0!lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ѓ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_24_matmul_readvariableop_resource-lstm_cell_24_matmul_1_readvariableop_resource,lstm_cell_24_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_194896*
condR
while_cond_194895*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  d└
NoOpNoOp$^lstm_cell_24/BiasAdd/ReadVariableOp#^lstm_cell_24/MatMul/ReadVariableOp%^lstm_cell_24/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  	: : : 2J
#lstm_cell_24/BiasAdd/ReadVariableOp#lstm_cell_24/BiasAdd/ReadVariableOp2H
"lstm_cell_24/MatMul/ReadVariableOp"lstm_cell_24/MatMul/ReadVariableOp2L
$lstm_cell_24/MatMul_1/ReadVariableOp$lstm_cell_24/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  	
"
_user_specified_name
inputs_0
Ќ	
├
while_cond_195038
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_195038___redundant_placeholder04
0while_while_cond_195038___redundant_placeholder14
0while_while_cond_195038___redundant_placeholder24
0while_while_cond_195038___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
┼K
Џ
C__inference_lstm_25_layer_call_and_return_conditional_losses_193707

inputs>
+lstm_cell_25_matmul_readvariableop_resource:	dљ@
-lstm_cell_25_matmul_1_readvariableop_resource:	dљ;
,lstm_cell_25_biasadd_readvariableop_resource:	љ
identityѕб#lstm_cell_25/BiasAdd/ReadVariableOpб"lstm_cell_25/MatMul/ReadVariableOpб$lstm_cell_25/MatMul_1/ReadVariableOpбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         dR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskЈ
"lstm_cell_25/MatMul/ReadVariableOpReadVariableOp+lstm_cell_25_matmul_readvariableop_resource*
_output_shapes
:	dљ*
dtype0ќ
lstm_cell_25/MatMulMatMulstrided_slice_2:output:0*lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЊ
$lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_25_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0љ
lstm_cell_25/MatMul_1MatMulzeros:output:0,lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љї
lstm_cell_25/addAddV2lstm_cell_25/MatMul:product:0lstm_cell_25/MatMul_1:product:0*
T0*(
_output_shapes
:         љЇ
#lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_25_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0Ћ
lstm_cell_25/BiasAddBiasAddlstm_cell_25/add:z:0+lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ^
lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_cell_25/splitSplit%lstm_cell_25/split/split_dim:output:0lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitn
lstm_cell_25/SigmoidSigmoidlstm_cell_25/split:output:0*
T0*'
_output_shapes
:         dp
lstm_cell_25/Sigmoid_1Sigmoidlstm_cell_25/split:output:1*
T0*'
_output_shapes
:         dw
lstm_cell_25/mulMullstm_cell_25/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dh
lstm_cell_25/ReluRelulstm_cell_25/split:output:2*
T0*'
_output_shapes
:         dє
lstm_cell_25/mul_1Mullstm_cell_25/Sigmoid:y:0lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:         d{
lstm_cell_25/add_1AddV2lstm_cell_25/mul:z:0lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:         dp
lstm_cell_25/Sigmoid_2Sigmoidlstm_cell_25/split:output:3*
T0*'
_output_shapes
:         de
lstm_cell_25/Relu_1Relulstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:         dі
lstm_cell_25/mul_2Mullstm_cell_25/Sigmoid_2:y:0!lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ѓ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_25_matmul_readvariableop_resource-lstm_cell_25_matmul_1_readvariableop_resource,lstm_cell_25_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_193622*
condR
while_cond_193621*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         d└
NoOpNoOp$^lstm_cell_25/BiasAdd/ReadVariableOp#^lstm_cell_25/MatMul/ReadVariableOp%^lstm_cell_25/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2J
#lstm_cell_25/BiasAdd/ReadVariableOp#lstm_cell_25/BiasAdd/ReadVariableOp2H
"lstm_cell_25/MatMul/ReadVariableOp"lstm_cell_25/MatMul/ReadVariableOp2L
$lstm_cell_25/MatMul_1/ReadVariableOp$lstm_cell_25/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
Ќ	
├
while_cond_195181
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_195181___redundant_placeholder04
0while_while_cond_195181___redundant_placeholder14
0while_while_cond_195181___redundant_placeholder24
0while_while_cond_195181___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
┐J
Џ
C__inference_lstm_24_layer_call_and_return_conditional_losses_193201

inputs>
+lstm_cell_24_matmul_readvariableop_resource:		љ@
-lstm_cell_24_matmul_1_readvariableop_resource:	dљ;
,lstm_cell_24_biasadd_readvariableop_resource:	љ
identityѕб#lstm_cell_24/BiasAdd/ReadVariableOpб"lstm_cell_24/MatMul/ReadVariableOpб$lstm_cell_24/MatMul_1/ReadVariableOpбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         	R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         	*
shrink_axis_maskЈ
"lstm_cell_24/MatMul/ReadVariableOpReadVariableOp+lstm_cell_24_matmul_readvariableop_resource*
_output_shapes
:		љ*
dtype0ќ
lstm_cell_24/MatMulMatMulstrided_slice_2:output:0*lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЊ
$lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_24_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0љ
lstm_cell_24/MatMul_1MatMulzeros:output:0,lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љї
lstm_cell_24/addAddV2lstm_cell_24/MatMul:product:0lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:         љЇ
#lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_24_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0Ћ
lstm_cell_24/BiasAddBiasAddlstm_cell_24/add:z:0+lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ^
lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_cell_24/splitSplit%lstm_cell_24/split/split_dim:output:0lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitn
lstm_cell_24/SigmoidSigmoidlstm_cell_24/split:output:0*
T0*'
_output_shapes
:         dp
lstm_cell_24/Sigmoid_1Sigmoidlstm_cell_24/split:output:1*
T0*'
_output_shapes
:         dw
lstm_cell_24/mulMullstm_cell_24/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dh
lstm_cell_24/ReluRelulstm_cell_24/split:output:2*
T0*'
_output_shapes
:         dє
lstm_cell_24/mul_1Mullstm_cell_24/Sigmoid:y:0lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:         d{
lstm_cell_24/add_1AddV2lstm_cell_24/mul:z:0lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:         dp
lstm_cell_24/Sigmoid_2Sigmoidlstm_cell_24/split:output:3*
T0*'
_output_shapes
:         de
lstm_cell_24/Relu_1Relulstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:         dі
lstm_cell_24/mul_2Mullstm_cell_24/Sigmoid_2:y:0!lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ѓ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_24_matmul_readvariableop_resource-lstm_cell_24_matmul_1_readvariableop_resource,lstm_cell_24_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_193117*
condR
while_cond_193116*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         d└
NoOpNoOp$^lstm_cell_24/BiasAdd/ReadVariableOp#^lstm_cell_24/MatMul/ReadVariableOp%^lstm_cell_24/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         	: : : 2J
#lstm_cell_24/BiasAdd/ReadVariableOp#lstm_cell_24/BiasAdd/ReadVariableOp2H
"lstm_cell_24/MatMul/ReadVariableOp"lstm_cell_24/MatMul/ReadVariableOp2L
$lstm_cell_24/MatMul_1/ReadVariableOp$lstm_cell_24/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
Ќ	
├
while_cond_193470
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_193470___redundant_placeholder04
0while_while_cond_193470___redundant_placeholder14
0while_while_cond_193470___redundant_placeholder24
0while_while_cond_193470___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Ќ	
├
while_cond_195369
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_195369___redundant_placeholder04
0while_while_cond_195369___redundant_placeholder14
0while_while_cond_195369___redundant_placeholder24
0while_while_cond_195369___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
в
Ш
-__inference_lstm_cell_25_layer_call_fn_196072

inputs
states_0
states_1
unknown:	dљ
	unknown_0:	dљ
	unknown_1:	љ
identity

identity_1

identity_2ѕбStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_lstm_cell_25_layer_call_and_return_conditional_losses_192765o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         d:         d:         d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:QM
'
_output_shapes
:         d
"
_user_specified_name
states_1:QM
'
_output_shapes
:         d
"
_user_specified_name
states_0:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
┼K
Џ
C__inference_lstm_25_layer_call_and_return_conditional_losses_195890

inputs>
+lstm_cell_25_matmul_readvariableop_resource:	dљ@
-lstm_cell_25_matmul_1_readvariableop_resource:	dљ;
,lstm_cell_25_biasadd_readvariableop_resource:	љ
identityѕб#lstm_cell_25/BiasAdd/ReadVariableOpб"lstm_cell_25/MatMul/ReadVariableOpб$lstm_cell_25/MatMul_1/ReadVariableOpбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         dR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskЈ
"lstm_cell_25/MatMul/ReadVariableOpReadVariableOp+lstm_cell_25_matmul_readvariableop_resource*
_output_shapes
:	dљ*
dtype0ќ
lstm_cell_25/MatMulMatMulstrided_slice_2:output:0*lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЊ
$lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_25_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0љ
lstm_cell_25/MatMul_1MatMulzeros:output:0,lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љї
lstm_cell_25/addAddV2lstm_cell_25/MatMul:product:0lstm_cell_25/MatMul_1:product:0*
T0*(
_output_shapes
:         љЇ
#lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_25_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0Ћ
lstm_cell_25/BiasAddBiasAddlstm_cell_25/add:z:0+lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ^
lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_cell_25/splitSplit%lstm_cell_25/split/split_dim:output:0lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitn
lstm_cell_25/SigmoidSigmoidlstm_cell_25/split:output:0*
T0*'
_output_shapes
:         dp
lstm_cell_25/Sigmoid_1Sigmoidlstm_cell_25/split:output:1*
T0*'
_output_shapes
:         dw
lstm_cell_25/mulMullstm_cell_25/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dh
lstm_cell_25/ReluRelulstm_cell_25/split:output:2*
T0*'
_output_shapes
:         dє
lstm_cell_25/mul_1Mullstm_cell_25/Sigmoid:y:0lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:         d{
lstm_cell_25/add_1AddV2lstm_cell_25/mul:z:0lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:         dp
lstm_cell_25/Sigmoid_2Sigmoidlstm_cell_25/split:output:3*
T0*'
_output_shapes
:         de
lstm_cell_25/Relu_1Relulstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:         dі
lstm_cell_25/mul_2Mullstm_cell_25/Sigmoid_2:y:0!lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ѓ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_25_matmul_readvariableop_resource-lstm_cell_25_matmul_1_readvariableop_resource,lstm_cell_25_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_195805*
condR
while_cond_195804*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         d└
NoOpNoOp$^lstm_cell_25/BiasAdd/ReadVariableOp#^lstm_cell_25/MatMul/ReadVariableOp%^lstm_cell_25/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2J
#lstm_cell_25/BiasAdd/ReadVariableOp#lstm_cell_25/BiasAdd/ReadVariableOp2H
"lstm_cell_25/MatMul/ReadVariableOp"lstm_cell_25/MatMul/ReadVariableOp2L
$lstm_cell_25/MatMul_1/ReadVariableOp$lstm_cell_25/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
§J
Ю
C__inference_lstm_24_layer_call_and_return_conditional_losses_194837
inputs_0>
+lstm_cell_24_matmul_readvariableop_resource:		љ@
-lstm_cell_24_matmul_1_readvariableop_resource:	dљ;
,lstm_cell_24_biasadd_readvariableop_resource:	љ
identityѕб#lstm_cell_24/BiasAdd/ReadVariableOpб"lstm_cell_24/MatMul/ReadVariableOpб$lstm_cell_24/MatMul_1/ReadVariableOpбwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  	R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         	*
shrink_axis_maskЈ
"lstm_cell_24/MatMul/ReadVariableOpReadVariableOp+lstm_cell_24_matmul_readvariableop_resource*
_output_shapes
:		љ*
dtype0ќ
lstm_cell_24/MatMulMatMulstrided_slice_2:output:0*lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЊ
$lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_24_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0љ
lstm_cell_24/MatMul_1MatMulzeros:output:0,lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љї
lstm_cell_24/addAddV2lstm_cell_24/MatMul:product:0lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:         љЇ
#lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_24_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0Ћ
lstm_cell_24/BiasAddBiasAddlstm_cell_24/add:z:0+lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ^
lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_cell_24/splitSplit%lstm_cell_24/split/split_dim:output:0lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitn
lstm_cell_24/SigmoidSigmoidlstm_cell_24/split:output:0*
T0*'
_output_shapes
:         dp
lstm_cell_24/Sigmoid_1Sigmoidlstm_cell_24/split:output:1*
T0*'
_output_shapes
:         dw
lstm_cell_24/mulMullstm_cell_24/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dh
lstm_cell_24/ReluRelulstm_cell_24/split:output:2*
T0*'
_output_shapes
:         dє
lstm_cell_24/mul_1Mullstm_cell_24/Sigmoid:y:0lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:         d{
lstm_cell_24/add_1AddV2lstm_cell_24/mul:z:0lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:         dp
lstm_cell_24/Sigmoid_2Sigmoidlstm_cell_24/split:output:3*
T0*'
_output_shapes
:         de
lstm_cell_24/Relu_1Relulstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:         dі
lstm_cell_24/mul_2Mullstm_cell_24/Sigmoid_2:y:0!lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ѓ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_24_matmul_readvariableop_resource-lstm_cell_24_matmul_1_readvariableop_resource,lstm_cell_24_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_194753*
condR
while_cond_194752*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  d└
NoOpNoOp$^lstm_cell_24/BiasAdd/ReadVariableOp#^lstm_cell_24/MatMul/ReadVariableOp%^lstm_cell_24/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  	: : : 2J
#lstm_cell_24/BiasAdd/ReadVariableOp#lstm_cell_24/BiasAdd/ReadVariableOp2H
"lstm_cell_24/MatMul/ReadVariableOp"lstm_cell_24/MatMul/ReadVariableOp2L
$lstm_cell_24/MatMul_1/ReadVariableOp$lstm_cell_24/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  	
"
_user_specified_name
inputs_0
П
т
I__inference_sequential_12_layer_call_and_return_conditional_losses_193764

inputs!
lstm_24_193738:		љ!
lstm_24_193740:	dљ
lstm_24_193742:	љ!
lstm_25_193745:	dљ!
lstm_25_193747:	dљ
lstm_25_193749:	љ!
dense_24_193753:d
dense_24_193755:!
dense_25_193758:
dense_25_193760:
identityѕб dense_24/StatefulPartitionedCallб dense_25/StatefulPartitionedCallб"dropout_12/StatefulPartitionedCallбlstm_24/StatefulPartitionedCallбlstm_25/StatefulPartitionedCallѓ
lstm_24/StatefulPartitionedCallStatefulPartitionedCallinputslstm_24_193738lstm_24_193740lstm_24_193742*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_lstm_24_layer_call_and_return_conditional_losses_193201а
lstm_25/StatefulPartitionedCallStatefulPartitionedCall(lstm_24/StatefulPartitionedCall:output:0lstm_25_193745lstm_25_193747lstm_25_193749*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_lstm_25_layer_call_and_return_conditional_losses_193353Ь
"dropout_12/StatefulPartitionedCallStatefulPartitionedCall(lstm_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dropout_12_layer_call_and_return_conditional_losses_193373Ћ
 dense_24/StatefulPartitionedCallStatefulPartitionedCall+dropout_12/StatefulPartitionedCall:output:0dense_24_193753dense_24_193755*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_dense_24_layer_call_and_return_conditional_losses_193386Њ
 dense_25/StatefulPartitionedCallStatefulPartitionedCall)dense_24/StatefulPartitionedCall:output:0dense_25_193758dense_25_193760*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_dense_25_layer_call_and_return_conditional_losses_193403x
IdentityIdentity)dense_25/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ш
NoOpNoOp!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall#^dropout_12/StatefulPartitionedCall ^lstm_24/StatefulPartitionedCall ^lstm_25/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         	: : : : : : : : : : 2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2H
"dropout_12/StatefulPartitionedCall"dropout_12/StatefulPartitionedCall2B
lstm_24/StatefulPartitionedCalllstm_24/StatefulPartitionedCall2B
lstm_25/StatefulPartitionedCalllstm_25/StatefulPartitionedCall:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
╚#
с
while_body_192429
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_24_192453_0:		љ.
while_lstm_cell_24_192455_0:	dљ*
while_lstm_cell_24_192457_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_24_192453:		љ,
while_lstm_cell_24_192455:	dљ(
while_lstm_cell_24_192457:	љѕб*while/lstm_cell_24/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         	*
element_dtype0│
*while/lstm_cell_24/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_24_192453_0while_lstm_cell_24_192455_0while_lstm_cell_24_192457_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_lstm_cell_24_layer_call_and_return_conditional_losses_192415▄
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_24/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: љ
while/Identity_4Identity3while/lstm_cell_24/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         dљ
while/Identity_5Identity3while/lstm_cell_24/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         dy

while/NoOpNoOp+^while/lstm_cell_24/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"8
while_lstm_cell_24_192453while_lstm_cell_24_192453_0"8
while_lstm_cell_24_192455while_lstm_cell_24_192455_0"8
while_lstm_cell_24_192457while_lstm_cell_24_192457_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_24/StatefulPartitionedCall*while/lstm_cell_24/StatefulPartitionedCall:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Ј
и
(__inference_lstm_25_layer_call_fn_195288
inputs_0
unknown:	dљ
	unknown_0:	dљ
	unknown_1:	љ
identityѕбStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_lstm_25_layer_call_and_return_conditional_losses_192997o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs_0
Ќ	
├
while_cond_192573
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_192573___redundant_placeholder04
0while_while_cond_192573___redundant_placeholder14
0while_while_cond_192573___redundant_placeholder24
0while_while_cond_192573___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
г
ч
'sequential_12_lstm_24_while_cond_192110H
Dsequential_12_lstm_24_while_sequential_12_lstm_24_while_loop_counterN
Jsequential_12_lstm_24_while_sequential_12_lstm_24_while_maximum_iterations+
'sequential_12_lstm_24_while_placeholder-
)sequential_12_lstm_24_while_placeholder_1-
)sequential_12_lstm_24_while_placeholder_2-
)sequential_12_lstm_24_while_placeholder_3J
Fsequential_12_lstm_24_while_less_sequential_12_lstm_24_strided_slice_1`
\sequential_12_lstm_24_while_sequential_12_lstm_24_while_cond_192110___redundant_placeholder0`
\sequential_12_lstm_24_while_sequential_12_lstm_24_while_cond_192110___redundant_placeholder1`
\sequential_12_lstm_24_while_sequential_12_lstm_24_while_cond_192110___redundant_placeholder2`
\sequential_12_lstm_24_while_sequential_12_lstm_24_while_cond_192110___redundant_placeholder3(
$sequential_12_lstm_24_while_identity
║
 sequential_12/lstm_24/while/LessLess'sequential_12_lstm_24_while_placeholderFsequential_12_lstm_24_while_less_sequential_12_lstm_24_strided_slice_1*
T0*
_output_shapes
: w
$sequential_12/lstm_24/while/IdentityIdentity$sequential_12/lstm_24/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_12_lstm_24_while_identity-sequential_12/lstm_24/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :fb

_output_shapes
: 
H
_user_specified_name0.sequential_12/lstm_24/while/maximum_iterations:` \

_output_shapes
: 
B
_user_specified_name*(sequential_12/lstm_24/while/loop_counter
а

ш
D__inference_dense_25_layer_call_and_return_conditional_losses_195957

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
┐J
Џ
C__inference_lstm_24_layer_call_and_return_conditional_losses_195266

inputs>
+lstm_cell_24_matmul_readvariableop_resource:		љ@
-lstm_cell_24_matmul_1_readvariableop_resource:	dљ;
,lstm_cell_24_biasadd_readvariableop_resource:	љ
identityѕб#lstm_cell_24/BiasAdd/ReadVariableOpб"lstm_cell_24/MatMul/ReadVariableOpб$lstm_cell_24/MatMul_1/ReadVariableOpбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         	R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         	*
shrink_axis_maskЈ
"lstm_cell_24/MatMul/ReadVariableOpReadVariableOp+lstm_cell_24_matmul_readvariableop_resource*
_output_shapes
:		љ*
dtype0ќ
lstm_cell_24/MatMulMatMulstrided_slice_2:output:0*lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЊ
$lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_24_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0љ
lstm_cell_24/MatMul_1MatMulzeros:output:0,lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љї
lstm_cell_24/addAddV2lstm_cell_24/MatMul:product:0lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:         љЇ
#lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_24_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0Ћ
lstm_cell_24/BiasAddBiasAddlstm_cell_24/add:z:0+lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ^
lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_cell_24/splitSplit%lstm_cell_24/split/split_dim:output:0lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitn
lstm_cell_24/SigmoidSigmoidlstm_cell_24/split:output:0*
T0*'
_output_shapes
:         dp
lstm_cell_24/Sigmoid_1Sigmoidlstm_cell_24/split:output:1*
T0*'
_output_shapes
:         dw
lstm_cell_24/mulMullstm_cell_24/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dh
lstm_cell_24/ReluRelulstm_cell_24/split:output:2*
T0*'
_output_shapes
:         dє
lstm_cell_24/mul_1Mullstm_cell_24/Sigmoid:y:0lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:         d{
lstm_cell_24/add_1AddV2lstm_cell_24/mul:z:0lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:         dp
lstm_cell_24/Sigmoid_2Sigmoidlstm_cell_24/split:output:3*
T0*'
_output_shapes
:         de
lstm_cell_24/Relu_1Relulstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:         dі
lstm_cell_24/mul_2Mullstm_cell_24/Sigmoid_2:y:0!lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ѓ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_24_matmul_readvariableop_resource-lstm_cell_24_matmul_1_readvariableop_resource,lstm_cell_24_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_195182*
condR
while_cond_195181*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         d└
NoOpNoOp$^lstm_cell_24/BiasAdd/ReadVariableOp#^lstm_cell_24/MatMul/ReadVariableOp%^lstm_cell_24/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         	: : : 2J
#lstm_cell_24/BiasAdd/ReadVariableOp#lstm_cell_24/BiasAdd/ReadVariableOp2H
"lstm_cell_24/MatMul/ReadVariableOp"lstm_cell_24/MatMul/ReadVariableOp2L
$lstm_cell_24/MatMul_1/ReadVariableOp$lstm_cell_24/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
╚#
с
while_body_192574
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_24_192598_0:		љ.
while_lstm_cell_24_192600_0:	dљ*
while_lstm_cell_24_192602_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_24_192598:		љ,
while_lstm_cell_24_192600:	dљ(
while_lstm_cell_24_192602:	љѕб*while/lstm_cell_24/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         	*
element_dtype0│
*while/lstm_cell_24/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_24_192598_0while_lstm_cell_24_192600_0while_lstm_cell_24_192602_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_lstm_cell_24_layer_call_and_return_conditional_losses_192560▄
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_24/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: љ
while/Identity_4Identity3while/lstm_cell_24/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         dљ
while/Identity_5Identity3while/lstm_cell_24/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         dy

while/NoOpNoOp+^while/lstm_cell_24/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"8
while_lstm_cell_24_192598while_lstm_cell_24_192598_0"8
while_lstm_cell_24_192600while_lstm_cell_24_192600_0"8
while_lstm_cell_24_192602while_lstm_cell_24_192602_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_24/StatefulPartitionedCall*while/lstm_cell_24/StatefulPartitionedCall:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
ѓ▀
╔
!__inference__wrapped_model_192351
lstm_24_inputT
Asequential_12_lstm_24_lstm_cell_24_matmul_readvariableop_resource:		љV
Csequential_12_lstm_24_lstm_cell_24_matmul_1_readvariableop_resource:	dљQ
Bsequential_12_lstm_24_lstm_cell_24_biasadd_readvariableop_resource:	љT
Asequential_12_lstm_25_lstm_cell_25_matmul_readvariableop_resource:	dљV
Csequential_12_lstm_25_lstm_cell_25_matmul_1_readvariableop_resource:	dљQ
Bsequential_12_lstm_25_lstm_cell_25_biasadd_readvariableop_resource:	љG
5sequential_12_dense_24_matmul_readvariableop_resource:dD
6sequential_12_dense_24_biasadd_readvariableop_resource:G
5sequential_12_dense_25_matmul_readvariableop_resource:D
6sequential_12_dense_25_biasadd_readvariableop_resource:
identityѕб-sequential_12/dense_24/BiasAdd/ReadVariableOpб,sequential_12/dense_24/MatMul/ReadVariableOpб-sequential_12/dense_25/BiasAdd/ReadVariableOpб,sequential_12/dense_25/MatMul/ReadVariableOpб9sequential_12/lstm_24/lstm_cell_24/BiasAdd/ReadVariableOpб8sequential_12/lstm_24/lstm_cell_24/MatMul/ReadVariableOpб:sequential_12/lstm_24/lstm_cell_24/MatMul_1/ReadVariableOpбsequential_12/lstm_24/whileб9sequential_12/lstm_25/lstm_cell_25/BiasAdd/ReadVariableOpб8sequential_12/lstm_25/lstm_cell_25/MatMul/ReadVariableOpб:sequential_12/lstm_25/lstm_cell_25/MatMul_1/ReadVariableOpбsequential_12/lstm_25/whilef
sequential_12/lstm_24/ShapeShapelstm_24_input*
T0*
_output_shapes
::ь¤s
)sequential_12/lstm_24/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_12/lstm_24/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_12/lstm_24/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┐
#sequential_12/lstm_24/strided_sliceStridedSlice$sequential_12/lstm_24/Shape:output:02sequential_12/lstm_24/strided_slice/stack:output:04sequential_12/lstm_24/strided_slice/stack_1:output:04sequential_12/lstm_24/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_12/lstm_24/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dх
"sequential_12/lstm_24/zeros/packedPack,sequential_12/lstm_24/strided_slice:output:0-sequential_12/lstm_24/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_12/lstm_24/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    «
sequential_12/lstm_24/zerosFill+sequential_12/lstm_24/zeros/packed:output:0*sequential_12/lstm_24/zeros/Const:output:0*
T0*'
_output_shapes
:         dh
&sequential_12/lstm_24/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d╣
$sequential_12/lstm_24/zeros_1/packedPack,sequential_12/lstm_24/strided_slice:output:0/sequential_12/lstm_24/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_12/lstm_24/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ┤
sequential_12/lstm_24/zeros_1Fill-sequential_12/lstm_24/zeros_1/packed:output:0,sequential_12/lstm_24/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dy
$sequential_12/lstm_24/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
sequential_12/lstm_24/transpose	Transposelstm_24_input-sequential_12/lstm_24/transpose/perm:output:0*
T0*+
_output_shapes
:         	~
sequential_12/lstm_24/Shape_1Shape#sequential_12/lstm_24/transpose:y:0*
T0*
_output_shapes
::ь¤u
+sequential_12/lstm_24/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_12/lstm_24/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_12/lstm_24/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╔
%sequential_12/lstm_24/strided_slice_1StridedSlice&sequential_12/lstm_24/Shape_1:output:04sequential_12/lstm_24/strided_slice_1/stack:output:06sequential_12/lstm_24/strided_slice_1/stack_1:output:06sequential_12/lstm_24/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_12/lstm_24/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         Ш
#sequential_12/lstm_24/TensorArrayV2TensorListReserve:sequential_12/lstm_24/TensorArrayV2/element_shape:output:0.sequential_12/lstm_24/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмю
Ksequential_12/lstm_24/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   б
=sequential_12/lstm_24/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_12/lstm_24/transpose:y:0Tsequential_12/lstm_24/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмu
+sequential_12/lstm_24/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_12/lstm_24/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_12/lstm_24/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:О
%sequential_12/lstm_24/strided_slice_2StridedSlice#sequential_12/lstm_24/transpose:y:04sequential_12/lstm_24/strided_slice_2/stack:output:06sequential_12/lstm_24/strided_slice_2/stack_1:output:06sequential_12/lstm_24/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         	*
shrink_axis_mask╗
8sequential_12/lstm_24/lstm_cell_24/MatMul/ReadVariableOpReadVariableOpAsequential_12_lstm_24_lstm_cell_24_matmul_readvariableop_resource*
_output_shapes
:		љ*
dtype0п
)sequential_12/lstm_24/lstm_cell_24/MatMulMatMul.sequential_12/lstm_24/strided_slice_2:output:0@sequential_12/lstm_24/lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ┐
:sequential_12/lstm_24/lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOpCsequential_12_lstm_24_lstm_cell_24_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0м
+sequential_12/lstm_24/lstm_cell_24/MatMul_1MatMul$sequential_12/lstm_24/zeros:output:0Bsequential_12/lstm_24/lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ╬
&sequential_12/lstm_24/lstm_cell_24/addAddV23sequential_12/lstm_24/lstm_cell_24/MatMul:product:05sequential_12/lstm_24/lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:         љ╣
9sequential_12/lstm_24/lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOpBsequential_12_lstm_24_lstm_cell_24_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0О
*sequential_12/lstm_24/lstm_cell_24/BiasAddBiasAdd*sequential_12/lstm_24/lstm_cell_24/add:z:0Asequential_12/lstm_24/lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љt
2sequential_12/lstm_24/lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ъ
(sequential_12/lstm_24/lstm_cell_24/splitSplit;sequential_12/lstm_24/lstm_cell_24/split/split_dim:output:03sequential_12/lstm_24/lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitџ
*sequential_12/lstm_24/lstm_cell_24/SigmoidSigmoid1sequential_12/lstm_24/lstm_cell_24/split:output:0*
T0*'
_output_shapes
:         dю
,sequential_12/lstm_24/lstm_cell_24/Sigmoid_1Sigmoid1sequential_12/lstm_24/lstm_cell_24/split:output:1*
T0*'
_output_shapes
:         d╣
&sequential_12/lstm_24/lstm_cell_24/mulMul0sequential_12/lstm_24/lstm_cell_24/Sigmoid_1:y:0&sequential_12/lstm_24/zeros_1:output:0*
T0*'
_output_shapes
:         dћ
'sequential_12/lstm_24/lstm_cell_24/ReluRelu1sequential_12/lstm_24/lstm_cell_24/split:output:2*
T0*'
_output_shapes
:         d╚
(sequential_12/lstm_24/lstm_cell_24/mul_1Mul.sequential_12/lstm_24/lstm_cell_24/Sigmoid:y:05sequential_12/lstm_24/lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:         dй
(sequential_12/lstm_24/lstm_cell_24/add_1AddV2*sequential_12/lstm_24/lstm_cell_24/mul:z:0,sequential_12/lstm_24/lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:         dю
,sequential_12/lstm_24/lstm_cell_24/Sigmoid_2Sigmoid1sequential_12/lstm_24/lstm_cell_24/split:output:3*
T0*'
_output_shapes
:         dЉ
)sequential_12/lstm_24/lstm_cell_24/Relu_1Relu,sequential_12/lstm_24/lstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:         d╠
(sequential_12/lstm_24/lstm_cell_24/mul_2Mul0sequential_12/lstm_24/lstm_cell_24/Sigmoid_2:y:07sequential_12/lstm_24/lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:         dё
3sequential_12/lstm_24/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Щ
%sequential_12/lstm_24/TensorArrayV2_1TensorListReserve<sequential_12/lstm_24/TensorArrayV2_1/element_shape:output:0.sequential_12/lstm_24/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм\
sequential_12/lstm_24/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_12/lstm_24/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         j
(sequential_12/lstm_24/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Х
sequential_12/lstm_24/whileWhile1sequential_12/lstm_24/while/loop_counter:output:07sequential_12/lstm_24/while/maximum_iterations:output:0#sequential_12/lstm_24/time:output:0.sequential_12/lstm_24/TensorArrayV2_1:handle:0$sequential_12/lstm_24/zeros:output:0&sequential_12/lstm_24/zeros_1:output:0.sequential_12/lstm_24/strided_slice_1:output:0Msequential_12/lstm_24/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_12_lstm_24_lstm_cell_24_matmul_readvariableop_resourceCsequential_12_lstm_24_lstm_cell_24_matmul_1_readvariableop_resourceBsequential_12_lstm_24_lstm_cell_24_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *3
body+R)
'sequential_12_lstm_24_while_body_192111*3
cond+R)
'sequential_12_lstm_24_while_cond_192110*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ќ
Fsequential_12/lstm_24/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ё
8sequential_12/lstm_24/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_12/lstm_24/while:output:3Osequential_12/lstm_24/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0~
+sequential_12/lstm_24/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         w
-sequential_12/lstm_24/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_12/lstm_24/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ш
%sequential_12/lstm_24/strided_slice_3StridedSliceAsequential_12/lstm_24/TensorArrayV2Stack/TensorListStack:tensor:04sequential_12/lstm_24/strided_slice_3/stack:output:06sequential_12/lstm_24/strided_slice_3/stack_1:output:06sequential_12/lstm_24/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask{
&sequential_12/lstm_24/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          п
!sequential_12/lstm_24/transpose_1	TransposeAsequential_12/lstm_24/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_12/lstm_24/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dq
sequential_12/lstm_24/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ~
sequential_12/lstm_25/ShapeShape%sequential_12/lstm_24/transpose_1:y:0*
T0*
_output_shapes
::ь¤s
)sequential_12/lstm_25/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_12/lstm_25/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_12/lstm_25/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┐
#sequential_12/lstm_25/strided_sliceStridedSlice$sequential_12/lstm_25/Shape:output:02sequential_12/lstm_25/strided_slice/stack:output:04sequential_12/lstm_25/strided_slice/stack_1:output:04sequential_12/lstm_25/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_12/lstm_25/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dх
"sequential_12/lstm_25/zeros/packedPack,sequential_12/lstm_25/strided_slice:output:0-sequential_12/lstm_25/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_12/lstm_25/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    «
sequential_12/lstm_25/zerosFill+sequential_12/lstm_25/zeros/packed:output:0*sequential_12/lstm_25/zeros/Const:output:0*
T0*'
_output_shapes
:         dh
&sequential_12/lstm_25/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d╣
$sequential_12/lstm_25/zeros_1/packedPack,sequential_12/lstm_25/strided_slice:output:0/sequential_12/lstm_25/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_12/lstm_25/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ┤
sequential_12/lstm_25/zeros_1Fill-sequential_12/lstm_25/zeros_1/packed:output:0,sequential_12/lstm_25/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dy
$sequential_12/lstm_25/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          И
sequential_12/lstm_25/transpose	Transpose%sequential_12/lstm_24/transpose_1:y:0-sequential_12/lstm_25/transpose/perm:output:0*
T0*+
_output_shapes
:         d~
sequential_12/lstm_25/Shape_1Shape#sequential_12/lstm_25/transpose:y:0*
T0*
_output_shapes
::ь¤u
+sequential_12/lstm_25/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_12/lstm_25/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_12/lstm_25/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╔
%sequential_12/lstm_25/strided_slice_1StridedSlice&sequential_12/lstm_25/Shape_1:output:04sequential_12/lstm_25/strided_slice_1/stack:output:06sequential_12/lstm_25/strided_slice_1/stack_1:output:06sequential_12/lstm_25/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_12/lstm_25/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         Ш
#sequential_12/lstm_25/TensorArrayV2TensorListReserve:sequential_12/lstm_25/TensorArrayV2/element_shape:output:0.sequential_12/lstm_25/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмю
Ksequential_12/lstm_25/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   б
=sequential_12/lstm_25/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_12/lstm_25/transpose:y:0Tsequential_12/lstm_25/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмu
+sequential_12/lstm_25/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_12/lstm_25/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_12/lstm_25/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:О
%sequential_12/lstm_25/strided_slice_2StridedSlice#sequential_12/lstm_25/transpose:y:04sequential_12/lstm_25/strided_slice_2/stack:output:06sequential_12/lstm_25/strided_slice_2/stack_1:output:06sequential_12/lstm_25/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask╗
8sequential_12/lstm_25/lstm_cell_25/MatMul/ReadVariableOpReadVariableOpAsequential_12_lstm_25_lstm_cell_25_matmul_readvariableop_resource*
_output_shapes
:	dљ*
dtype0п
)sequential_12/lstm_25/lstm_cell_25/MatMulMatMul.sequential_12/lstm_25/strided_slice_2:output:0@sequential_12/lstm_25/lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ┐
:sequential_12/lstm_25/lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOpCsequential_12_lstm_25_lstm_cell_25_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0м
+sequential_12/lstm_25/lstm_cell_25/MatMul_1MatMul$sequential_12/lstm_25/zeros:output:0Bsequential_12/lstm_25/lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ╬
&sequential_12/lstm_25/lstm_cell_25/addAddV23sequential_12/lstm_25/lstm_cell_25/MatMul:product:05sequential_12/lstm_25/lstm_cell_25/MatMul_1:product:0*
T0*(
_output_shapes
:         љ╣
9sequential_12/lstm_25/lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOpBsequential_12_lstm_25_lstm_cell_25_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0О
*sequential_12/lstm_25/lstm_cell_25/BiasAddBiasAdd*sequential_12/lstm_25/lstm_cell_25/add:z:0Asequential_12/lstm_25/lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љt
2sequential_12/lstm_25/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ъ
(sequential_12/lstm_25/lstm_cell_25/splitSplit;sequential_12/lstm_25/lstm_cell_25/split/split_dim:output:03sequential_12/lstm_25/lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitџ
*sequential_12/lstm_25/lstm_cell_25/SigmoidSigmoid1sequential_12/lstm_25/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:         dю
,sequential_12/lstm_25/lstm_cell_25/Sigmoid_1Sigmoid1sequential_12/lstm_25/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:         d╣
&sequential_12/lstm_25/lstm_cell_25/mulMul0sequential_12/lstm_25/lstm_cell_25/Sigmoid_1:y:0&sequential_12/lstm_25/zeros_1:output:0*
T0*'
_output_shapes
:         dћ
'sequential_12/lstm_25/lstm_cell_25/ReluRelu1sequential_12/lstm_25/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:         d╚
(sequential_12/lstm_25/lstm_cell_25/mul_1Mul.sequential_12/lstm_25/lstm_cell_25/Sigmoid:y:05sequential_12/lstm_25/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:         dй
(sequential_12/lstm_25/lstm_cell_25/add_1AddV2*sequential_12/lstm_25/lstm_cell_25/mul:z:0,sequential_12/lstm_25/lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:         dю
,sequential_12/lstm_25/lstm_cell_25/Sigmoid_2Sigmoid1sequential_12/lstm_25/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:         dЉ
)sequential_12/lstm_25/lstm_cell_25/Relu_1Relu,sequential_12/lstm_25/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:         d╠
(sequential_12/lstm_25/lstm_cell_25/mul_2Mul0sequential_12/lstm_25/lstm_cell_25/Sigmoid_2:y:07sequential_12/lstm_25/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:         dё
3sequential_12/lstm_25/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   t
2sequential_12/lstm_25/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Є
%sequential_12/lstm_25/TensorArrayV2_1TensorListReserve<sequential_12/lstm_25/TensorArrayV2_1/element_shape:output:0;sequential_12/lstm_25/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм\
sequential_12/lstm_25/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_12/lstm_25/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         j
(sequential_12/lstm_25/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Х
sequential_12/lstm_25/whileWhile1sequential_12/lstm_25/while/loop_counter:output:07sequential_12/lstm_25/while/maximum_iterations:output:0#sequential_12/lstm_25/time:output:0.sequential_12/lstm_25/TensorArrayV2_1:handle:0$sequential_12/lstm_25/zeros:output:0&sequential_12/lstm_25/zeros_1:output:0.sequential_12/lstm_25/strided_slice_1:output:0Msequential_12/lstm_25/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_12_lstm_25_lstm_cell_25_matmul_readvariableop_resourceCsequential_12_lstm_25_lstm_cell_25_matmul_1_readvariableop_resourceBsequential_12_lstm_25_lstm_cell_25_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *3
body+R)
'sequential_12_lstm_25_while_body_192251*3
cond+R)
'sequential_12_lstm_25_while_cond_192250*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ќ
Fsequential_12/lstm_25/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ў
8sequential_12/lstm_25/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_12/lstm_25/while:output:3Osequential_12/lstm_25/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0*
num_elements~
+sequential_12/lstm_25/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         w
-sequential_12/lstm_25/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_12/lstm_25/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ш
%sequential_12/lstm_25/strided_slice_3StridedSliceAsequential_12/lstm_25/TensorArrayV2Stack/TensorListStack:tensor:04sequential_12/lstm_25/strided_slice_3/stack:output:06sequential_12/lstm_25/strided_slice_3/stack_1:output:06sequential_12/lstm_25/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask{
&sequential_12/lstm_25/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          п
!sequential_12/lstm_25/transpose_1	TransposeAsequential_12/lstm_25/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_12/lstm_25/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dq
sequential_12/lstm_25/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Ј
!sequential_12/dropout_12/IdentityIdentity.sequential_12/lstm_25/strided_slice_3:output:0*
T0*'
_output_shapes
:         dб
,sequential_12/dense_24/MatMul/ReadVariableOpReadVariableOp5sequential_12_dense_24_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0╗
sequential_12/dense_24/MatMulMatMul*sequential_12/dropout_12/Identity:output:04sequential_12/dense_24/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         а
-sequential_12/dense_24/BiasAdd/ReadVariableOpReadVariableOp6sequential_12_dense_24_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╗
sequential_12/dense_24/BiasAddBiasAdd'sequential_12/dense_24/MatMul:product:05sequential_12/dense_24/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ~
sequential_12/dense_24/ReluRelu'sequential_12/dense_24/BiasAdd:output:0*
T0*'
_output_shapes
:         б
,sequential_12/dense_25/MatMul/ReadVariableOpReadVariableOp5sequential_12_dense_25_matmul_readvariableop_resource*
_output_shapes

:*
dtype0║
sequential_12/dense_25/MatMulMatMul)sequential_12/dense_24/Relu:activations:04sequential_12/dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         а
-sequential_12/dense_25/BiasAdd/ReadVariableOpReadVariableOp6sequential_12_dense_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╗
sequential_12/dense_25/BiasAddBiasAdd'sequential_12/dense_25/MatMul:product:05sequential_12/dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
sequential_12/dense_25/SoftmaxSoftmax'sequential_12/dense_25/BiasAdd:output:0*
T0*'
_output_shapes
:         w
IdentityIdentity(sequential_12/dense_25/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         е
NoOpNoOp.^sequential_12/dense_24/BiasAdd/ReadVariableOp-^sequential_12/dense_24/MatMul/ReadVariableOp.^sequential_12/dense_25/BiasAdd/ReadVariableOp-^sequential_12/dense_25/MatMul/ReadVariableOp:^sequential_12/lstm_24/lstm_cell_24/BiasAdd/ReadVariableOp9^sequential_12/lstm_24/lstm_cell_24/MatMul/ReadVariableOp;^sequential_12/lstm_24/lstm_cell_24/MatMul_1/ReadVariableOp^sequential_12/lstm_24/while:^sequential_12/lstm_25/lstm_cell_25/BiasAdd/ReadVariableOp9^sequential_12/lstm_25/lstm_cell_25/MatMul/ReadVariableOp;^sequential_12/lstm_25/lstm_cell_25/MatMul_1/ReadVariableOp^sequential_12/lstm_25/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         	: : : : : : : : : : 2^
-sequential_12/dense_24/BiasAdd/ReadVariableOp-sequential_12/dense_24/BiasAdd/ReadVariableOp2\
,sequential_12/dense_24/MatMul/ReadVariableOp,sequential_12/dense_24/MatMul/ReadVariableOp2^
-sequential_12/dense_25/BiasAdd/ReadVariableOp-sequential_12/dense_25/BiasAdd/ReadVariableOp2\
,sequential_12/dense_25/MatMul/ReadVariableOp,sequential_12/dense_25/MatMul/ReadVariableOp2v
9sequential_12/lstm_24/lstm_cell_24/BiasAdd/ReadVariableOp9sequential_12/lstm_24/lstm_cell_24/BiasAdd/ReadVariableOp2t
8sequential_12/lstm_24/lstm_cell_24/MatMul/ReadVariableOp8sequential_12/lstm_24/lstm_cell_24/MatMul/ReadVariableOp2x
:sequential_12/lstm_24/lstm_cell_24/MatMul_1/ReadVariableOp:sequential_12/lstm_24/lstm_cell_24/MatMul_1/ReadVariableOp2:
sequential_12/lstm_24/whilesequential_12/lstm_24/while2v
9sequential_12/lstm_25/lstm_cell_25/BiasAdd/ReadVariableOp9sequential_12/lstm_25/lstm_cell_25/BiasAdd/ReadVariableOp2t
8sequential_12/lstm_25/lstm_cell_25/MatMul/ReadVariableOp8sequential_12/lstm_25/lstm_cell_25/MatMul/ReadVariableOp2x
:sequential_12/lstm_25/lstm_cell_25/MatMul_1/ReadVariableOp:sequential_12/lstm_25/lstm_cell_25/MatMul_1/ReadVariableOp2:
sequential_12/lstm_25/whilesequential_12/lstm_25/while:Z V
+
_output_shapes
:         	
'
_user_specified_namelstm_24_input
Ќ	
├
while_cond_192779
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_192779___redundant_placeholder04
0while_while_cond_192779___redundant_placeholder14
0while_while_cond_192779___redundant_placeholder24
0while_while_cond_192779___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
П
є
H__inference_lstm_cell_24_layer_call_and_return_conditional_losses_196023

inputs
states_0
states_11
matmul_readvariableop_resource:		љ3
 matmul_1_readvariableop_resource:	dљ.
biasadd_readvariableop_resource:	љ
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		љ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         љs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:         d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         dЉ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         	:         d:         d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:QM
'
_output_shapes
:         d
"
_user_specified_name
states_1:QM
'
_output_shapes
:         d
"
_user_specified_name
states_0:O K
'
_output_shapes
:         	
 
_user_specified_nameinputs
і:
л
while_body_193268
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_25_matmul_readvariableop_resource_0:	dљH
5while_lstm_cell_25_matmul_1_readvariableop_resource_0:	dљC
4while_lstm_cell_25_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_25_matmul_readvariableop_resource:	dљF
3while_lstm_cell_25_matmul_1_readvariableop_resource:	dљA
2while_lstm_cell_25_biasadd_readvariableop_resource:	љѕб)while/lstm_cell_25/BiasAdd/ReadVariableOpб(while/lstm_cell_25/MatMul/ReadVariableOpб*while/lstm_cell_25/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ю
(while/lstm_cell_25/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_25_matmul_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0║
while/lstm_cell_25/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
*while/lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_25_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0А
while/lstm_cell_25/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љъ
while/lstm_cell_25/addAddV2#while/lstm_cell_25/MatMul:product:0%while/lstm_cell_25/MatMul_1:product:0*
T0*(
_output_shapes
:         љЏ
)while/lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_25_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0Д
while/lstm_cell_25/BiasAddBiasAddwhile/lstm_cell_25/add:z:01while/lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љd
"while/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_25/splitSplit+while/lstm_cell_25/split/split_dim:output:0#while/lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitz
while/lstm_cell_25/SigmoidSigmoid!while/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_25/Sigmoid_1Sigmoid!while/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:         dє
while/lstm_cell_25/mulMul while/lstm_cell_25/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dt
while/lstm_cell_25/ReluRelu!while/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:         dў
while/lstm_cell_25/mul_1Mulwhile/lstm_cell_25/Sigmoid:y:0%while/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:         dЇ
while/lstm_cell_25/add_1AddV2while/lstm_cell_25/mul:z:0while/lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_25/Sigmoid_2Sigmoid!while/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:         dq
while/lstm_cell_25/Relu_1Reluwhile/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:         dю
while/lstm_cell_25/mul_2Mul while/lstm_cell_25/Sigmoid_2:y:0'while/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:         dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ь
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_25/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_25/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dy
while/Identity_5Identitywhile/lstm_cell_25/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dл

while/NoOpNoOp*^while/lstm_cell_25/BiasAdd/ReadVariableOp)^while/lstm_cell_25/MatMul/ReadVariableOp+^while/lstm_cell_25/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"j
2while_lstm_cell_25_biasadd_readvariableop_resource4while_lstm_cell_25_biasadd_readvariableop_resource_0"l
3while_lstm_cell_25_matmul_1_readvariableop_resource5while_lstm_cell_25_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_25_matmul_readvariableop_resource3while_lstm_cell_25_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2V
)while/lstm_cell_25/BiasAdd/ReadVariableOp)while/lstm_cell_25/BiasAdd/ReadVariableOp2T
(while/lstm_cell_25/MatMul/ReadVariableOp(while/lstm_cell_25/MatMul/ReadVariableOp2X
*while/lstm_cell_25/MatMul_1/ReadVariableOp*while/lstm_cell_25/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Ь8
л
while_body_194896
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_24_matmul_readvariableop_resource_0:		љH
5while_lstm_cell_24_matmul_1_readvariableop_resource_0:	dљC
4while_lstm_cell_24_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_24_matmul_readvariableop_resource:		љF
3while_lstm_cell_24_matmul_1_readvariableop_resource:	dљA
2while_lstm_cell_24_biasadd_readvariableop_resource:	љѕб)while/lstm_cell_24/BiasAdd/ReadVariableOpб(while/lstm_cell_24/MatMul/ReadVariableOpб*while/lstm_cell_24/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         	*
element_dtype0Ю
(while/lstm_cell_24/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_24_matmul_readvariableop_resource_0*
_output_shapes
:		љ*
dtype0║
while/lstm_cell_24/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
*while/lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_24_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0А
while/lstm_cell_24/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љъ
while/lstm_cell_24/addAddV2#while/lstm_cell_24/MatMul:product:0%while/lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:         љЏ
)while/lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_24_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0Д
while/lstm_cell_24/BiasAddBiasAddwhile/lstm_cell_24/add:z:01while/lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љd
"while/lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_24/splitSplit+while/lstm_cell_24/split/split_dim:output:0#while/lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitz
while/lstm_cell_24/SigmoidSigmoid!while/lstm_cell_24/split:output:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_24/Sigmoid_1Sigmoid!while/lstm_cell_24/split:output:1*
T0*'
_output_shapes
:         dє
while/lstm_cell_24/mulMul while/lstm_cell_24/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dt
while/lstm_cell_24/ReluRelu!while/lstm_cell_24/split:output:2*
T0*'
_output_shapes
:         dў
while/lstm_cell_24/mul_1Mulwhile/lstm_cell_24/Sigmoid:y:0%while/lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:         dЇ
while/lstm_cell_24/add_1AddV2while/lstm_cell_24/mul:z:0while/lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_24/Sigmoid_2Sigmoid!while/lstm_cell_24/split:output:3*
T0*'
_output_shapes
:         dq
while/lstm_cell_24/Relu_1Reluwhile/lstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:         dю
while/lstm_cell_24/mul_2Mul while/lstm_cell_24/Sigmoid_2:y:0'while/lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:         d┼
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_24/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_24/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dy
while/Identity_5Identitywhile/lstm_cell_24/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dл

while/NoOpNoOp*^while/lstm_cell_24/BiasAdd/ReadVariableOp)^while/lstm_cell_24/MatMul/ReadVariableOp+^while/lstm_cell_24/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"j
2while_lstm_cell_24_biasadd_readvariableop_resource4while_lstm_cell_24_biasadd_readvariableop_resource_0"l
3while_lstm_cell_24_matmul_1_readvariableop_resource5while_lstm_cell_24_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_24_matmul_readvariableop_resource3while_lstm_cell_24_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2V
)while/lstm_cell_24/BiasAdd/ReadVariableOp)while/lstm_cell_24/BiasAdd/ReadVariableOp2T
(while/lstm_cell_24/MatMul/ReadVariableOp(while/lstm_cell_24/MatMul/ReadVariableOp2X
*while/lstm_cell_24/MatMul_1/ReadVariableOp*while/lstm_cell_24/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
з
d
+__inference_dropout_12_layer_call_fn_195895

inputs
identityѕбStatefulPartitionedCall┴
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dropout_12_layer_call_and_return_conditional_losses_193373o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         d22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
Ќ	
├
while_cond_193621
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_193621___redundant_placeholder04
0while_while_cond_193621___redundant_placeholder14
0while_while_cond_193621___redundant_placeholder24
0while_while_cond_193621___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
иB
л

lstm_24_while_body_194104,
(lstm_24_while_lstm_24_while_loop_counter2
.lstm_24_while_lstm_24_while_maximum_iterations
lstm_24_while_placeholder
lstm_24_while_placeholder_1
lstm_24_while_placeholder_2
lstm_24_while_placeholder_3+
'lstm_24_while_lstm_24_strided_slice_1_0g
clstm_24_while_tensorarrayv2read_tensorlistgetitem_lstm_24_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_24_while_lstm_cell_24_matmul_readvariableop_resource_0:		љP
=lstm_24_while_lstm_cell_24_matmul_1_readvariableop_resource_0:	dљK
<lstm_24_while_lstm_cell_24_biasadd_readvariableop_resource_0:	љ
lstm_24_while_identity
lstm_24_while_identity_1
lstm_24_while_identity_2
lstm_24_while_identity_3
lstm_24_while_identity_4
lstm_24_while_identity_5)
%lstm_24_while_lstm_24_strided_slice_1e
alstm_24_while_tensorarrayv2read_tensorlistgetitem_lstm_24_tensorarrayunstack_tensorlistfromtensorL
9lstm_24_while_lstm_cell_24_matmul_readvariableop_resource:		љN
;lstm_24_while_lstm_cell_24_matmul_1_readvariableop_resource:	dљI
:lstm_24_while_lstm_cell_24_biasadd_readvariableop_resource:	љѕб1lstm_24/while/lstm_cell_24/BiasAdd/ReadVariableOpб0lstm_24/while/lstm_cell_24/MatMul/ReadVariableOpб2lstm_24/while/lstm_cell_24/MatMul_1/ReadVariableOpљ
?lstm_24/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   ╬
1lstm_24/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_24_while_tensorarrayv2read_tensorlistgetitem_lstm_24_tensorarrayunstack_tensorlistfromtensor_0lstm_24_while_placeholderHlstm_24/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         	*
element_dtype0Г
0lstm_24/while/lstm_cell_24/MatMul/ReadVariableOpReadVariableOp;lstm_24_while_lstm_cell_24_matmul_readvariableop_resource_0*
_output_shapes
:		љ*
dtype0м
!lstm_24/while/lstm_cell_24/MatMulMatMul8lstm_24/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_24/while/lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ▒
2lstm_24/while/lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp=lstm_24_while_lstm_cell_24_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0╣
#lstm_24/while/lstm_cell_24/MatMul_1MatMullstm_24_while_placeholder_2:lstm_24/while/lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љХ
lstm_24/while/lstm_cell_24/addAddV2+lstm_24/while/lstm_cell_24/MatMul:product:0-lstm_24/while/lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:         љФ
1lstm_24/while/lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp<lstm_24_while_lstm_cell_24_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0┐
"lstm_24/while/lstm_cell_24/BiasAddBiasAdd"lstm_24/while/lstm_cell_24/add:z:09lstm_24/while/lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љl
*lstm_24/while/lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Є
 lstm_24/while/lstm_cell_24/splitSplit3lstm_24/while/lstm_cell_24/split/split_dim:output:0+lstm_24/while/lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitі
"lstm_24/while/lstm_cell_24/SigmoidSigmoid)lstm_24/while/lstm_cell_24/split:output:0*
T0*'
_output_shapes
:         dї
$lstm_24/while/lstm_cell_24/Sigmoid_1Sigmoid)lstm_24/while/lstm_cell_24/split:output:1*
T0*'
_output_shapes
:         dъ
lstm_24/while/lstm_cell_24/mulMul(lstm_24/while/lstm_cell_24/Sigmoid_1:y:0lstm_24_while_placeholder_3*
T0*'
_output_shapes
:         dё
lstm_24/while/lstm_cell_24/ReluRelu)lstm_24/while/lstm_cell_24/split:output:2*
T0*'
_output_shapes
:         d░
 lstm_24/while/lstm_cell_24/mul_1Mul&lstm_24/while/lstm_cell_24/Sigmoid:y:0-lstm_24/while/lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:         dЦ
 lstm_24/while/lstm_cell_24/add_1AddV2"lstm_24/while/lstm_cell_24/mul:z:0$lstm_24/while/lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:         dї
$lstm_24/while/lstm_cell_24/Sigmoid_2Sigmoid)lstm_24/while/lstm_cell_24/split:output:3*
T0*'
_output_shapes
:         dЂ
!lstm_24/while/lstm_cell_24/Relu_1Relu$lstm_24/while/lstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:         d┤
 lstm_24/while/lstm_cell_24/mul_2Mul(lstm_24/while/lstm_cell_24/Sigmoid_2:y:0/lstm_24/while/lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:         dт
2lstm_24/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_24_while_placeholder_1lstm_24_while_placeholder$lstm_24/while/lstm_cell_24/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмU
lstm_24/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_24/while/addAddV2lstm_24_while_placeholderlstm_24/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_24/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Є
lstm_24/while/add_1AddV2(lstm_24_while_lstm_24_while_loop_counterlstm_24/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_24/while/IdentityIdentitylstm_24/while/add_1:z:0^lstm_24/while/NoOp*
T0*
_output_shapes
: і
lstm_24/while/Identity_1Identity.lstm_24_while_lstm_24_while_maximum_iterations^lstm_24/while/NoOp*
T0*
_output_shapes
: q
lstm_24/while/Identity_2Identitylstm_24/while/add:z:0^lstm_24/while/NoOp*
T0*
_output_shapes
: ъ
lstm_24/while/Identity_3IdentityBlstm_24/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_24/while/NoOp*
T0*
_output_shapes
: Љ
lstm_24/while/Identity_4Identity$lstm_24/while/lstm_cell_24/mul_2:z:0^lstm_24/while/NoOp*
T0*'
_output_shapes
:         dЉ
lstm_24/while/Identity_5Identity$lstm_24/while/lstm_cell_24/add_1:z:0^lstm_24/while/NoOp*
T0*'
_output_shapes
:         d­
lstm_24/while/NoOpNoOp2^lstm_24/while/lstm_cell_24/BiasAdd/ReadVariableOp1^lstm_24/while/lstm_cell_24/MatMul/ReadVariableOp3^lstm_24/while/lstm_cell_24/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "=
lstm_24_while_identity_1!lstm_24/while/Identity_1:output:0"=
lstm_24_while_identity_2!lstm_24/while/Identity_2:output:0"=
lstm_24_while_identity_3!lstm_24/while/Identity_3:output:0"=
lstm_24_while_identity_4!lstm_24/while/Identity_4:output:0"=
lstm_24_while_identity_5!lstm_24/while/Identity_5:output:0"9
lstm_24_while_identitylstm_24/while/Identity:output:0"P
%lstm_24_while_lstm_24_strided_slice_1'lstm_24_while_lstm_24_strided_slice_1_0"z
:lstm_24_while_lstm_cell_24_biasadd_readvariableop_resource<lstm_24_while_lstm_cell_24_biasadd_readvariableop_resource_0"|
;lstm_24_while_lstm_cell_24_matmul_1_readvariableop_resource=lstm_24_while_lstm_cell_24_matmul_1_readvariableop_resource_0"x
9lstm_24_while_lstm_cell_24_matmul_readvariableop_resource;lstm_24_while_lstm_cell_24_matmul_readvariableop_resource_0"╚
alstm_24_while_tensorarrayv2read_tensorlistgetitem_lstm_24_tensorarrayunstack_tensorlistfromtensorclstm_24_while_tensorarrayv2read_tensorlistgetitem_lstm_24_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2f
1lstm_24/while/lstm_cell_24/BiasAdd/ReadVariableOp1lstm_24/while/lstm_cell_24/BiasAdd/ReadVariableOp2d
0lstm_24/while/lstm_cell_24/MatMul/ReadVariableOp0lstm_24/while/lstm_cell_24/MatMul/ReadVariableOp2h
2lstm_24/while/lstm_cell_24/MatMul_1/ReadVariableOp2lstm_24/while/lstm_cell_24/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :XT

_output_shapes
: 
:
_user_specified_name" lstm_24/while/maximum_iterations:R N

_output_shapes
: 
4
_user_specified_namelstm_24/while/loop_counter
ЊS
њ
'sequential_12_lstm_24_while_body_192111H
Dsequential_12_lstm_24_while_sequential_12_lstm_24_while_loop_counterN
Jsequential_12_lstm_24_while_sequential_12_lstm_24_while_maximum_iterations+
'sequential_12_lstm_24_while_placeholder-
)sequential_12_lstm_24_while_placeholder_1-
)sequential_12_lstm_24_while_placeholder_2-
)sequential_12_lstm_24_while_placeholder_3G
Csequential_12_lstm_24_while_sequential_12_lstm_24_strided_slice_1_0Ѓ
sequential_12_lstm_24_while_tensorarrayv2read_tensorlistgetitem_sequential_12_lstm_24_tensorarrayunstack_tensorlistfromtensor_0\
Isequential_12_lstm_24_while_lstm_cell_24_matmul_readvariableop_resource_0:		љ^
Ksequential_12_lstm_24_while_lstm_cell_24_matmul_1_readvariableop_resource_0:	dљY
Jsequential_12_lstm_24_while_lstm_cell_24_biasadd_readvariableop_resource_0:	љ(
$sequential_12_lstm_24_while_identity*
&sequential_12_lstm_24_while_identity_1*
&sequential_12_lstm_24_while_identity_2*
&sequential_12_lstm_24_while_identity_3*
&sequential_12_lstm_24_while_identity_4*
&sequential_12_lstm_24_while_identity_5E
Asequential_12_lstm_24_while_sequential_12_lstm_24_strided_slice_1Ђ
}sequential_12_lstm_24_while_tensorarrayv2read_tensorlistgetitem_sequential_12_lstm_24_tensorarrayunstack_tensorlistfromtensorZ
Gsequential_12_lstm_24_while_lstm_cell_24_matmul_readvariableop_resource:		љ\
Isequential_12_lstm_24_while_lstm_cell_24_matmul_1_readvariableop_resource:	dљW
Hsequential_12_lstm_24_while_lstm_cell_24_biasadd_readvariableop_resource:	љѕб?sequential_12/lstm_24/while/lstm_cell_24/BiasAdd/ReadVariableOpб>sequential_12/lstm_24/while/lstm_cell_24/MatMul/ReadVariableOpб@sequential_12/lstm_24/while/lstm_cell_24/MatMul_1/ReadVariableOpъ
Msequential_12/lstm_24/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   ћ
?sequential_12/lstm_24/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_12_lstm_24_while_tensorarrayv2read_tensorlistgetitem_sequential_12_lstm_24_tensorarrayunstack_tensorlistfromtensor_0'sequential_12_lstm_24_while_placeholderVsequential_12/lstm_24/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         	*
element_dtype0╔
>sequential_12/lstm_24/while/lstm_cell_24/MatMul/ReadVariableOpReadVariableOpIsequential_12_lstm_24_while_lstm_cell_24_matmul_readvariableop_resource_0*
_output_shapes
:		љ*
dtype0Ч
/sequential_12/lstm_24/while/lstm_cell_24/MatMulMatMulFsequential_12/lstm_24/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_12/lstm_24/while/lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ═
@sequential_12/lstm_24/while/lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOpKsequential_12_lstm_24_while_lstm_cell_24_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0с
1sequential_12/lstm_24/while/lstm_cell_24/MatMul_1MatMul)sequential_12_lstm_24_while_placeholder_2Hsequential_12/lstm_24/while/lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЯ
,sequential_12/lstm_24/while/lstm_cell_24/addAddV29sequential_12/lstm_24/while/lstm_cell_24/MatMul:product:0;sequential_12/lstm_24/while/lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:         љК
?sequential_12/lstm_24/while/lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOpJsequential_12_lstm_24_while_lstm_cell_24_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ж
0sequential_12/lstm_24/while/lstm_cell_24/BiasAddBiasAdd0sequential_12/lstm_24/while/lstm_cell_24/add:z:0Gsequential_12/lstm_24/while/lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љz
8sequential_12/lstm_24/while/lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▒
.sequential_12/lstm_24/while/lstm_cell_24/splitSplitAsequential_12/lstm_24/while/lstm_cell_24/split/split_dim:output:09sequential_12/lstm_24/while/lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitд
0sequential_12/lstm_24/while/lstm_cell_24/SigmoidSigmoid7sequential_12/lstm_24/while/lstm_cell_24/split:output:0*
T0*'
_output_shapes
:         dе
2sequential_12/lstm_24/while/lstm_cell_24/Sigmoid_1Sigmoid7sequential_12/lstm_24/while/lstm_cell_24/split:output:1*
T0*'
_output_shapes
:         d╚
,sequential_12/lstm_24/while/lstm_cell_24/mulMul6sequential_12/lstm_24/while/lstm_cell_24/Sigmoid_1:y:0)sequential_12_lstm_24_while_placeholder_3*
T0*'
_output_shapes
:         dа
-sequential_12/lstm_24/while/lstm_cell_24/ReluRelu7sequential_12/lstm_24/while/lstm_cell_24/split:output:2*
T0*'
_output_shapes
:         d┌
.sequential_12/lstm_24/while/lstm_cell_24/mul_1Mul4sequential_12/lstm_24/while/lstm_cell_24/Sigmoid:y:0;sequential_12/lstm_24/while/lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:         d¤
.sequential_12/lstm_24/while/lstm_cell_24/add_1AddV20sequential_12/lstm_24/while/lstm_cell_24/mul:z:02sequential_12/lstm_24/while/lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:         dе
2sequential_12/lstm_24/while/lstm_cell_24/Sigmoid_2Sigmoid7sequential_12/lstm_24/while/lstm_cell_24/split:output:3*
T0*'
_output_shapes
:         dЮ
/sequential_12/lstm_24/while/lstm_cell_24/Relu_1Relu2sequential_12/lstm_24/while/lstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:         dя
.sequential_12/lstm_24/while/lstm_cell_24/mul_2Mul6sequential_12/lstm_24/while/lstm_cell_24/Sigmoid_2:y:0=sequential_12/lstm_24/while/lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:         dЮ
@sequential_12/lstm_24/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_12_lstm_24_while_placeholder_1'sequential_12_lstm_24_while_placeholder2sequential_12/lstm_24/while/lstm_cell_24/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмc
!sequential_12/lstm_24/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ъ
sequential_12/lstm_24/while/addAddV2'sequential_12_lstm_24_while_placeholder*sequential_12/lstm_24/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_12/lstm_24/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :┐
!sequential_12/lstm_24/while/add_1AddV2Dsequential_12_lstm_24_while_sequential_12_lstm_24_while_loop_counter,sequential_12/lstm_24/while/add_1/y:output:0*
T0*
_output_shapes
: Џ
$sequential_12/lstm_24/while/IdentityIdentity%sequential_12/lstm_24/while/add_1:z:0!^sequential_12/lstm_24/while/NoOp*
T0*
_output_shapes
: ┬
&sequential_12/lstm_24/while/Identity_1IdentityJsequential_12_lstm_24_while_sequential_12_lstm_24_while_maximum_iterations!^sequential_12/lstm_24/while/NoOp*
T0*
_output_shapes
: Џ
&sequential_12/lstm_24/while/Identity_2Identity#sequential_12/lstm_24/while/add:z:0!^sequential_12/lstm_24/while/NoOp*
T0*
_output_shapes
: ╚
&sequential_12/lstm_24/while/Identity_3IdentityPsequential_12/lstm_24/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_12/lstm_24/while/NoOp*
T0*
_output_shapes
: ╗
&sequential_12/lstm_24/while/Identity_4Identity2sequential_12/lstm_24/while/lstm_cell_24/mul_2:z:0!^sequential_12/lstm_24/while/NoOp*
T0*'
_output_shapes
:         d╗
&sequential_12/lstm_24/while/Identity_5Identity2sequential_12/lstm_24/while/lstm_cell_24/add_1:z:0!^sequential_12/lstm_24/while/NoOp*
T0*'
_output_shapes
:         dе
 sequential_12/lstm_24/while/NoOpNoOp@^sequential_12/lstm_24/while/lstm_cell_24/BiasAdd/ReadVariableOp?^sequential_12/lstm_24/while/lstm_cell_24/MatMul/ReadVariableOpA^sequential_12/lstm_24/while/lstm_cell_24/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_12_lstm_24_while_identity_1/sequential_12/lstm_24/while/Identity_1:output:0"Y
&sequential_12_lstm_24_while_identity_2/sequential_12/lstm_24/while/Identity_2:output:0"Y
&sequential_12_lstm_24_while_identity_3/sequential_12/lstm_24/while/Identity_3:output:0"Y
&sequential_12_lstm_24_while_identity_4/sequential_12/lstm_24/while/Identity_4:output:0"Y
&sequential_12_lstm_24_while_identity_5/sequential_12/lstm_24/while/Identity_5:output:0"U
$sequential_12_lstm_24_while_identity-sequential_12/lstm_24/while/Identity:output:0"ќ
Hsequential_12_lstm_24_while_lstm_cell_24_biasadd_readvariableop_resourceJsequential_12_lstm_24_while_lstm_cell_24_biasadd_readvariableop_resource_0"ў
Isequential_12_lstm_24_while_lstm_cell_24_matmul_1_readvariableop_resourceKsequential_12_lstm_24_while_lstm_cell_24_matmul_1_readvariableop_resource_0"ћ
Gsequential_12_lstm_24_while_lstm_cell_24_matmul_readvariableop_resourceIsequential_12_lstm_24_while_lstm_cell_24_matmul_readvariableop_resource_0"ѕ
Asequential_12_lstm_24_while_sequential_12_lstm_24_strided_slice_1Csequential_12_lstm_24_while_sequential_12_lstm_24_strided_slice_1_0"ђ
}sequential_12_lstm_24_while_tensorarrayv2read_tensorlistgetitem_sequential_12_lstm_24_tensorarrayunstack_tensorlistfromtensorsequential_12_lstm_24_while_tensorarrayv2read_tensorlistgetitem_sequential_12_lstm_24_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2ѓ
?sequential_12/lstm_24/while/lstm_cell_24/BiasAdd/ReadVariableOp?sequential_12/lstm_24/while/lstm_cell_24/BiasAdd/ReadVariableOp2ђ
>sequential_12/lstm_24/while/lstm_cell_24/MatMul/ReadVariableOp>sequential_12/lstm_24/while/lstm_cell_24/MatMul/ReadVariableOp2ё
@sequential_12/lstm_24/while/lstm_cell_24/MatMul_1/ReadVariableOp@sequential_12/lstm_24/while/lstm_cell_24/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :fb

_output_shapes
: 
H
_user_specified_name0.sequential_12/lstm_24/while/maximum_iterations:` \

_output_shapes
: 
B
_user_specified_name*(sequential_12/lstm_24/while/loop_counter
Н
ё
H__inference_lstm_cell_24_layer_call_and_return_conditional_losses_192560

inputs

states
states_11
matmul_readvariableop_resource:		љ3
 matmul_1_readvariableop_resource:	dљ.
biasadd_readvariableop_resource:	љ
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		љ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         љs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:         d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         dЉ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         	:         d:         d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:OK
'
_output_shapes
:         d
 
_user_specified_namestates:OK
'
_output_shapes
:         d
 
_user_specified_namestates:O K
'
_output_shapes
:         	
 
_user_specified_nameinputs
 
х
(__inference_lstm_24_layer_call_fn_194683

inputs
unknown:		љ
	unknown_0:	dљ
	unknown_1:	љ
identityѕбStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_lstm_24_layer_call_and_return_conditional_losses_193201s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         	: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
Ь8
л
while_body_193471
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_24_matmul_readvariableop_resource_0:		љH
5while_lstm_cell_24_matmul_1_readvariableop_resource_0:	dљC
4while_lstm_cell_24_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_24_matmul_readvariableop_resource:		љF
3while_lstm_cell_24_matmul_1_readvariableop_resource:	dљA
2while_lstm_cell_24_biasadd_readvariableop_resource:	љѕб)while/lstm_cell_24/BiasAdd/ReadVariableOpб(while/lstm_cell_24/MatMul/ReadVariableOpб*while/lstm_cell_24/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         	*
element_dtype0Ю
(while/lstm_cell_24/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_24_matmul_readvariableop_resource_0*
_output_shapes
:		љ*
dtype0║
while/lstm_cell_24/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
*while/lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_24_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0А
while/lstm_cell_24/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љъ
while/lstm_cell_24/addAddV2#while/lstm_cell_24/MatMul:product:0%while/lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:         љЏ
)while/lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_24_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0Д
while/lstm_cell_24/BiasAddBiasAddwhile/lstm_cell_24/add:z:01while/lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љd
"while/lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_24/splitSplit+while/lstm_cell_24/split/split_dim:output:0#while/lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitz
while/lstm_cell_24/SigmoidSigmoid!while/lstm_cell_24/split:output:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_24/Sigmoid_1Sigmoid!while/lstm_cell_24/split:output:1*
T0*'
_output_shapes
:         dє
while/lstm_cell_24/mulMul while/lstm_cell_24/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dt
while/lstm_cell_24/ReluRelu!while/lstm_cell_24/split:output:2*
T0*'
_output_shapes
:         dў
while/lstm_cell_24/mul_1Mulwhile/lstm_cell_24/Sigmoid:y:0%while/lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:         dЇ
while/lstm_cell_24/add_1AddV2while/lstm_cell_24/mul:z:0while/lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_24/Sigmoid_2Sigmoid!while/lstm_cell_24/split:output:3*
T0*'
_output_shapes
:         dq
while/lstm_cell_24/Relu_1Reluwhile/lstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:         dю
while/lstm_cell_24/mul_2Mul while/lstm_cell_24/Sigmoid_2:y:0'while/lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:         d┼
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_24/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_24/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dy
while/Identity_5Identitywhile/lstm_cell_24/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dл

while/NoOpNoOp*^while/lstm_cell_24/BiasAdd/ReadVariableOp)^while/lstm_cell_24/MatMul/ReadVariableOp+^while/lstm_cell_24/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"j
2while_lstm_cell_24_biasadd_readvariableop_resource4while_lstm_cell_24_biasadd_readvariableop_resource_0"l
3while_lstm_cell_24_matmul_1_readvariableop_resource5while_lstm_cell_24_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_24_matmul_readvariableop_resource3while_lstm_cell_24_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2V
)while/lstm_cell_24/BiasAdd/ReadVariableOp)while/lstm_cell_24/BiasAdd/ReadVariableOp2T
(while/lstm_cell_24/MatMul/ReadVariableOp(while/lstm_cell_24/MatMul/ReadVariableOp2X
*while/lstm_cell_24/MatMul_1/ReadVariableOp*while/lstm_cell_24/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Џ

ш
D__inference_dense_24_layer_call_and_return_conditional_losses_195937

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
Ь8
л
while_body_193117
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_24_matmul_readvariableop_resource_0:		љH
5while_lstm_cell_24_matmul_1_readvariableop_resource_0:	dљC
4while_lstm_cell_24_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_24_matmul_readvariableop_resource:		љF
3while_lstm_cell_24_matmul_1_readvariableop_resource:	dљA
2while_lstm_cell_24_biasadd_readvariableop_resource:	љѕб)while/lstm_cell_24/BiasAdd/ReadVariableOpб(while/lstm_cell_24/MatMul/ReadVariableOpб*while/lstm_cell_24/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         	*
element_dtype0Ю
(while/lstm_cell_24/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_24_matmul_readvariableop_resource_0*
_output_shapes
:		љ*
dtype0║
while/lstm_cell_24/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
*while/lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_24_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0А
while/lstm_cell_24/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љъ
while/lstm_cell_24/addAddV2#while/lstm_cell_24/MatMul:product:0%while/lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:         љЏ
)while/lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_24_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0Д
while/lstm_cell_24/BiasAddBiasAddwhile/lstm_cell_24/add:z:01while/lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љd
"while/lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_24/splitSplit+while/lstm_cell_24/split/split_dim:output:0#while/lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitz
while/lstm_cell_24/SigmoidSigmoid!while/lstm_cell_24/split:output:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_24/Sigmoid_1Sigmoid!while/lstm_cell_24/split:output:1*
T0*'
_output_shapes
:         dє
while/lstm_cell_24/mulMul while/lstm_cell_24/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dt
while/lstm_cell_24/ReluRelu!while/lstm_cell_24/split:output:2*
T0*'
_output_shapes
:         dў
while/lstm_cell_24/mul_1Mulwhile/lstm_cell_24/Sigmoid:y:0%while/lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:         dЇ
while/lstm_cell_24/add_1AddV2while/lstm_cell_24/mul:z:0while/lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_24/Sigmoid_2Sigmoid!while/lstm_cell_24/split:output:3*
T0*'
_output_shapes
:         dq
while/lstm_cell_24/Relu_1Reluwhile/lstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:         dю
while/lstm_cell_24/mul_2Mul while/lstm_cell_24/Sigmoid_2:y:0'while/lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:         d┼
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_24/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_24/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dy
while/Identity_5Identitywhile/lstm_cell_24/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dл

while/NoOpNoOp*^while/lstm_cell_24/BiasAdd/ReadVariableOp)^while/lstm_cell_24/MatMul/ReadVariableOp+^while/lstm_cell_24/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"j
2while_lstm_cell_24_biasadd_readvariableop_resource4while_lstm_cell_24_biasadd_readvariableop_resource_0"l
3while_lstm_cell_24_matmul_1_readvariableop_resource5while_lstm_cell_24_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_24_matmul_readvariableop_resource3while_lstm_cell_24_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2V
)while/lstm_cell_24/BiasAdd/ReadVariableOp)while/lstm_cell_24/BiasAdd/ReadVariableOp2T
(while/lstm_cell_24/MatMul/ReadVariableOp(while/lstm_cell_24/MatMul/ReadVariableOp2X
*while/lstm_cell_24/MatMul_1/ReadVariableOp*while/lstm_cell_24/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
┘
d
F__inference_dropout_12_layer_call_and_return_conditional_losses_193719

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:         d[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         d"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         d:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
ѕ
с
lstm_24_while_cond_194103,
(lstm_24_while_lstm_24_while_loop_counter2
.lstm_24_while_lstm_24_while_maximum_iterations
lstm_24_while_placeholder
lstm_24_while_placeholder_1
lstm_24_while_placeholder_2
lstm_24_while_placeholder_3.
*lstm_24_while_less_lstm_24_strided_slice_1D
@lstm_24_while_lstm_24_while_cond_194103___redundant_placeholder0D
@lstm_24_while_lstm_24_while_cond_194103___redundant_placeholder1D
@lstm_24_while_lstm_24_while_cond_194103___redundant_placeholder2D
@lstm_24_while_lstm_24_while_cond_194103___redundant_placeholder3
lstm_24_while_identity
ѓ
lstm_24/while/LessLesslstm_24_while_placeholder*lstm_24_while_less_lstm_24_strided_slice_1*
T0*
_output_shapes
: [
lstm_24/while/IdentityIdentitylstm_24/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_24_while_identitylstm_24/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :XT

_output_shapes
: 
:
_user_specified_name" lstm_24/while/maximum_iterations:R N

_output_shapes
: 
4
_user_specified_namelstm_24/while/loop_counter
«

§
.__inference_sequential_12_layer_call_fn_194020

inputs
unknown:		љ
	unknown_0:	dљ
	unknown_1:	љ
	unknown_2:	dљ
	unknown_3:	dљ
	unknown_4:	љ
	unknown_5:d
	unknown_6:
	unknown_7:
	unknown_8:
identityѕбStatefulPartitionedCallк
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_sequential_12_layer_call_and_return_conditional_losses_193764o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         	: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
ѕ
с
lstm_25_while_cond_194549,
(lstm_25_while_lstm_25_while_loop_counter2
.lstm_25_while_lstm_25_while_maximum_iterations
lstm_25_while_placeholder
lstm_25_while_placeholder_1
lstm_25_while_placeholder_2
lstm_25_while_placeholder_3.
*lstm_25_while_less_lstm_25_strided_slice_1D
@lstm_25_while_lstm_25_while_cond_194549___redundant_placeholder0D
@lstm_25_while_lstm_25_while_cond_194549___redundant_placeholder1D
@lstm_25_while_lstm_25_while_cond_194549___redundant_placeholder2D
@lstm_25_while_lstm_25_while_cond_194549___redundant_placeholder3
lstm_25_while_identity
ѓ
lstm_25/while/LessLesslstm_25_while_placeholder*lstm_25_while_less_lstm_25_strided_slice_1*
T0*
_output_shapes
: [
lstm_25/while/IdentityIdentitylstm_25/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_25_while_identitylstm_25/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :XT

_output_shapes
: 
:
_user_specified_name" lstm_25/while/maximum_iterations:R N

_output_shapes
: 
4
_user_specified_namelstm_25/while/loop_counter
Н
ё
H__inference_lstm_cell_24_layer_call_and_return_conditional_losses_192415

inputs

states
states_11
matmul_readvariableop_resource:		љ3
 matmul_1_readvariableop_resource:	dљ.
biasadd_readvariableop_resource:	љ
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		љ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         љs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:         d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         dЉ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         	:         d:         d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:OK
'
_output_shapes
:         d
 
_user_specified_namestates:OK
'
_output_shapes
:         d
 
_user_specified_namestates:O K
'
_output_shapes
:         	
 
_user_specified_nameinputs"з
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╗
serving_defaultД
K
lstm_24_input:
serving_default_lstm_24_input:0         	<
dense_250
StatefulPartitionedCall:0         tensorflow/serving/predict:яЏ
Ј
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
┌
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec"
_tf_keras_rnn_layer
┌
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell
 
state_spec"
_tf_keras_rnn_layer
╝
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses
'_random_generator"
_tf_keras_layer
╗
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses

.kernel
/bias"
_tf_keras_layer
╗
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses

6kernel
7bias"
_tf_keras_layer
f
80
91
:2
;3
<4
=5
.6
/7
68
79"
trackable_list_wrapper
f
80
91
:2
;3
<4
=5
.6
/7
68
79"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
с
Ctrace_0
Dtrace_1
Etrace_2
Ftrace_32Э
.__inference_sequential_12_layer_call_fn_193787
.__inference_sequential_12_layer_call_fn_193841
.__inference_sequential_12_layer_call_fn_194020
.__inference_sequential_12_layer_call_fn_194045х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zCtrace_0zDtrace_1zEtrace_2zFtrace_3
¤
Gtrace_0
Htrace_1
Itrace_2
Jtrace_32С
I__inference_sequential_12_layer_call_and_return_conditional_losses_193410
I__inference_sequential_12_layer_call_and_return_conditional_losses_193732
I__inference_sequential_12_layer_call_and_return_conditional_losses_194351
I__inference_sequential_12_layer_call_and_return_conditional_losses_194650х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zGtrace_0zHtrace_1zItrace_2zJtrace_3
мB¤
!__inference__wrapped_model_192351lstm_24_input"ў
Љ▓Ї
FullArgSpec
argsџ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ю
K
_variables
L_iterations
M_learning_rate
N_index_dict
O
_momentums
P_velocities
Q_update_step_xla"
experimentalOptimizer
,
Rserving_default"
signature_map
5
80
91
:2"
trackable_list_wrapper
5
80
91
:2"
trackable_list_wrapper
 "
trackable_list_wrapper
╣

Sstates
Tnon_trainable_variables

Ulayers
Vmetrics
Wlayer_regularization_losses
Xlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Я
Ytrace_0
Ztrace_1
[trace_2
\trace_32ш
(__inference_lstm_24_layer_call_fn_194661
(__inference_lstm_24_layer_call_fn_194672
(__inference_lstm_24_layer_call_fn_194683
(__inference_lstm_24_layer_call_fn_194694╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zYtrace_0zZtrace_1z[trace_2z\trace_3
╠
]trace_0
^trace_1
_trace_2
`trace_32р
C__inference_lstm_24_layer_call_and_return_conditional_losses_194837
C__inference_lstm_24_layer_call_and_return_conditional_losses_194980
C__inference_lstm_24_layer_call_and_return_conditional_losses_195123
C__inference_lstm_24_layer_call_and_return_conditional_losses_195266╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z]trace_0z^trace_1z_trace_2z`trace_3
"
_generic_user_object
Э
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses
g_random_generator
h
state_size

8kernel
9recurrent_kernel
:bias"
_tf_keras_layer
 "
trackable_list_wrapper
5
;0
<1
=2"
trackable_list_wrapper
5
;0
<1
=2"
trackable_list_wrapper
 "
trackable_list_wrapper
╣

istates
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Я
otrace_0
ptrace_1
qtrace_2
rtrace_32ш
(__inference_lstm_25_layer_call_fn_195277
(__inference_lstm_25_layer_call_fn_195288
(__inference_lstm_25_layer_call_fn_195299
(__inference_lstm_25_layer_call_fn_195310╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zotrace_0zptrace_1zqtrace_2zrtrace_3
╠
strace_0
ttrace_1
utrace_2
vtrace_32р
C__inference_lstm_25_layer_call_and_return_conditional_losses_195455
C__inference_lstm_25_layer_call_and_return_conditional_losses_195600
C__inference_lstm_25_layer_call_and_return_conditional_losses_195745
C__inference_lstm_25_layer_call_and_return_conditional_losses_195890╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zstrace_0zttrace_1zutrace_2zvtrace_3
"
_generic_user_object
Э
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses
}_random_generator
~
state_size

;kernel
<recurrent_kernel
=bias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▒
non_trainable_variables
ђlayers
Ђmetrics
 ѓlayer_regularization_losses
Ѓlayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
┴
ёtrace_0
Ёtrace_12є
+__inference_dropout_12_layer_call_fn_195895
+__inference_dropout_12_layer_call_fn_195900Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zёtrace_0zЁtrace_1
э
єtrace_0
Єtrace_12╝
F__inference_dropout_12_layer_call_and_return_conditional_losses_195912
F__inference_dropout_12_layer_call_and_return_conditional_losses_195917Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zєtrace_0zЄtrace_1
"
_generic_user_object
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
ѕnon_trainable_variables
Ѕlayers
іmetrics
 Іlayer_regularization_losses
їlayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
т
Їtrace_02к
)__inference_dense_24_layer_call_fn_195926ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЇtrace_0
ђ
јtrace_02р
D__inference_dense_24_layer_call_and_return_conditional_losses_195937ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zјtrace_0
!:d2dense_24/kernel
:2dense_24/bias
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Јnon_trainable_variables
љlayers
Љmetrics
 њlayer_regularization_losses
Њlayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
т
ћtrace_02к
)__inference_dense_25_layer_call_fn_195946ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zћtrace_0
ђ
Ћtrace_02р
D__inference_dense_25_layer_call_and_return_conditional_losses_195957ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЋtrace_0
!:2dense_25/kernel
:2dense_25/bias
.:,		љ2lstm_24/lstm_cell_24/kernel
8:6	dљ2%lstm_24/lstm_cell_24/recurrent_kernel
(:&љ2lstm_24/lstm_cell_24/bias
.:,	dљ2lstm_25/lstm_cell_25/kernel
8:6	dљ2%lstm_25/lstm_cell_25/recurrent_kernel
(:&љ2lstm_25/lstm_cell_25/bias
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
0
ќ0
Ќ1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЧBщ
.__inference_sequential_12_layer_call_fn_193787lstm_24_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЧBщ
.__inference_sequential_12_layer_call_fn_193841lstm_24_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
шBЫ
.__inference_sequential_12_layer_call_fn_194020inputs"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
шBЫ
.__inference_sequential_12_layer_call_fn_194045inputs"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЌBћ
I__inference_sequential_12_layer_call_and_return_conditional_losses_193410lstm_24_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЌBћ
I__inference_sequential_12_layer_call_and_return_conditional_losses_193732lstm_24_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
љBЇ
I__inference_sequential_12_layer_call_and_return_conditional_losses_194351inputs"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
љBЇ
I__inference_sequential_12_layer_call_and_return_conditional_losses_194650inputs"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
м
L0
ў1
Ў2
џ3
Џ4
ю5
Ю6
ъ7
Ъ8
а9
А10
б11
Б12
ц13
Ц14
д15
Д16
е17
Е18
ф19
Ф20"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
p
ў0
џ1
ю2
ъ3
а4
б5
ц6
д7
е8
ф9"
trackable_list_wrapper
p
Ў0
Џ1
Ю2
Ъ3
А4
Б5
Ц6
Д7
Е8
Ф9"
trackable_list_wrapper
х2▓»
д▓б
FullArgSpec*
args"џ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
ЛB╬
$__inference_signature_wrapper_193995lstm_24_input"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
єBЃ
(__inference_lstm_24_layer_call_fn_194661inputs_0"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
єBЃ
(__inference_lstm_24_layer_call_fn_194672inputs_0"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ёBЂ
(__inference_lstm_24_layer_call_fn_194683inputs"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ёBЂ
(__inference_lstm_24_layer_call_fn_194694inputs"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
АBъ
C__inference_lstm_24_layer_call_and_return_conditional_losses_194837inputs_0"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
АBъ
C__inference_lstm_24_layer_call_and_return_conditional_losses_194980inputs_0"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЪBю
C__inference_lstm_24_layer_call_and_return_conditional_losses_195123inputs"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЪBю
C__inference_lstm_24_layer_call_and_return_conditional_losses_195266inputs"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
5
80
91
:2"
trackable_list_wrapper
5
80
91
:2"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
гnon_trainable_variables
Гlayers
«metrics
 »layer_regularization_losses
░layer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
¤
▒trace_0
▓trace_12ћ
-__inference_lstm_cell_24_layer_call_fn_195974
-__inference_lstm_cell_24_layer_call_fn_195991│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z▒trace_0z▓trace_1
Ё
│trace_0
┤trace_12╩
H__inference_lstm_cell_24_layer_call_and_return_conditional_losses_196023
H__inference_lstm_cell_24_layer_call_and_return_conditional_losses_196055│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z│trace_0z┤trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
єBЃ
(__inference_lstm_25_layer_call_fn_195277inputs_0"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
єBЃ
(__inference_lstm_25_layer_call_fn_195288inputs_0"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ёBЂ
(__inference_lstm_25_layer_call_fn_195299inputs"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ёBЂ
(__inference_lstm_25_layer_call_fn_195310inputs"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
АBъ
C__inference_lstm_25_layer_call_and_return_conditional_losses_195455inputs_0"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
АBъ
C__inference_lstm_25_layer_call_and_return_conditional_losses_195600inputs_0"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЪBю
C__inference_lstm_25_layer_call_and_return_conditional_losses_195745inputs"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЪBю
C__inference_lstm_25_layer_call_and_return_conditional_losses_195890inputs"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
5
;0
<1
=2"
trackable_list_wrapper
5
;0
<1
=2"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
хnon_trainable_variables
Хlayers
иmetrics
 Иlayer_regularization_losses
╣layer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
¤
║trace_0
╗trace_12ћ
-__inference_lstm_cell_25_layer_call_fn_196072
-__inference_lstm_cell_25_layer_call_fn_196089│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z║trace_0z╗trace_1
Ё
╝trace_0
йtrace_12╩
H__inference_lstm_cell_25_layer_call_and_return_conditional_losses_196121
H__inference_lstm_cell_25_layer_call_and_return_conditional_losses_196153│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z╝trace_0zйtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
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
ТBс
+__inference_dropout_12_layer_call_fn_195895inputs"Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ТBс
+__inference_dropout_12_layer_call_fn_195900inputs"Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЂB■
F__inference_dropout_12_layer_call_and_return_conditional_losses_195912inputs"Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЂB■
F__inference_dropout_12_layer_call_and_return_conditional_losses_195917inputs"Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
МBл
)__inference_dense_24_layer_call_fn_195926inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЬBв
D__inference_dense_24_layer_call_and_return_conditional_losses_195937inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
МBл
)__inference_dense_25_layer_call_fn_195946inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЬBв
D__inference_dense_25_layer_call_and_return_conditional_losses_195957inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
R
Й	variables
┐	keras_api

└total

┴count"
_tf_keras_metric
c
┬	variables
├	keras_api

─total

┼count
к
_fn_kwargs"
_tf_keras_metric
3:1		љ2"Adam/m/lstm_24/lstm_cell_24/kernel
3:1		љ2"Adam/v/lstm_24/lstm_cell_24/kernel
=:;	dљ2,Adam/m/lstm_24/lstm_cell_24/recurrent_kernel
=:;	dљ2,Adam/v/lstm_24/lstm_cell_24/recurrent_kernel
-:+љ2 Adam/m/lstm_24/lstm_cell_24/bias
-:+љ2 Adam/v/lstm_24/lstm_cell_24/bias
3:1	dљ2"Adam/m/lstm_25/lstm_cell_25/kernel
3:1	dљ2"Adam/v/lstm_25/lstm_cell_25/kernel
=:;	dљ2,Adam/m/lstm_25/lstm_cell_25/recurrent_kernel
=:;	dљ2,Adam/v/lstm_25/lstm_cell_25/recurrent_kernel
-:+љ2 Adam/m/lstm_25/lstm_cell_25/bias
-:+љ2 Adam/v/lstm_25/lstm_cell_25/bias
&:$d2Adam/m/dense_24/kernel
&:$d2Adam/v/dense_24/kernel
 :2Adam/m/dense_24/bias
 :2Adam/v/dense_24/bias
&:$2Adam/m/dense_25/kernel
&:$2Adam/v/dense_25/kernel
 :2Adam/m/dense_25/bias
 :2Adam/v/dense_25/bias
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
єBЃ
-__inference_lstm_cell_24_layer_call_fn_195974inputsstates_0states_1"│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
єBЃ
-__inference_lstm_cell_24_layer_call_fn_195991inputsstates_0states_1"│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
АBъ
H__inference_lstm_cell_24_layer_call_and_return_conditional_losses_196023inputsstates_0states_1"│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
АBъ
H__inference_lstm_cell_24_layer_call_and_return_conditional_losses_196055inputsstates_0states_1"│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
єBЃ
-__inference_lstm_cell_25_layer_call_fn_196072inputsstates_0states_1"│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
єBЃ
-__inference_lstm_cell_25_layer_call_fn_196089inputsstates_0states_1"│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
АBъ
H__inference_lstm_cell_25_layer_call_and_return_conditional_losses_196121inputsstates_0states_1"│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
АBъ
H__inference_lstm_cell_25_layer_call_and_return_conditional_losses_196153inputsstates_0states_1"│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
0
└0
┴1"
trackable_list_wrapper
.
Й	variables"
_generic_user_object
:  (2total
:  (2count
0
─0
┼1"
trackable_list_wrapper
.
┬	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapperб
!__inference__wrapped_model_192351}
89:;<=./67:б7
0б-
+і(
lstm_24_input         	
ф "3ф0
.
dense_25"і
dense_25         Ф
D__inference_dense_24_layer_call_and_return_conditional_losses_195937c.//б,
%б"
 і
inputs         d
ф ",б)
"і
tensor_0         
џ Ё
)__inference_dense_24_layer_call_fn_195926X.//б,
%б"
 і
inputs         d
ф "!і
unknown         Ф
D__inference_dense_25_layer_call_and_return_conditional_losses_195957c67/б,
%б"
 і
inputs         
ф ",б)
"і
tensor_0         
џ Ё
)__inference_dense_25_layer_call_fn_195946X67/б,
%б"
 і
inputs         
ф "!і
unknown         Г
F__inference_dropout_12_layer_call_and_return_conditional_losses_195912c3б0
)б&
 і
inputs         d
p
ф ",б)
"і
tensor_0         d
џ Г
F__inference_dropout_12_layer_call_and_return_conditional_losses_195917c3б0
)б&
 і
inputs         d
p 
ф ",б)
"і
tensor_0         d
џ Є
+__inference_dropout_12_layer_call_fn_195895X3б0
)б&
 і
inputs         d
p
ф "!і
unknown         dЄ
+__inference_dropout_12_layer_call_fn_195900X3б0
)б&
 і
inputs         d
p 
ф "!і
unknown         d┘
C__inference_lstm_24_layer_call_and_return_conditional_losses_194837Љ89:OбL
EбB
4џ1
/і,
inputs_0                  	

 
p

 
ф "9б6
/і,
tensor_0                  d
џ ┘
C__inference_lstm_24_layer_call_and_return_conditional_losses_194980Љ89:OбL
EбB
4џ1
/і,
inputs_0                  	

 
p 

 
ф "9б6
/і,
tensor_0                  d
џ ┐
C__inference_lstm_24_layer_call_and_return_conditional_losses_195123x89:?б<
5б2
$і!
inputs         	

 
p

 
ф "0б-
&і#
tensor_0         d
џ ┐
C__inference_lstm_24_layer_call_and_return_conditional_losses_195266x89:?б<
5б2
$і!
inputs         	

 
p 

 
ф "0б-
&і#
tensor_0         d
џ │
(__inference_lstm_24_layer_call_fn_194661є89:OбL
EбB
4џ1
/і,
inputs_0                  	

 
p

 
ф ".і+
unknown                  d│
(__inference_lstm_24_layer_call_fn_194672є89:OбL
EбB
4џ1
/і,
inputs_0                  	

 
p 

 
ф ".і+
unknown                  dЎ
(__inference_lstm_24_layer_call_fn_194683m89:?б<
5б2
$і!
inputs         	

 
p

 
ф "%і"
unknown         dЎ
(__inference_lstm_24_layer_call_fn_194694m89:?б<
5б2
$і!
inputs         	

 
p 

 
ф "%і"
unknown         d╠
C__inference_lstm_25_layer_call_and_return_conditional_losses_195455ё;<=OбL
EбB
4џ1
/і,
inputs_0                  d

 
p

 
ф ",б)
"і
tensor_0         d
џ ╠
C__inference_lstm_25_layer_call_and_return_conditional_losses_195600ё;<=OбL
EбB
4џ1
/і,
inputs_0                  d

 
p 

 
ф ",б)
"і
tensor_0         d
џ ╗
C__inference_lstm_25_layer_call_and_return_conditional_losses_195745t;<=?б<
5б2
$і!
inputs         d

 
p

 
ф ",б)
"і
tensor_0         d
џ ╗
C__inference_lstm_25_layer_call_and_return_conditional_losses_195890t;<=?б<
5б2
$і!
inputs         d

 
p 

 
ф ",б)
"і
tensor_0         d
џ Ц
(__inference_lstm_25_layer_call_fn_195277y;<=OбL
EбB
4џ1
/і,
inputs_0                  d

 
p

 
ф "!і
unknown         dЦ
(__inference_lstm_25_layer_call_fn_195288y;<=OбL
EбB
4џ1
/і,
inputs_0                  d

 
p 

 
ф "!і
unknown         dЋ
(__inference_lstm_25_layer_call_fn_195299i;<=?б<
5б2
$і!
inputs         d

 
p

 
ф "!і
unknown         dЋ
(__inference_lstm_25_layer_call_fn_195310i;<=?б<
5б2
$і!
inputs         d

 
p 

 
ф "!і
unknown         dр
H__inference_lstm_cell_24_layer_call_and_return_conditional_losses_196023ћ89:ђб}
vбs
 і
inputs         	
KбH
"і
states_0         d
"і
states_1         d
p
ф "ЅбЁ
~б{
$і!

tensor_0_0         d
SџP
&і#
tensor_0_1_0         d
&і#
tensor_0_1_1         d
џ р
H__inference_lstm_cell_24_layer_call_and_return_conditional_losses_196055ћ89:ђб}
vбs
 і
inputs         	
KбH
"і
states_0         d
"і
states_1         d
p 
ф "ЅбЁ
~б{
$і!

tensor_0_0         d
SџP
&і#
tensor_0_1_0         d
&і#
tensor_0_1_1         d
џ ┤
-__inference_lstm_cell_24_layer_call_fn_195974ѓ89:ђб}
vбs
 і
inputs         	
KбH
"і
states_0         d
"і
states_1         d
p
ф "xбu
"і
tensor_0         d
OџL
$і!

tensor_1_0         d
$і!

tensor_1_1         d┤
-__inference_lstm_cell_24_layer_call_fn_195991ѓ89:ђб}
vбs
 і
inputs         	
KбH
"і
states_0         d
"і
states_1         d
p 
ф "xбu
"і
tensor_0         d
OџL
$і!

tensor_1_0         d
$і!

tensor_1_1         dр
H__inference_lstm_cell_25_layer_call_and_return_conditional_losses_196121ћ;<=ђб}
vбs
 і
inputs         d
KбH
"і
states_0         d
"і
states_1         d
p
ф "ЅбЁ
~б{
$і!

tensor_0_0         d
SџP
&і#
tensor_0_1_0         d
&і#
tensor_0_1_1         d
џ р
H__inference_lstm_cell_25_layer_call_and_return_conditional_losses_196153ћ;<=ђб}
vбs
 і
inputs         d
KбH
"і
states_0         d
"і
states_1         d
p 
ф "ЅбЁ
~б{
$і!

tensor_0_0         d
SџP
&і#
tensor_0_1_0         d
&і#
tensor_0_1_1         d
џ ┤
-__inference_lstm_cell_25_layer_call_fn_196072ѓ;<=ђб}
vбs
 і
inputs         d
KбH
"і
states_0         d
"і
states_1         d
p
ф "xбu
"і
tensor_0         d
OџL
$і!

tensor_1_0         d
$і!

tensor_1_1         d┤
-__inference_lstm_cell_25_layer_call_fn_196089ѓ;<=ђб}
vбs
 і
inputs         d
KбH
"і
states_0         d
"і
states_1         d
p 
ф "xбu
"і
tensor_0         d
OџL
$і!

tensor_1_0         d
$і!

tensor_1_1         d╦
I__inference_sequential_12_layer_call_and_return_conditional_losses_193410~
89:;<=./67Bб?
8б5
+і(
lstm_24_input         	
p

 
ф ",б)
"і
tensor_0         
џ ╦
I__inference_sequential_12_layer_call_and_return_conditional_losses_193732~
89:;<=./67Bб?
8б5
+і(
lstm_24_input         	
p 

 
ф ",б)
"і
tensor_0         
џ ─
I__inference_sequential_12_layer_call_and_return_conditional_losses_194351w
89:;<=./67;б8
1б.
$і!
inputs         	
p

 
ф ",б)
"і
tensor_0         
џ ─
I__inference_sequential_12_layer_call_and_return_conditional_losses_194650w
89:;<=./67;б8
1б.
$і!
inputs         	
p 

 
ф ",б)
"і
tensor_0         
џ Ц
.__inference_sequential_12_layer_call_fn_193787s
89:;<=./67Bб?
8б5
+і(
lstm_24_input         	
p

 
ф "!і
unknown         Ц
.__inference_sequential_12_layer_call_fn_193841s
89:;<=./67Bб?
8б5
+і(
lstm_24_input         	
p 

 
ф "!і
unknown         ъ
.__inference_sequential_12_layer_call_fn_194020l
89:;<=./67;б8
1б.
$і!
inputs         	
p

 
ф "!і
unknown         ъ
.__inference_sequential_12_layer_call_fn_194045l
89:;<=./67;б8
1б.
$і!
inputs         	
p 

 
ф "!і
unknown         и
$__inference_signature_wrapper_193995ј
89:;<=./67KбH
б 
Aф>
<
lstm_24_input+і(
lstm_24_input         	"3ф0
.
dense_25"і
dense_25         