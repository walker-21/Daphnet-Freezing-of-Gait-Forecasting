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
Adam/v/dense_35/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/dense_35/bias
y
(Adam/v/dense_35/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_35/bias*
_output_shapes
:*
dtype0
ђ
Adam/m/dense_35/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/dense_35/bias
y
(Adam/m/dense_35/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_35/bias*
_output_shapes
:*
dtype0
ѕ
Adam/v/dense_35/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/v/dense_35/kernel
Ђ
*Adam/v/dense_35/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_35/kernel*
_output_shapes

:*
dtype0
ѕ
Adam/m/dense_35/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/m/dense_35/kernel
Ђ
*Adam/m/dense_35/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_35/kernel*
_output_shapes

:*
dtype0
ђ
Adam/v/dense_34/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/dense_34/bias
y
(Adam/v/dense_34/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_34/bias*
_output_shapes
:*
dtype0
ђ
Adam/m/dense_34/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/dense_34/bias
y
(Adam/m/dense_34/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_34/bias*
_output_shapes
:*
dtype0
ѕ
Adam/v/dense_34/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*'
shared_nameAdam/v/dense_34/kernel
Ђ
*Adam/v/dense_34/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_34/kernel*
_output_shapes

:d*
dtype0
ѕ
Adam/m/dense_34/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*'
shared_nameAdam/m/dense_34/kernel
Ђ
*Adam/m/dense_34/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_34/kernel*
_output_shapes

:d*
dtype0
Ў
 Adam/v/lstm_35/lstm_cell_35/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ*1
shared_name" Adam/v/lstm_35/lstm_cell_35/bias
њ
4Adam/v/lstm_35/lstm_cell_35/bias/Read/ReadVariableOpReadVariableOp Adam/v/lstm_35/lstm_cell_35/bias*
_output_shapes	
:љ*
dtype0
Ў
 Adam/m/lstm_35/lstm_cell_35/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ*1
shared_name" Adam/m/lstm_35/lstm_cell_35/bias
њ
4Adam/m/lstm_35/lstm_cell_35/bias/Read/ReadVariableOpReadVariableOp Adam/m/lstm_35/lstm_cell_35/bias*
_output_shapes	
:љ*
dtype0
х
,Adam/v/lstm_35/lstm_cell_35/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*=
shared_name.,Adam/v/lstm_35/lstm_cell_35/recurrent_kernel
«
@Adam/v/lstm_35/lstm_cell_35/recurrent_kernel/Read/ReadVariableOpReadVariableOp,Adam/v/lstm_35/lstm_cell_35/recurrent_kernel*
_output_shapes
:	dљ*
dtype0
х
,Adam/m/lstm_35/lstm_cell_35/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*=
shared_name.,Adam/m/lstm_35/lstm_cell_35/recurrent_kernel
«
@Adam/m/lstm_35/lstm_cell_35/recurrent_kernel/Read/ReadVariableOpReadVariableOp,Adam/m/lstm_35/lstm_cell_35/recurrent_kernel*
_output_shapes
:	dљ*
dtype0
А
"Adam/v/lstm_35/lstm_cell_35/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*3
shared_name$"Adam/v/lstm_35/lstm_cell_35/kernel
џ
6Adam/v/lstm_35/lstm_cell_35/kernel/Read/ReadVariableOpReadVariableOp"Adam/v/lstm_35/lstm_cell_35/kernel*
_output_shapes
:	dљ*
dtype0
А
"Adam/m/lstm_35/lstm_cell_35/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*3
shared_name$"Adam/m/lstm_35/lstm_cell_35/kernel
џ
6Adam/m/lstm_35/lstm_cell_35/kernel/Read/ReadVariableOpReadVariableOp"Adam/m/lstm_35/lstm_cell_35/kernel*
_output_shapes
:	dљ*
dtype0
Ў
 Adam/v/lstm_34/lstm_cell_34/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ*1
shared_name" Adam/v/lstm_34/lstm_cell_34/bias
њ
4Adam/v/lstm_34/lstm_cell_34/bias/Read/ReadVariableOpReadVariableOp Adam/v/lstm_34/lstm_cell_34/bias*
_output_shapes	
:љ*
dtype0
Ў
 Adam/m/lstm_34/lstm_cell_34/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ*1
shared_name" Adam/m/lstm_34/lstm_cell_34/bias
њ
4Adam/m/lstm_34/lstm_cell_34/bias/Read/ReadVariableOpReadVariableOp Adam/m/lstm_34/lstm_cell_34/bias*
_output_shapes	
:љ*
dtype0
х
,Adam/v/lstm_34/lstm_cell_34/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*=
shared_name.,Adam/v/lstm_34/lstm_cell_34/recurrent_kernel
«
@Adam/v/lstm_34/lstm_cell_34/recurrent_kernel/Read/ReadVariableOpReadVariableOp,Adam/v/lstm_34/lstm_cell_34/recurrent_kernel*
_output_shapes
:	dљ*
dtype0
х
,Adam/m/lstm_34/lstm_cell_34/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*=
shared_name.,Adam/m/lstm_34/lstm_cell_34/recurrent_kernel
«
@Adam/m/lstm_34/lstm_cell_34/recurrent_kernel/Read/ReadVariableOpReadVariableOp,Adam/m/lstm_34/lstm_cell_34/recurrent_kernel*
_output_shapes
:	dљ*
dtype0
А
"Adam/v/lstm_34/lstm_cell_34/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:		љ*3
shared_name$"Adam/v/lstm_34/lstm_cell_34/kernel
џ
6Adam/v/lstm_34/lstm_cell_34/kernel/Read/ReadVariableOpReadVariableOp"Adam/v/lstm_34/lstm_cell_34/kernel*
_output_shapes
:		љ*
dtype0
А
"Adam/m/lstm_34/lstm_cell_34/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:		љ*3
shared_name$"Adam/m/lstm_34/lstm_cell_34/kernel
џ
6Adam/m/lstm_34/lstm_cell_34/kernel/Read/ReadVariableOpReadVariableOp"Adam/m/lstm_34/lstm_cell_34/kernel*
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
lstm_35/lstm_cell_35/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ**
shared_namelstm_35/lstm_cell_35/bias
ё
-lstm_35/lstm_cell_35/bias/Read/ReadVariableOpReadVariableOplstm_35/lstm_cell_35/bias*
_output_shapes	
:љ*
dtype0
Д
%lstm_35/lstm_cell_35/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*6
shared_name'%lstm_35/lstm_cell_35/recurrent_kernel
а
9lstm_35/lstm_cell_35/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_35/lstm_cell_35/recurrent_kernel*
_output_shapes
:	dљ*
dtype0
Њ
lstm_35/lstm_cell_35/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*,
shared_namelstm_35/lstm_cell_35/kernel
ї
/lstm_35/lstm_cell_35/kernel/Read/ReadVariableOpReadVariableOplstm_35/lstm_cell_35/kernel*
_output_shapes
:	dљ*
dtype0
І
lstm_34/lstm_cell_34/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ**
shared_namelstm_34/lstm_cell_34/bias
ё
-lstm_34/lstm_cell_34/bias/Read/ReadVariableOpReadVariableOplstm_34/lstm_cell_34/bias*
_output_shapes	
:љ*
dtype0
Д
%lstm_34/lstm_cell_34/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*6
shared_name'%lstm_34/lstm_cell_34/recurrent_kernel
а
9lstm_34/lstm_cell_34/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_34/lstm_cell_34/recurrent_kernel*
_output_shapes
:	dљ*
dtype0
Њ
lstm_34/lstm_cell_34/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:		љ*,
shared_namelstm_34/lstm_cell_34/kernel
ї
/lstm_34/lstm_cell_34/kernel/Read/ReadVariableOpReadVariableOplstm_34/lstm_cell_34/kernel*
_output_shapes
:		љ*
dtype0
r
dense_35/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_35/bias
k
!dense_35/bias/Read/ReadVariableOpReadVariableOpdense_35/bias*
_output_shapes
:*
dtype0
z
dense_35/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_35/kernel
s
#dense_35/kernel/Read/ReadVariableOpReadVariableOpdense_35/kernel*
_output_shapes

:*
dtype0
r
dense_34/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_34/bias
k
!dense_34/bias/Read/ReadVariableOpReadVariableOpdense_34/bias*
_output_shapes
:*
dtype0
z
dense_34/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d* 
shared_namedense_34/kernel
s
#dense_34/kernel/Read/ReadVariableOpReadVariableOpdense_34/kernel*
_output_shapes

:d*
dtype0
ѕ
serving_default_lstm_34_inputPlaceholder*+
_output_shapes
:         	*
dtype0* 
shape:         	
╩
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_34_inputlstm_34/lstm_cell_34/kernel%lstm_34/lstm_cell_34/recurrent_kernellstm_34/lstm_cell_34/biaslstm_35/lstm_cell_35/kernel%lstm_35/lstm_cell_35/recurrent_kernellstm_35/lstm_cell_35/biasdense_34/kerneldense_34/biasdense_35/kerneldense_35/bias*
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
$__inference_signature_wrapper_379053

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
VARIABLE_VALUEdense_34/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_34/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_35/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_35/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUElstm_34/lstm_cell_34/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%lstm_34/lstm_cell_34/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_34/lstm_cell_34/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUElstm_35/lstm_cell_35/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%lstm_35/lstm_cell_35/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_35/lstm_cell_35/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUE"Adam/m/lstm_34/lstm_cell_34/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/v/lstm_34/lstm_cell_34/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE,Adam/m/lstm_34/lstm_cell_34/recurrent_kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE,Adam/v/lstm_34/lstm_cell_34/recurrent_kernel1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE Adam/m/lstm_34/lstm_cell_34/bias1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE Adam/v/lstm_34/lstm_cell_34/bias1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/m/lstm_35/lstm_cell_35/kernel1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/v/lstm_35/lstm_cell_35/kernel1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE,Adam/m/lstm_35/lstm_cell_35/recurrent_kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE,Adam/v/lstm_35/lstm_cell_35/recurrent_kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE Adam/m/lstm_35/lstm_cell_35/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE Adam/v/lstm_35/lstm_cell_35/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_34/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_34/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_34/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_34/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_35/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_35/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_35/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_35/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
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
 	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense_34/kerneldense_34/biasdense_35/kerneldense_35/biaslstm_34/lstm_cell_34/kernel%lstm_34/lstm_cell_34/recurrent_kernellstm_34/lstm_cell_34/biaslstm_35/lstm_cell_35/kernel%lstm_35/lstm_cell_35/recurrent_kernellstm_35/lstm_cell_35/bias	iterationlearning_rate"Adam/m/lstm_34/lstm_cell_34/kernel"Adam/v/lstm_34/lstm_cell_34/kernel,Adam/m/lstm_34/lstm_cell_34/recurrent_kernel,Adam/v/lstm_34/lstm_cell_34/recurrent_kernel Adam/m/lstm_34/lstm_cell_34/bias Adam/v/lstm_34/lstm_cell_34/bias"Adam/m/lstm_35/lstm_cell_35/kernel"Adam/v/lstm_35/lstm_cell_35/kernel,Adam/m/lstm_35/lstm_cell_35/recurrent_kernel,Adam/v/lstm_35/lstm_cell_35/recurrent_kernel Adam/m/lstm_35/lstm_cell_35/bias Adam/v/lstm_35/lstm_cell_35/biasAdam/m/dense_34/kernelAdam/v/dense_34/kernelAdam/m/dense_34/biasAdam/v/dense_34/biasAdam/m/dense_35/kernelAdam/v/dense_35/kernelAdam/m/dense_35/biasAdam/v/dense_35/biastotal_1count_1totalcountConst*1
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
__inference__traced_save_381450
Щ	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_34/kerneldense_34/biasdense_35/kerneldense_35/biaslstm_34/lstm_cell_34/kernel%lstm_34/lstm_cell_34/recurrent_kernellstm_34/lstm_cell_34/biaslstm_35/lstm_cell_35/kernel%lstm_35/lstm_cell_35/recurrent_kernellstm_35/lstm_cell_35/bias	iterationlearning_rate"Adam/m/lstm_34/lstm_cell_34/kernel"Adam/v/lstm_34/lstm_cell_34/kernel,Adam/m/lstm_34/lstm_cell_34/recurrent_kernel,Adam/v/lstm_34/lstm_cell_34/recurrent_kernel Adam/m/lstm_34/lstm_cell_34/bias Adam/v/lstm_34/lstm_cell_34/bias"Adam/m/lstm_35/lstm_cell_35/kernel"Adam/v/lstm_35/lstm_cell_35/kernel,Adam/m/lstm_35/lstm_cell_35/recurrent_kernel,Adam/v/lstm_35/lstm_cell_35/recurrent_kernel Adam/m/lstm_35/lstm_cell_35/bias Adam/v/lstm_35/lstm_cell_35/biasAdam/m/dense_34/kernelAdam/v/dense_34/kernelAdam/m/dense_34/biasAdam/v/dense_34/biasAdam/m/dense_35/kernelAdam/v/dense_35/kernelAdam/m/dense_35/biasAdam/v/dense_35/biastotal_1count_1totalcount*0
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
"__inference__traced_restore_381568нч 
і:
л
while_body_378326
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_35_matmul_readvariableop_resource_0:	dљH
5while_lstm_cell_35_matmul_1_readvariableop_resource_0:	dљC
4while_lstm_cell_35_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_35_matmul_readvariableop_resource:	dљF
3while_lstm_cell_35_matmul_1_readvariableop_resource:	dљA
2while_lstm_cell_35_biasadd_readvariableop_resource:	љѕб)while/lstm_cell_35/BiasAdd/ReadVariableOpб(while/lstm_cell_35/MatMul/ReadVariableOpб*while/lstm_cell_35/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ю
(while/lstm_cell_35/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_35_matmul_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0║
while/lstm_cell_35/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_35/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
*while/lstm_cell_35/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_35_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0А
while/lstm_cell_35/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_35/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љъ
while/lstm_cell_35/addAddV2#while/lstm_cell_35/MatMul:product:0%while/lstm_cell_35/MatMul_1:product:0*
T0*(
_output_shapes
:         љЏ
)while/lstm_cell_35/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_35_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0Д
while/lstm_cell_35/BiasAddBiasAddwhile/lstm_cell_35/add:z:01while/lstm_cell_35/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љd
"while/lstm_cell_35/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_35/splitSplit+while/lstm_cell_35/split/split_dim:output:0#while/lstm_cell_35/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitz
while/lstm_cell_35/SigmoidSigmoid!while/lstm_cell_35/split:output:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_35/Sigmoid_1Sigmoid!while/lstm_cell_35/split:output:1*
T0*'
_output_shapes
:         dє
while/lstm_cell_35/mulMul while/lstm_cell_35/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dt
while/lstm_cell_35/ReluRelu!while/lstm_cell_35/split:output:2*
T0*'
_output_shapes
:         dў
while/lstm_cell_35/mul_1Mulwhile/lstm_cell_35/Sigmoid:y:0%while/lstm_cell_35/Relu:activations:0*
T0*'
_output_shapes
:         dЇ
while/lstm_cell_35/add_1AddV2while/lstm_cell_35/mul:z:0while/lstm_cell_35/mul_1:z:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_35/Sigmoid_2Sigmoid!while/lstm_cell_35/split:output:3*
T0*'
_output_shapes
:         dq
while/lstm_cell_35/Relu_1Reluwhile/lstm_cell_35/add_1:z:0*
T0*'
_output_shapes
:         dю
while/lstm_cell_35/mul_2Mul while/lstm_cell_35/Sigmoid_2:y:0'while/lstm_cell_35/Relu_1:activations:0*
T0*'
_output_shapes
:         dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ь
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_35/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_35/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dy
while/Identity_5Identitywhile/lstm_cell_35/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dл

while/NoOpNoOp*^while/lstm_cell_35/BiasAdd/ReadVariableOp)^while/lstm_cell_35/MatMul/ReadVariableOp+^while/lstm_cell_35/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"j
2while_lstm_cell_35_biasadd_readvariableop_resource4while_lstm_cell_35_biasadd_readvariableop_resource_0"l
3while_lstm_cell_35_matmul_1_readvariableop_resource5while_lstm_cell_35_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_35_matmul_readvariableop_resource3while_lstm_cell_35_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2V
)while/lstm_cell_35/BiasAdd/ReadVariableOp)while/lstm_cell_35/BiasAdd/ReadVariableOp2T
(while/lstm_cell_35/MatMul/ReadVariableOp(while/lstm_cell_35/MatMul/ReadVariableOp2X
*while/lstm_cell_35/MatMul_1/ReadVariableOp*while/lstm_cell_35/MatMul_1/ReadVariableOp:
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
┼K
Џ
C__inference_lstm_35_layer_call_and_return_conditional_losses_380948

inputs>
+lstm_cell_35_matmul_readvariableop_resource:	dљ@
-lstm_cell_35_matmul_1_readvariableop_resource:	dљ;
,lstm_cell_35_biasadd_readvariableop_resource:	љ
identityѕб#lstm_cell_35/BiasAdd/ReadVariableOpб"lstm_cell_35/MatMul/ReadVariableOpб$lstm_cell_35/MatMul_1/ReadVariableOpбwhileI
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
"lstm_cell_35/MatMul/ReadVariableOpReadVariableOp+lstm_cell_35_matmul_readvariableop_resource*
_output_shapes
:	dљ*
dtype0ќ
lstm_cell_35/MatMulMatMulstrided_slice_2:output:0*lstm_cell_35/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЊ
$lstm_cell_35/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_35_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0љ
lstm_cell_35/MatMul_1MatMulzeros:output:0,lstm_cell_35/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љї
lstm_cell_35/addAddV2lstm_cell_35/MatMul:product:0lstm_cell_35/MatMul_1:product:0*
T0*(
_output_shapes
:         љЇ
#lstm_cell_35/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_35_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0Ћ
lstm_cell_35/BiasAddBiasAddlstm_cell_35/add:z:0+lstm_cell_35/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ^
lstm_cell_35/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_cell_35/splitSplit%lstm_cell_35/split/split_dim:output:0lstm_cell_35/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitn
lstm_cell_35/SigmoidSigmoidlstm_cell_35/split:output:0*
T0*'
_output_shapes
:         dp
lstm_cell_35/Sigmoid_1Sigmoidlstm_cell_35/split:output:1*
T0*'
_output_shapes
:         dw
lstm_cell_35/mulMullstm_cell_35/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dh
lstm_cell_35/ReluRelulstm_cell_35/split:output:2*
T0*'
_output_shapes
:         dє
lstm_cell_35/mul_1Mullstm_cell_35/Sigmoid:y:0lstm_cell_35/Relu:activations:0*
T0*'
_output_shapes
:         d{
lstm_cell_35/add_1AddV2lstm_cell_35/mul:z:0lstm_cell_35/mul_1:z:0*
T0*'
_output_shapes
:         dp
lstm_cell_35/Sigmoid_2Sigmoidlstm_cell_35/split:output:3*
T0*'
_output_shapes
:         de
lstm_cell_35/Relu_1Relulstm_cell_35/add_1:z:0*
T0*'
_output_shapes
:         dі
lstm_cell_35/mul_2Mullstm_cell_35/Sigmoid_2:y:0!lstm_cell_35/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_35_matmul_readvariableop_resource-lstm_cell_35_matmul_1_readvariableop_resource,lstm_cell_35_biasadd_readvariableop_resource*
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
while_body_380863*
condR
while_cond_380862*K
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
NoOpNoOp$^lstm_cell_35/BiasAdd/ReadVariableOp#^lstm_cell_35/MatMul/ReadVariableOp%^lstm_cell_35/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2J
#lstm_cell_35/BiasAdd/ReadVariableOp#lstm_cell_35/BiasAdd/ReadVariableOp2H
"lstm_cell_35/MatMul/ReadVariableOp"lstm_cell_35/MatMul/ReadVariableOp2L
$lstm_cell_35/MatMul_1/ReadVariableOp$lstm_cell_35/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
Ќ	
├
while_cond_378325
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_378325___redundant_placeholder04
0while_while_cond_378325___redundant_placeholder14
0while_while_cond_378325___redundant_placeholder24
0while_while_cond_378325___redundant_placeholder3
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
┘
d
F__inference_dropout_17_layer_call_and_return_conditional_losses_378777

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
ѓ▀
╔
!__inference__wrapped_model_377409
lstm_34_inputT
Asequential_17_lstm_34_lstm_cell_34_matmul_readvariableop_resource:		љV
Csequential_17_lstm_34_lstm_cell_34_matmul_1_readvariableop_resource:	dљQ
Bsequential_17_lstm_34_lstm_cell_34_biasadd_readvariableop_resource:	љT
Asequential_17_lstm_35_lstm_cell_35_matmul_readvariableop_resource:	dљV
Csequential_17_lstm_35_lstm_cell_35_matmul_1_readvariableop_resource:	dљQ
Bsequential_17_lstm_35_lstm_cell_35_biasadd_readvariableop_resource:	љG
5sequential_17_dense_34_matmul_readvariableop_resource:dD
6sequential_17_dense_34_biasadd_readvariableop_resource:G
5sequential_17_dense_35_matmul_readvariableop_resource:D
6sequential_17_dense_35_biasadd_readvariableop_resource:
identityѕб-sequential_17/dense_34/BiasAdd/ReadVariableOpб,sequential_17/dense_34/MatMul/ReadVariableOpб-sequential_17/dense_35/BiasAdd/ReadVariableOpб,sequential_17/dense_35/MatMul/ReadVariableOpб9sequential_17/lstm_34/lstm_cell_34/BiasAdd/ReadVariableOpб8sequential_17/lstm_34/lstm_cell_34/MatMul/ReadVariableOpб:sequential_17/lstm_34/lstm_cell_34/MatMul_1/ReadVariableOpбsequential_17/lstm_34/whileб9sequential_17/lstm_35/lstm_cell_35/BiasAdd/ReadVariableOpб8sequential_17/lstm_35/lstm_cell_35/MatMul/ReadVariableOpб:sequential_17/lstm_35/lstm_cell_35/MatMul_1/ReadVariableOpбsequential_17/lstm_35/whilef
sequential_17/lstm_34/ShapeShapelstm_34_input*
T0*
_output_shapes
::ь¤s
)sequential_17/lstm_34/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_17/lstm_34/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_17/lstm_34/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┐
#sequential_17/lstm_34/strided_sliceStridedSlice$sequential_17/lstm_34/Shape:output:02sequential_17/lstm_34/strided_slice/stack:output:04sequential_17/lstm_34/strided_slice/stack_1:output:04sequential_17/lstm_34/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_17/lstm_34/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dх
"sequential_17/lstm_34/zeros/packedPack,sequential_17/lstm_34/strided_slice:output:0-sequential_17/lstm_34/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_17/lstm_34/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    «
sequential_17/lstm_34/zerosFill+sequential_17/lstm_34/zeros/packed:output:0*sequential_17/lstm_34/zeros/Const:output:0*
T0*'
_output_shapes
:         dh
&sequential_17/lstm_34/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d╣
$sequential_17/lstm_34/zeros_1/packedPack,sequential_17/lstm_34/strided_slice:output:0/sequential_17/lstm_34/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_17/lstm_34/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ┤
sequential_17/lstm_34/zeros_1Fill-sequential_17/lstm_34/zeros_1/packed:output:0,sequential_17/lstm_34/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dy
$sequential_17/lstm_34/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
sequential_17/lstm_34/transpose	Transposelstm_34_input-sequential_17/lstm_34/transpose/perm:output:0*
T0*+
_output_shapes
:         	~
sequential_17/lstm_34/Shape_1Shape#sequential_17/lstm_34/transpose:y:0*
T0*
_output_shapes
::ь¤u
+sequential_17/lstm_34/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_17/lstm_34/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_17/lstm_34/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╔
%sequential_17/lstm_34/strided_slice_1StridedSlice&sequential_17/lstm_34/Shape_1:output:04sequential_17/lstm_34/strided_slice_1/stack:output:06sequential_17/lstm_34/strided_slice_1/stack_1:output:06sequential_17/lstm_34/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_17/lstm_34/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         Ш
#sequential_17/lstm_34/TensorArrayV2TensorListReserve:sequential_17/lstm_34/TensorArrayV2/element_shape:output:0.sequential_17/lstm_34/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмю
Ksequential_17/lstm_34/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   б
=sequential_17/lstm_34/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_17/lstm_34/transpose:y:0Tsequential_17/lstm_34/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмu
+sequential_17/lstm_34/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_17/lstm_34/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_17/lstm_34/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:О
%sequential_17/lstm_34/strided_slice_2StridedSlice#sequential_17/lstm_34/transpose:y:04sequential_17/lstm_34/strided_slice_2/stack:output:06sequential_17/lstm_34/strided_slice_2/stack_1:output:06sequential_17/lstm_34/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         	*
shrink_axis_mask╗
8sequential_17/lstm_34/lstm_cell_34/MatMul/ReadVariableOpReadVariableOpAsequential_17_lstm_34_lstm_cell_34_matmul_readvariableop_resource*
_output_shapes
:		љ*
dtype0п
)sequential_17/lstm_34/lstm_cell_34/MatMulMatMul.sequential_17/lstm_34/strided_slice_2:output:0@sequential_17/lstm_34/lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ┐
:sequential_17/lstm_34/lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOpCsequential_17_lstm_34_lstm_cell_34_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0м
+sequential_17/lstm_34/lstm_cell_34/MatMul_1MatMul$sequential_17/lstm_34/zeros:output:0Bsequential_17/lstm_34/lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ╬
&sequential_17/lstm_34/lstm_cell_34/addAddV23sequential_17/lstm_34/lstm_cell_34/MatMul:product:05sequential_17/lstm_34/lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:         љ╣
9sequential_17/lstm_34/lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOpBsequential_17_lstm_34_lstm_cell_34_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0О
*sequential_17/lstm_34/lstm_cell_34/BiasAddBiasAdd*sequential_17/lstm_34/lstm_cell_34/add:z:0Asequential_17/lstm_34/lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љt
2sequential_17/lstm_34/lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ъ
(sequential_17/lstm_34/lstm_cell_34/splitSplit;sequential_17/lstm_34/lstm_cell_34/split/split_dim:output:03sequential_17/lstm_34/lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitџ
*sequential_17/lstm_34/lstm_cell_34/SigmoidSigmoid1sequential_17/lstm_34/lstm_cell_34/split:output:0*
T0*'
_output_shapes
:         dю
,sequential_17/lstm_34/lstm_cell_34/Sigmoid_1Sigmoid1sequential_17/lstm_34/lstm_cell_34/split:output:1*
T0*'
_output_shapes
:         d╣
&sequential_17/lstm_34/lstm_cell_34/mulMul0sequential_17/lstm_34/lstm_cell_34/Sigmoid_1:y:0&sequential_17/lstm_34/zeros_1:output:0*
T0*'
_output_shapes
:         dћ
'sequential_17/lstm_34/lstm_cell_34/ReluRelu1sequential_17/lstm_34/lstm_cell_34/split:output:2*
T0*'
_output_shapes
:         d╚
(sequential_17/lstm_34/lstm_cell_34/mul_1Mul.sequential_17/lstm_34/lstm_cell_34/Sigmoid:y:05sequential_17/lstm_34/lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:         dй
(sequential_17/lstm_34/lstm_cell_34/add_1AddV2*sequential_17/lstm_34/lstm_cell_34/mul:z:0,sequential_17/lstm_34/lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:         dю
,sequential_17/lstm_34/lstm_cell_34/Sigmoid_2Sigmoid1sequential_17/lstm_34/lstm_cell_34/split:output:3*
T0*'
_output_shapes
:         dЉ
)sequential_17/lstm_34/lstm_cell_34/Relu_1Relu,sequential_17/lstm_34/lstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:         d╠
(sequential_17/lstm_34/lstm_cell_34/mul_2Mul0sequential_17/lstm_34/lstm_cell_34/Sigmoid_2:y:07sequential_17/lstm_34/lstm_cell_34/Relu_1:activations:0*
T0*'
_output_shapes
:         dё
3sequential_17/lstm_34/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Щ
%sequential_17/lstm_34/TensorArrayV2_1TensorListReserve<sequential_17/lstm_34/TensorArrayV2_1/element_shape:output:0.sequential_17/lstm_34/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм\
sequential_17/lstm_34/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_17/lstm_34/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         j
(sequential_17/lstm_34/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Х
sequential_17/lstm_34/whileWhile1sequential_17/lstm_34/while/loop_counter:output:07sequential_17/lstm_34/while/maximum_iterations:output:0#sequential_17/lstm_34/time:output:0.sequential_17/lstm_34/TensorArrayV2_1:handle:0$sequential_17/lstm_34/zeros:output:0&sequential_17/lstm_34/zeros_1:output:0.sequential_17/lstm_34/strided_slice_1:output:0Msequential_17/lstm_34/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_17_lstm_34_lstm_cell_34_matmul_readvariableop_resourceCsequential_17_lstm_34_lstm_cell_34_matmul_1_readvariableop_resourceBsequential_17_lstm_34_lstm_cell_34_biasadd_readvariableop_resource*
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
'sequential_17_lstm_34_while_body_377169*3
cond+R)
'sequential_17_lstm_34_while_cond_377168*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ќ
Fsequential_17/lstm_34/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ё
8sequential_17/lstm_34/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_17/lstm_34/while:output:3Osequential_17/lstm_34/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0~
+sequential_17/lstm_34/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         w
-sequential_17/lstm_34/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_17/lstm_34/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ш
%sequential_17/lstm_34/strided_slice_3StridedSliceAsequential_17/lstm_34/TensorArrayV2Stack/TensorListStack:tensor:04sequential_17/lstm_34/strided_slice_3/stack:output:06sequential_17/lstm_34/strided_slice_3/stack_1:output:06sequential_17/lstm_34/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask{
&sequential_17/lstm_34/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          п
!sequential_17/lstm_34/transpose_1	TransposeAsequential_17/lstm_34/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_17/lstm_34/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dq
sequential_17/lstm_34/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ~
sequential_17/lstm_35/ShapeShape%sequential_17/lstm_34/transpose_1:y:0*
T0*
_output_shapes
::ь¤s
)sequential_17/lstm_35/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_17/lstm_35/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_17/lstm_35/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┐
#sequential_17/lstm_35/strided_sliceStridedSlice$sequential_17/lstm_35/Shape:output:02sequential_17/lstm_35/strided_slice/stack:output:04sequential_17/lstm_35/strided_slice/stack_1:output:04sequential_17/lstm_35/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_17/lstm_35/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dх
"sequential_17/lstm_35/zeros/packedPack,sequential_17/lstm_35/strided_slice:output:0-sequential_17/lstm_35/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_17/lstm_35/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    «
sequential_17/lstm_35/zerosFill+sequential_17/lstm_35/zeros/packed:output:0*sequential_17/lstm_35/zeros/Const:output:0*
T0*'
_output_shapes
:         dh
&sequential_17/lstm_35/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d╣
$sequential_17/lstm_35/zeros_1/packedPack,sequential_17/lstm_35/strided_slice:output:0/sequential_17/lstm_35/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_17/lstm_35/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ┤
sequential_17/lstm_35/zeros_1Fill-sequential_17/lstm_35/zeros_1/packed:output:0,sequential_17/lstm_35/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dy
$sequential_17/lstm_35/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          И
sequential_17/lstm_35/transpose	Transpose%sequential_17/lstm_34/transpose_1:y:0-sequential_17/lstm_35/transpose/perm:output:0*
T0*+
_output_shapes
:         d~
sequential_17/lstm_35/Shape_1Shape#sequential_17/lstm_35/transpose:y:0*
T0*
_output_shapes
::ь¤u
+sequential_17/lstm_35/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_17/lstm_35/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_17/lstm_35/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╔
%sequential_17/lstm_35/strided_slice_1StridedSlice&sequential_17/lstm_35/Shape_1:output:04sequential_17/lstm_35/strided_slice_1/stack:output:06sequential_17/lstm_35/strided_slice_1/stack_1:output:06sequential_17/lstm_35/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_17/lstm_35/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         Ш
#sequential_17/lstm_35/TensorArrayV2TensorListReserve:sequential_17/lstm_35/TensorArrayV2/element_shape:output:0.sequential_17/lstm_35/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмю
Ksequential_17/lstm_35/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   б
=sequential_17/lstm_35/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_17/lstm_35/transpose:y:0Tsequential_17/lstm_35/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмu
+sequential_17/lstm_35/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_17/lstm_35/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_17/lstm_35/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:О
%sequential_17/lstm_35/strided_slice_2StridedSlice#sequential_17/lstm_35/transpose:y:04sequential_17/lstm_35/strided_slice_2/stack:output:06sequential_17/lstm_35/strided_slice_2/stack_1:output:06sequential_17/lstm_35/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask╗
8sequential_17/lstm_35/lstm_cell_35/MatMul/ReadVariableOpReadVariableOpAsequential_17_lstm_35_lstm_cell_35_matmul_readvariableop_resource*
_output_shapes
:	dљ*
dtype0п
)sequential_17/lstm_35/lstm_cell_35/MatMulMatMul.sequential_17/lstm_35/strided_slice_2:output:0@sequential_17/lstm_35/lstm_cell_35/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ┐
:sequential_17/lstm_35/lstm_cell_35/MatMul_1/ReadVariableOpReadVariableOpCsequential_17_lstm_35_lstm_cell_35_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0м
+sequential_17/lstm_35/lstm_cell_35/MatMul_1MatMul$sequential_17/lstm_35/zeros:output:0Bsequential_17/lstm_35/lstm_cell_35/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ╬
&sequential_17/lstm_35/lstm_cell_35/addAddV23sequential_17/lstm_35/lstm_cell_35/MatMul:product:05sequential_17/lstm_35/lstm_cell_35/MatMul_1:product:0*
T0*(
_output_shapes
:         љ╣
9sequential_17/lstm_35/lstm_cell_35/BiasAdd/ReadVariableOpReadVariableOpBsequential_17_lstm_35_lstm_cell_35_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0О
*sequential_17/lstm_35/lstm_cell_35/BiasAddBiasAdd*sequential_17/lstm_35/lstm_cell_35/add:z:0Asequential_17/lstm_35/lstm_cell_35/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љt
2sequential_17/lstm_35/lstm_cell_35/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ъ
(sequential_17/lstm_35/lstm_cell_35/splitSplit;sequential_17/lstm_35/lstm_cell_35/split/split_dim:output:03sequential_17/lstm_35/lstm_cell_35/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitџ
*sequential_17/lstm_35/lstm_cell_35/SigmoidSigmoid1sequential_17/lstm_35/lstm_cell_35/split:output:0*
T0*'
_output_shapes
:         dю
,sequential_17/lstm_35/lstm_cell_35/Sigmoid_1Sigmoid1sequential_17/lstm_35/lstm_cell_35/split:output:1*
T0*'
_output_shapes
:         d╣
&sequential_17/lstm_35/lstm_cell_35/mulMul0sequential_17/lstm_35/lstm_cell_35/Sigmoid_1:y:0&sequential_17/lstm_35/zeros_1:output:0*
T0*'
_output_shapes
:         dћ
'sequential_17/lstm_35/lstm_cell_35/ReluRelu1sequential_17/lstm_35/lstm_cell_35/split:output:2*
T0*'
_output_shapes
:         d╚
(sequential_17/lstm_35/lstm_cell_35/mul_1Mul.sequential_17/lstm_35/lstm_cell_35/Sigmoid:y:05sequential_17/lstm_35/lstm_cell_35/Relu:activations:0*
T0*'
_output_shapes
:         dй
(sequential_17/lstm_35/lstm_cell_35/add_1AddV2*sequential_17/lstm_35/lstm_cell_35/mul:z:0,sequential_17/lstm_35/lstm_cell_35/mul_1:z:0*
T0*'
_output_shapes
:         dю
,sequential_17/lstm_35/lstm_cell_35/Sigmoid_2Sigmoid1sequential_17/lstm_35/lstm_cell_35/split:output:3*
T0*'
_output_shapes
:         dЉ
)sequential_17/lstm_35/lstm_cell_35/Relu_1Relu,sequential_17/lstm_35/lstm_cell_35/add_1:z:0*
T0*'
_output_shapes
:         d╠
(sequential_17/lstm_35/lstm_cell_35/mul_2Mul0sequential_17/lstm_35/lstm_cell_35/Sigmoid_2:y:07sequential_17/lstm_35/lstm_cell_35/Relu_1:activations:0*
T0*'
_output_shapes
:         dё
3sequential_17/lstm_35/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   t
2sequential_17/lstm_35/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Є
%sequential_17/lstm_35/TensorArrayV2_1TensorListReserve<sequential_17/lstm_35/TensorArrayV2_1/element_shape:output:0;sequential_17/lstm_35/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм\
sequential_17/lstm_35/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_17/lstm_35/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         j
(sequential_17/lstm_35/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Х
sequential_17/lstm_35/whileWhile1sequential_17/lstm_35/while/loop_counter:output:07sequential_17/lstm_35/while/maximum_iterations:output:0#sequential_17/lstm_35/time:output:0.sequential_17/lstm_35/TensorArrayV2_1:handle:0$sequential_17/lstm_35/zeros:output:0&sequential_17/lstm_35/zeros_1:output:0.sequential_17/lstm_35/strided_slice_1:output:0Msequential_17/lstm_35/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_17_lstm_35_lstm_cell_35_matmul_readvariableop_resourceCsequential_17_lstm_35_lstm_cell_35_matmul_1_readvariableop_resourceBsequential_17_lstm_35_lstm_cell_35_biasadd_readvariableop_resource*
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
'sequential_17_lstm_35_while_body_377309*3
cond+R)
'sequential_17_lstm_35_while_cond_377308*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ќ
Fsequential_17/lstm_35/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ў
8sequential_17/lstm_35/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_17/lstm_35/while:output:3Osequential_17/lstm_35/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0*
num_elements~
+sequential_17/lstm_35/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         w
-sequential_17/lstm_35/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_17/lstm_35/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ш
%sequential_17/lstm_35/strided_slice_3StridedSliceAsequential_17/lstm_35/TensorArrayV2Stack/TensorListStack:tensor:04sequential_17/lstm_35/strided_slice_3/stack:output:06sequential_17/lstm_35/strided_slice_3/stack_1:output:06sequential_17/lstm_35/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask{
&sequential_17/lstm_35/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          п
!sequential_17/lstm_35/transpose_1	TransposeAsequential_17/lstm_35/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_17/lstm_35/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dq
sequential_17/lstm_35/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Ј
!sequential_17/dropout_17/IdentityIdentity.sequential_17/lstm_35/strided_slice_3:output:0*
T0*'
_output_shapes
:         dб
,sequential_17/dense_34/MatMul/ReadVariableOpReadVariableOp5sequential_17_dense_34_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0╗
sequential_17/dense_34/MatMulMatMul*sequential_17/dropout_17/Identity:output:04sequential_17/dense_34/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         а
-sequential_17/dense_34/BiasAdd/ReadVariableOpReadVariableOp6sequential_17_dense_34_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╗
sequential_17/dense_34/BiasAddBiasAdd'sequential_17/dense_34/MatMul:product:05sequential_17/dense_34/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ~
sequential_17/dense_34/ReluRelu'sequential_17/dense_34/BiasAdd:output:0*
T0*'
_output_shapes
:         б
,sequential_17/dense_35/MatMul/ReadVariableOpReadVariableOp5sequential_17_dense_35_matmul_readvariableop_resource*
_output_shapes

:*
dtype0║
sequential_17/dense_35/MatMulMatMul)sequential_17/dense_34/Relu:activations:04sequential_17/dense_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         а
-sequential_17/dense_35/BiasAdd/ReadVariableOpReadVariableOp6sequential_17_dense_35_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╗
sequential_17/dense_35/BiasAddBiasAdd'sequential_17/dense_35/MatMul:product:05sequential_17/dense_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
sequential_17/dense_35/SoftmaxSoftmax'sequential_17/dense_35/BiasAdd:output:0*
T0*'
_output_shapes
:         w
IdentityIdentity(sequential_17/dense_35/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         е
NoOpNoOp.^sequential_17/dense_34/BiasAdd/ReadVariableOp-^sequential_17/dense_34/MatMul/ReadVariableOp.^sequential_17/dense_35/BiasAdd/ReadVariableOp-^sequential_17/dense_35/MatMul/ReadVariableOp:^sequential_17/lstm_34/lstm_cell_34/BiasAdd/ReadVariableOp9^sequential_17/lstm_34/lstm_cell_34/MatMul/ReadVariableOp;^sequential_17/lstm_34/lstm_cell_34/MatMul_1/ReadVariableOp^sequential_17/lstm_34/while:^sequential_17/lstm_35/lstm_cell_35/BiasAdd/ReadVariableOp9^sequential_17/lstm_35/lstm_cell_35/MatMul/ReadVariableOp;^sequential_17/lstm_35/lstm_cell_35/MatMul_1/ReadVariableOp^sequential_17/lstm_35/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         	: : : : : : : : : : 2^
-sequential_17/dense_34/BiasAdd/ReadVariableOp-sequential_17/dense_34/BiasAdd/ReadVariableOp2\
,sequential_17/dense_34/MatMul/ReadVariableOp,sequential_17/dense_34/MatMul/ReadVariableOp2^
-sequential_17/dense_35/BiasAdd/ReadVariableOp-sequential_17/dense_35/BiasAdd/ReadVariableOp2\
,sequential_17/dense_35/MatMul/ReadVariableOp,sequential_17/dense_35/MatMul/ReadVariableOp2v
9sequential_17/lstm_34/lstm_cell_34/BiasAdd/ReadVariableOp9sequential_17/lstm_34/lstm_cell_34/BiasAdd/ReadVariableOp2t
8sequential_17/lstm_34/lstm_cell_34/MatMul/ReadVariableOp8sequential_17/lstm_34/lstm_cell_34/MatMul/ReadVariableOp2x
:sequential_17/lstm_34/lstm_cell_34/MatMul_1/ReadVariableOp:sequential_17/lstm_34/lstm_cell_34/MatMul_1/ReadVariableOp2:
sequential_17/lstm_34/whilesequential_17/lstm_34/while2v
9sequential_17/lstm_35/lstm_cell_35/BiasAdd/ReadVariableOp9sequential_17/lstm_35/lstm_cell_35/BiasAdd/ReadVariableOp2t
8sequential_17/lstm_35/lstm_cell_35/MatMul/ReadVariableOp8sequential_17/lstm_35/lstm_cell_35/MatMul/ReadVariableOp2x
:sequential_17/lstm_35/lstm_cell_35/MatMul_1/ReadVariableOp:sequential_17/lstm_35/lstm_cell_35/MatMul_1/ReadVariableOp2:
sequential_17/lstm_35/whilesequential_17/lstm_35/while:Z V
+
_output_shapes
:         	
'
_user_specified_namelstm_34_input
Н
ё
H__inference_lstm_cell_35_layer_call_and_return_conditional_losses_377970

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
while_cond_378174
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_378174___redundant_placeholder04
0while_while_cond_378174___redundant_placeholder14
0while_while_cond_378174___redundant_placeholder24
0while_while_cond_378174___redundant_placeholder3
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
Ы
В
I__inference_sequential_17_layer_call_and_return_conditional_losses_378468
lstm_34_input!
lstm_34_378260:		љ!
lstm_34_378262:	dљ
lstm_34_378264:	љ!
lstm_35_378412:	dљ!
lstm_35_378414:	dљ
lstm_35_378416:	љ!
dense_34_378445:d
dense_34_378447:!
dense_35_378462:
dense_35_378464:
identityѕб dense_34/StatefulPartitionedCallб dense_35/StatefulPartitionedCallб"dropout_17/StatefulPartitionedCallбlstm_34/StatefulPartitionedCallбlstm_35/StatefulPartitionedCallЅ
lstm_34/StatefulPartitionedCallStatefulPartitionedCalllstm_34_inputlstm_34_378260lstm_34_378262lstm_34_378264*
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
C__inference_lstm_34_layer_call_and_return_conditional_losses_378259а
lstm_35/StatefulPartitionedCallStatefulPartitionedCall(lstm_34/StatefulPartitionedCall:output:0lstm_35_378412lstm_35_378414lstm_35_378416*
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
C__inference_lstm_35_layer_call_and_return_conditional_losses_378411Ь
"dropout_17/StatefulPartitionedCallStatefulPartitionedCall(lstm_35/StatefulPartitionedCall:output:0*
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
F__inference_dropout_17_layer_call_and_return_conditional_losses_378431Ћ
 dense_34/StatefulPartitionedCallStatefulPartitionedCall+dropout_17/StatefulPartitionedCall:output:0dense_34_378445dense_34_378447*
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
D__inference_dense_34_layer_call_and_return_conditional_losses_378444Њ
 dense_35/StatefulPartitionedCallStatefulPartitionedCall)dense_34/StatefulPartitionedCall:output:0dense_35_378462dense_35_378464*
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
D__inference_dense_35_layer_call_and_return_conditional_losses_378461x
IdentityIdentity)dense_35/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ш
NoOpNoOp!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall#^dropout_17/StatefulPartitionedCall ^lstm_34/StatefulPartitionedCall ^lstm_35/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         	: : : : : : : : : : 2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall2H
"dropout_17/StatefulPartitionedCall"dropout_17/StatefulPartitionedCall2B
lstm_34/StatefulPartitionedCalllstm_34/StatefulPartitionedCall2B
lstm_35/StatefulPartitionedCalllstm_35/StatefulPartitionedCall:Z V
+
_output_shapes
:         	
'
_user_specified_namelstm_34_input
╚#
с
while_body_377632
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_34_377656_0:		љ.
while_lstm_cell_34_377658_0:	dљ*
while_lstm_cell_34_377660_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_34_377656:		љ,
while_lstm_cell_34_377658:	dљ(
while_lstm_cell_34_377660:	љѕб*while/lstm_cell_34/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         	*
element_dtype0│
*while/lstm_cell_34/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_34_377656_0while_lstm_cell_34_377658_0while_lstm_cell_34_377660_0*
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
H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_377618▄
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_34/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_34/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         dљ
while/Identity_5Identity3while/lstm_cell_34/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         dy

while/NoOpNoOp+^while/lstm_cell_34/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"8
while_lstm_cell_34_377656while_lstm_cell_34_377656_0"8
while_lstm_cell_34_377658while_lstm_cell_34_377658_0"8
while_lstm_cell_34_377660while_lstm_cell_34_377660_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_34/StatefulPartitionedCall*while/lstm_cell_34/StatefulPartitionedCall:
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
while_body_379954
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_34_matmul_readvariableop_resource_0:		љH
5while_lstm_cell_34_matmul_1_readvariableop_resource_0:	dљC
4while_lstm_cell_34_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_34_matmul_readvariableop_resource:		љF
3while_lstm_cell_34_matmul_1_readvariableop_resource:	dљA
2while_lstm_cell_34_biasadd_readvariableop_resource:	љѕб)while/lstm_cell_34/BiasAdd/ReadVariableOpб(while/lstm_cell_34/MatMul/ReadVariableOpб*while/lstm_cell_34/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         	*
element_dtype0Ю
(while/lstm_cell_34/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_34_matmul_readvariableop_resource_0*
_output_shapes
:		љ*
dtype0║
while/lstm_cell_34/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
*while/lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_34_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0А
while/lstm_cell_34/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љъ
while/lstm_cell_34/addAddV2#while/lstm_cell_34/MatMul:product:0%while/lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:         љЏ
)while/lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_34_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0Д
while/lstm_cell_34/BiasAddBiasAddwhile/lstm_cell_34/add:z:01while/lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љd
"while/lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_34/splitSplit+while/lstm_cell_34/split/split_dim:output:0#while/lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitz
while/lstm_cell_34/SigmoidSigmoid!while/lstm_cell_34/split:output:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_34/Sigmoid_1Sigmoid!while/lstm_cell_34/split:output:1*
T0*'
_output_shapes
:         dє
while/lstm_cell_34/mulMul while/lstm_cell_34/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dt
while/lstm_cell_34/ReluRelu!while/lstm_cell_34/split:output:2*
T0*'
_output_shapes
:         dў
while/lstm_cell_34/mul_1Mulwhile/lstm_cell_34/Sigmoid:y:0%while/lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:         dЇ
while/lstm_cell_34/add_1AddV2while/lstm_cell_34/mul:z:0while/lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_34/Sigmoid_2Sigmoid!while/lstm_cell_34/split:output:3*
T0*'
_output_shapes
:         dq
while/lstm_cell_34/Relu_1Reluwhile/lstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:         dю
while/lstm_cell_34/mul_2Mul while/lstm_cell_34/Sigmoid_2:y:0'while/lstm_cell_34/Relu_1:activations:0*
T0*'
_output_shapes
:         d┼
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_34/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_34/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dy
while/Identity_5Identitywhile/lstm_cell_34/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dл

while/NoOpNoOp*^while/lstm_cell_34/BiasAdd/ReadVariableOp)^while/lstm_cell_34/MatMul/ReadVariableOp+^while/lstm_cell_34/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"j
2while_lstm_cell_34_biasadd_readvariableop_resource4while_lstm_cell_34_biasadd_readvariableop_resource_0"l
3while_lstm_cell_34_matmul_1_readvariableop_resource5while_lstm_cell_34_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_34_matmul_readvariableop_resource3while_lstm_cell_34_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2V
)while/lstm_cell_34/BiasAdd/ReadVariableOp)while/lstm_cell_34/BiasAdd/ReadVariableOp2T
(while/lstm_cell_34/MatMul/ReadVariableOp(while/lstm_cell_34/MatMul/ReadVariableOp2X
*while/lstm_cell_34/MatMul_1/ReadVariableOp*while/lstm_cell_34/MatMul_1/ReadVariableOp:
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
§J
Ю
C__inference_lstm_34_layer_call_and_return_conditional_losses_380038
inputs_0>
+lstm_cell_34_matmul_readvariableop_resource:		љ@
-lstm_cell_34_matmul_1_readvariableop_resource:	dљ;
,lstm_cell_34_biasadd_readvariableop_resource:	љ
identityѕб#lstm_cell_34/BiasAdd/ReadVariableOpб"lstm_cell_34/MatMul/ReadVariableOpб$lstm_cell_34/MatMul_1/ReadVariableOpбwhileK
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
"lstm_cell_34/MatMul/ReadVariableOpReadVariableOp+lstm_cell_34_matmul_readvariableop_resource*
_output_shapes
:		љ*
dtype0ќ
lstm_cell_34/MatMulMatMulstrided_slice_2:output:0*lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЊ
$lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_34_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0љ
lstm_cell_34/MatMul_1MatMulzeros:output:0,lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љї
lstm_cell_34/addAddV2lstm_cell_34/MatMul:product:0lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:         љЇ
#lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_34_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0Ћ
lstm_cell_34/BiasAddBiasAddlstm_cell_34/add:z:0+lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ^
lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_cell_34/splitSplit%lstm_cell_34/split/split_dim:output:0lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitn
lstm_cell_34/SigmoidSigmoidlstm_cell_34/split:output:0*
T0*'
_output_shapes
:         dp
lstm_cell_34/Sigmoid_1Sigmoidlstm_cell_34/split:output:1*
T0*'
_output_shapes
:         dw
lstm_cell_34/mulMullstm_cell_34/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dh
lstm_cell_34/ReluRelulstm_cell_34/split:output:2*
T0*'
_output_shapes
:         dє
lstm_cell_34/mul_1Mullstm_cell_34/Sigmoid:y:0lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:         d{
lstm_cell_34/add_1AddV2lstm_cell_34/mul:z:0lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:         dp
lstm_cell_34/Sigmoid_2Sigmoidlstm_cell_34/split:output:3*
T0*'
_output_shapes
:         de
lstm_cell_34/Relu_1Relulstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:         dі
lstm_cell_34/mul_2Mullstm_cell_34/Sigmoid_2:y:0!lstm_cell_34/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_34_matmul_readvariableop_resource-lstm_cell_34_matmul_1_readvariableop_resource,lstm_cell_34_biasadd_readvariableop_resource*
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
while_body_379954*
condR
while_cond_379953*K
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
NoOpNoOp$^lstm_cell_34/BiasAdd/ReadVariableOp#^lstm_cell_34/MatMul/ReadVariableOp%^lstm_cell_34/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  	: : : 2J
#lstm_cell_34/BiasAdd/ReadVariableOp#lstm_cell_34/BiasAdd/ReadVariableOp2H
"lstm_cell_34/MatMul/ReadVariableOp"lstm_cell_34/MatMul/ReadVariableOp2L
$lstm_cell_34/MatMul_1/ReadVariableOp$lstm_cell_34/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  	
"
_user_specified_name
inputs_0
┘
d
F__inference_dropout_17_layer_call_and_return_conditional_losses_380975

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
while_cond_380239
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_380239___redundant_placeholder04
0while_while_cond_380239___redundant_placeholder14
0while_while_cond_380239___redundant_placeholder24
0while_while_cond_380239___redundant_placeholder3
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
ЊS
њ
'sequential_17_lstm_34_while_body_377169H
Dsequential_17_lstm_34_while_sequential_17_lstm_34_while_loop_counterN
Jsequential_17_lstm_34_while_sequential_17_lstm_34_while_maximum_iterations+
'sequential_17_lstm_34_while_placeholder-
)sequential_17_lstm_34_while_placeholder_1-
)sequential_17_lstm_34_while_placeholder_2-
)sequential_17_lstm_34_while_placeholder_3G
Csequential_17_lstm_34_while_sequential_17_lstm_34_strided_slice_1_0Ѓ
sequential_17_lstm_34_while_tensorarrayv2read_tensorlistgetitem_sequential_17_lstm_34_tensorarrayunstack_tensorlistfromtensor_0\
Isequential_17_lstm_34_while_lstm_cell_34_matmul_readvariableop_resource_0:		љ^
Ksequential_17_lstm_34_while_lstm_cell_34_matmul_1_readvariableop_resource_0:	dљY
Jsequential_17_lstm_34_while_lstm_cell_34_biasadd_readvariableop_resource_0:	љ(
$sequential_17_lstm_34_while_identity*
&sequential_17_lstm_34_while_identity_1*
&sequential_17_lstm_34_while_identity_2*
&sequential_17_lstm_34_while_identity_3*
&sequential_17_lstm_34_while_identity_4*
&sequential_17_lstm_34_while_identity_5E
Asequential_17_lstm_34_while_sequential_17_lstm_34_strided_slice_1Ђ
}sequential_17_lstm_34_while_tensorarrayv2read_tensorlistgetitem_sequential_17_lstm_34_tensorarrayunstack_tensorlistfromtensorZ
Gsequential_17_lstm_34_while_lstm_cell_34_matmul_readvariableop_resource:		љ\
Isequential_17_lstm_34_while_lstm_cell_34_matmul_1_readvariableop_resource:	dљW
Hsequential_17_lstm_34_while_lstm_cell_34_biasadd_readvariableop_resource:	љѕб?sequential_17/lstm_34/while/lstm_cell_34/BiasAdd/ReadVariableOpб>sequential_17/lstm_34/while/lstm_cell_34/MatMul/ReadVariableOpб@sequential_17/lstm_34/while/lstm_cell_34/MatMul_1/ReadVariableOpъ
Msequential_17/lstm_34/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   ћ
?sequential_17/lstm_34/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_17_lstm_34_while_tensorarrayv2read_tensorlistgetitem_sequential_17_lstm_34_tensorarrayunstack_tensorlistfromtensor_0'sequential_17_lstm_34_while_placeholderVsequential_17/lstm_34/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         	*
element_dtype0╔
>sequential_17/lstm_34/while/lstm_cell_34/MatMul/ReadVariableOpReadVariableOpIsequential_17_lstm_34_while_lstm_cell_34_matmul_readvariableop_resource_0*
_output_shapes
:		љ*
dtype0Ч
/sequential_17/lstm_34/while/lstm_cell_34/MatMulMatMulFsequential_17/lstm_34/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_17/lstm_34/while/lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ═
@sequential_17/lstm_34/while/lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOpKsequential_17_lstm_34_while_lstm_cell_34_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0с
1sequential_17/lstm_34/while/lstm_cell_34/MatMul_1MatMul)sequential_17_lstm_34_while_placeholder_2Hsequential_17/lstm_34/while/lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЯ
,sequential_17/lstm_34/while/lstm_cell_34/addAddV29sequential_17/lstm_34/while/lstm_cell_34/MatMul:product:0;sequential_17/lstm_34/while/lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:         љК
?sequential_17/lstm_34/while/lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOpJsequential_17_lstm_34_while_lstm_cell_34_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ж
0sequential_17/lstm_34/while/lstm_cell_34/BiasAddBiasAdd0sequential_17/lstm_34/while/lstm_cell_34/add:z:0Gsequential_17/lstm_34/while/lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љz
8sequential_17/lstm_34/while/lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▒
.sequential_17/lstm_34/while/lstm_cell_34/splitSplitAsequential_17/lstm_34/while/lstm_cell_34/split/split_dim:output:09sequential_17/lstm_34/while/lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitд
0sequential_17/lstm_34/while/lstm_cell_34/SigmoidSigmoid7sequential_17/lstm_34/while/lstm_cell_34/split:output:0*
T0*'
_output_shapes
:         dе
2sequential_17/lstm_34/while/lstm_cell_34/Sigmoid_1Sigmoid7sequential_17/lstm_34/while/lstm_cell_34/split:output:1*
T0*'
_output_shapes
:         d╚
,sequential_17/lstm_34/while/lstm_cell_34/mulMul6sequential_17/lstm_34/while/lstm_cell_34/Sigmoid_1:y:0)sequential_17_lstm_34_while_placeholder_3*
T0*'
_output_shapes
:         dа
-sequential_17/lstm_34/while/lstm_cell_34/ReluRelu7sequential_17/lstm_34/while/lstm_cell_34/split:output:2*
T0*'
_output_shapes
:         d┌
.sequential_17/lstm_34/while/lstm_cell_34/mul_1Mul4sequential_17/lstm_34/while/lstm_cell_34/Sigmoid:y:0;sequential_17/lstm_34/while/lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:         d¤
.sequential_17/lstm_34/while/lstm_cell_34/add_1AddV20sequential_17/lstm_34/while/lstm_cell_34/mul:z:02sequential_17/lstm_34/while/lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:         dе
2sequential_17/lstm_34/while/lstm_cell_34/Sigmoid_2Sigmoid7sequential_17/lstm_34/while/lstm_cell_34/split:output:3*
T0*'
_output_shapes
:         dЮ
/sequential_17/lstm_34/while/lstm_cell_34/Relu_1Relu2sequential_17/lstm_34/while/lstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:         dя
.sequential_17/lstm_34/while/lstm_cell_34/mul_2Mul6sequential_17/lstm_34/while/lstm_cell_34/Sigmoid_2:y:0=sequential_17/lstm_34/while/lstm_cell_34/Relu_1:activations:0*
T0*'
_output_shapes
:         dЮ
@sequential_17/lstm_34/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_17_lstm_34_while_placeholder_1'sequential_17_lstm_34_while_placeholder2sequential_17/lstm_34/while/lstm_cell_34/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмc
!sequential_17/lstm_34/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ъ
sequential_17/lstm_34/while/addAddV2'sequential_17_lstm_34_while_placeholder*sequential_17/lstm_34/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_17/lstm_34/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :┐
!sequential_17/lstm_34/while/add_1AddV2Dsequential_17_lstm_34_while_sequential_17_lstm_34_while_loop_counter,sequential_17/lstm_34/while/add_1/y:output:0*
T0*
_output_shapes
: Џ
$sequential_17/lstm_34/while/IdentityIdentity%sequential_17/lstm_34/while/add_1:z:0!^sequential_17/lstm_34/while/NoOp*
T0*
_output_shapes
: ┬
&sequential_17/lstm_34/while/Identity_1IdentityJsequential_17_lstm_34_while_sequential_17_lstm_34_while_maximum_iterations!^sequential_17/lstm_34/while/NoOp*
T0*
_output_shapes
: Џ
&sequential_17/lstm_34/while/Identity_2Identity#sequential_17/lstm_34/while/add:z:0!^sequential_17/lstm_34/while/NoOp*
T0*
_output_shapes
: ╚
&sequential_17/lstm_34/while/Identity_3IdentityPsequential_17/lstm_34/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_17/lstm_34/while/NoOp*
T0*
_output_shapes
: ╗
&sequential_17/lstm_34/while/Identity_4Identity2sequential_17/lstm_34/while/lstm_cell_34/mul_2:z:0!^sequential_17/lstm_34/while/NoOp*
T0*'
_output_shapes
:         d╗
&sequential_17/lstm_34/while/Identity_5Identity2sequential_17/lstm_34/while/lstm_cell_34/add_1:z:0!^sequential_17/lstm_34/while/NoOp*
T0*'
_output_shapes
:         dе
 sequential_17/lstm_34/while/NoOpNoOp@^sequential_17/lstm_34/while/lstm_cell_34/BiasAdd/ReadVariableOp?^sequential_17/lstm_34/while/lstm_cell_34/MatMul/ReadVariableOpA^sequential_17/lstm_34/while/lstm_cell_34/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_17_lstm_34_while_identity_1/sequential_17/lstm_34/while/Identity_1:output:0"Y
&sequential_17_lstm_34_while_identity_2/sequential_17/lstm_34/while/Identity_2:output:0"Y
&sequential_17_lstm_34_while_identity_3/sequential_17/lstm_34/while/Identity_3:output:0"Y
&sequential_17_lstm_34_while_identity_4/sequential_17/lstm_34/while/Identity_4:output:0"Y
&sequential_17_lstm_34_while_identity_5/sequential_17/lstm_34/while/Identity_5:output:0"U
$sequential_17_lstm_34_while_identity-sequential_17/lstm_34/while/Identity:output:0"ќ
Hsequential_17_lstm_34_while_lstm_cell_34_biasadd_readvariableop_resourceJsequential_17_lstm_34_while_lstm_cell_34_biasadd_readvariableop_resource_0"ў
Isequential_17_lstm_34_while_lstm_cell_34_matmul_1_readvariableop_resourceKsequential_17_lstm_34_while_lstm_cell_34_matmul_1_readvariableop_resource_0"ћ
Gsequential_17_lstm_34_while_lstm_cell_34_matmul_readvariableop_resourceIsequential_17_lstm_34_while_lstm_cell_34_matmul_readvariableop_resource_0"ѕ
Asequential_17_lstm_34_while_sequential_17_lstm_34_strided_slice_1Csequential_17_lstm_34_while_sequential_17_lstm_34_strided_slice_1_0"ђ
}sequential_17_lstm_34_while_tensorarrayv2read_tensorlistgetitem_sequential_17_lstm_34_tensorarrayunstack_tensorlistfromtensorsequential_17_lstm_34_while_tensorarrayv2read_tensorlistgetitem_sequential_17_lstm_34_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2ѓ
?sequential_17/lstm_34/while/lstm_cell_34/BiasAdd/ReadVariableOp?sequential_17/lstm_34/while/lstm_cell_34/BiasAdd/ReadVariableOp2ђ
>sequential_17/lstm_34/while/lstm_cell_34/MatMul/ReadVariableOp>sequential_17/lstm_34/while/lstm_cell_34/MatMul/ReadVariableOp2ё
@sequential_17/lstm_34/while/lstm_cell_34/MatMul_1/ReadVariableOp@sequential_17/lstm_34/while/lstm_cell_34/MatMul_1/ReadVariableOp:
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
_user_specified_name0.sequential_17/lstm_34/while/maximum_iterations:` \

_output_shapes
: 
B
_user_specified_name*(sequential_17/lstm_34/while/loop_counter
┼K
Џ
C__inference_lstm_35_layer_call_and_return_conditional_losses_380803

inputs>
+lstm_cell_35_matmul_readvariableop_resource:	dљ@
-lstm_cell_35_matmul_1_readvariableop_resource:	dљ;
,lstm_cell_35_biasadd_readvariableop_resource:	љ
identityѕб#lstm_cell_35/BiasAdd/ReadVariableOpб"lstm_cell_35/MatMul/ReadVariableOpб$lstm_cell_35/MatMul_1/ReadVariableOpбwhileI
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
"lstm_cell_35/MatMul/ReadVariableOpReadVariableOp+lstm_cell_35_matmul_readvariableop_resource*
_output_shapes
:	dљ*
dtype0ќ
lstm_cell_35/MatMulMatMulstrided_slice_2:output:0*lstm_cell_35/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЊ
$lstm_cell_35/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_35_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0љ
lstm_cell_35/MatMul_1MatMulzeros:output:0,lstm_cell_35/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љї
lstm_cell_35/addAddV2lstm_cell_35/MatMul:product:0lstm_cell_35/MatMul_1:product:0*
T0*(
_output_shapes
:         љЇ
#lstm_cell_35/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_35_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0Ћ
lstm_cell_35/BiasAddBiasAddlstm_cell_35/add:z:0+lstm_cell_35/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ^
lstm_cell_35/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_cell_35/splitSplit%lstm_cell_35/split/split_dim:output:0lstm_cell_35/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitn
lstm_cell_35/SigmoidSigmoidlstm_cell_35/split:output:0*
T0*'
_output_shapes
:         dp
lstm_cell_35/Sigmoid_1Sigmoidlstm_cell_35/split:output:1*
T0*'
_output_shapes
:         dw
lstm_cell_35/mulMullstm_cell_35/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dh
lstm_cell_35/ReluRelulstm_cell_35/split:output:2*
T0*'
_output_shapes
:         dє
lstm_cell_35/mul_1Mullstm_cell_35/Sigmoid:y:0lstm_cell_35/Relu:activations:0*
T0*'
_output_shapes
:         d{
lstm_cell_35/add_1AddV2lstm_cell_35/mul:z:0lstm_cell_35/mul_1:z:0*
T0*'
_output_shapes
:         dp
lstm_cell_35/Sigmoid_2Sigmoidlstm_cell_35/split:output:3*
T0*'
_output_shapes
:         de
lstm_cell_35/Relu_1Relulstm_cell_35/add_1:z:0*
T0*'
_output_shapes
:         dі
lstm_cell_35/mul_2Mullstm_cell_35/Sigmoid_2:y:0!lstm_cell_35/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_35_matmul_readvariableop_resource-lstm_cell_35_matmul_1_readvariableop_resource,lstm_cell_35_biasadd_readvariableop_resource*
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
while_body_380718*
condR
while_cond_380717*K
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
NoOpNoOp$^lstm_cell_35/BiasAdd/ReadVariableOp#^lstm_cell_35/MatMul/ReadVariableOp%^lstm_cell_35/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2J
#lstm_cell_35/BiasAdd/ReadVariableOp#lstm_cell_35/BiasAdd/ReadVariableOp2H
"lstm_cell_35/MatMul/ReadVariableOp"lstm_cell_35/MatMul/ReadVariableOp2L
$lstm_cell_35/MatMul_1/ReadVariableOp$lstm_cell_35/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
Ќ	
├
while_cond_380572
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_380572___redundant_placeholder04
0while_while_cond_380572___redundant_placeholder14
0while_while_cond_380572___redundant_placeholder24
0while_while_cond_380572___redundant_placeholder3
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
▒
└
I__inference_sequential_17_layer_call_and_return_conditional_losses_378876

inputs!
lstm_34_378850:		љ!
lstm_34_378852:	dљ
lstm_34_378854:	љ!
lstm_35_378857:	dљ!
lstm_35_378859:	dљ
lstm_35_378861:	љ!
dense_34_378865:d
dense_34_378867:!
dense_35_378870:
dense_35_378872:
identityѕб dense_34/StatefulPartitionedCallб dense_35/StatefulPartitionedCallбlstm_34/StatefulPartitionedCallбlstm_35/StatefulPartitionedCallѓ
lstm_34/StatefulPartitionedCallStatefulPartitionedCallinputslstm_34_378850lstm_34_378852lstm_34_378854*
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
C__inference_lstm_34_layer_call_and_return_conditional_losses_378613а
lstm_35/StatefulPartitionedCallStatefulPartitionedCall(lstm_34/StatefulPartitionedCall:output:0lstm_35_378857lstm_35_378859lstm_35_378861*
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
C__inference_lstm_35_layer_call_and_return_conditional_losses_378765я
dropout_17/PartitionedCallPartitionedCall(lstm_35/StatefulPartitionedCall:output:0*
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
F__inference_dropout_17_layer_call_and_return_conditional_losses_378777Ї
 dense_34/StatefulPartitionedCallStatefulPartitionedCall#dropout_17/PartitionedCall:output:0dense_34_378865dense_34_378867*
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
D__inference_dense_34_layer_call_and_return_conditional_losses_378444Њ
 dense_35/StatefulPartitionedCallStatefulPartitionedCall)dense_34/StatefulPartitionedCall:output:0dense_35_378870dense_35_378872*
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
D__inference_dense_35_layer_call_and_return_conditional_losses_378461x
IdentityIdentity)dense_35/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         л
NoOpNoOp!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall ^lstm_34/StatefulPartitionedCall ^lstm_35/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         	: : : : : : : : : : 2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall2B
lstm_34/StatefulPartitionedCalllstm_34/StatefulPartitionedCall2B
lstm_35/StatefulPartitionedCalllstm_35/StatefulPartitionedCall:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
Ќ	
├
while_cond_379810
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_379810___redundant_placeholder04
0while_while_cond_379810___redundant_placeholder14
0while_while_cond_379810___redundant_placeholder24
0while_while_cond_379810___redundant_placeholder3
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
while_cond_378679
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_378679___redundant_placeholder04
0while_while_cond_378679___redundant_placeholder14
0while_while_cond_378679___redundant_placeholder24
0while_while_cond_378679___redundant_placeholder3
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

lstm_34_while_body_379468,
(lstm_34_while_lstm_34_while_loop_counter2
.lstm_34_while_lstm_34_while_maximum_iterations
lstm_34_while_placeholder
lstm_34_while_placeholder_1
lstm_34_while_placeholder_2
lstm_34_while_placeholder_3+
'lstm_34_while_lstm_34_strided_slice_1_0g
clstm_34_while_tensorarrayv2read_tensorlistgetitem_lstm_34_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_34_while_lstm_cell_34_matmul_readvariableop_resource_0:		љP
=lstm_34_while_lstm_cell_34_matmul_1_readvariableop_resource_0:	dљK
<lstm_34_while_lstm_cell_34_biasadd_readvariableop_resource_0:	љ
lstm_34_while_identity
lstm_34_while_identity_1
lstm_34_while_identity_2
lstm_34_while_identity_3
lstm_34_while_identity_4
lstm_34_while_identity_5)
%lstm_34_while_lstm_34_strided_slice_1e
alstm_34_while_tensorarrayv2read_tensorlistgetitem_lstm_34_tensorarrayunstack_tensorlistfromtensorL
9lstm_34_while_lstm_cell_34_matmul_readvariableop_resource:		љN
;lstm_34_while_lstm_cell_34_matmul_1_readvariableop_resource:	dљI
:lstm_34_while_lstm_cell_34_biasadd_readvariableop_resource:	љѕб1lstm_34/while/lstm_cell_34/BiasAdd/ReadVariableOpб0lstm_34/while/lstm_cell_34/MatMul/ReadVariableOpб2lstm_34/while/lstm_cell_34/MatMul_1/ReadVariableOpљ
?lstm_34/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   ╬
1lstm_34/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_34_while_tensorarrayv2read_tensorlistgetitem_lstm_34_tensorarrayunstack_tensorlistfromtensor_0lstm_34_while_placeholderHlstm_34/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         	*
element_dtype0Г
0lstm_34/while/lstm_cell_34/MatMul/ReadVariableOpReadVariableOp;lstm_34_while_lstm_cell_34_matmul_readvariableop_resource_0*
_output_shapes
:		љ*
dtype0м
!lstm_34/while/lstm_cell_34/MatMulMatMul8lstm_34/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_34/while/lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ▒
2lstm_34/while/lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp=lstm_34_while_lstm_cell_34_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0╣
#lstm_34/while/lstm_cell_34/MatMul_1MatMullstm_34_while_placeholder_2:lstm_34/while/lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љХ
lstm_34/while/lstm_cell_34/addAddV2+lstm_34/while/lstm_cell_34/MatMul:product:0-lstm_34/while/lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:         љФ
1lstm_34/while/lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp<lstm_34_while_lstm_cell_34_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0┐
"lstm_34/while/lstm_cell_34/BiasAddBiasAdd"lstm_34/while/lstm_cell_34/add:z:09lstm_34/while/lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љl
*lstm_34/while/lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Є
 lstm_34/while/lstm_cell_34/splitSplit3lstm_34/while/lstm_cell_34/split/split_dim:output:0+lstm_34/while/lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitі
"lstm_34/while/lstm_cell_34/SigmoidSigmoid)lstm_34/while/lstm_cell_34/split:output:0*
T0*'
_output_shapes
:         dї
$lstm_34/while/lstm_cell_34/Sigmoid_1Sigmoid)lstm_34/while/lstm_cell_34/split:output:1*
T0*'
_output_shapes
:         dъ
lstm_34/while/lstm_cell_34/mulMul(lstm_34/while/lstm_cell_34/Sigmoid_1:y:0lstm_34_while_placeholder_3*
T0*'
_output_shapes
:         dё
lstm_34/while/lstm_cell_34/ReluRelu)lstm_34/while/lstm_cell_34/split:output:2*
T0*'
_output_shapes
:         d░
 lstm_34/while/lstm_cell_34/mul_1Mul&lstm_34/while/lstm_cell_34/Sigmoid:y:0-lstm_34/while/lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:         dЦ
 lstm_34/while/lstm_cell_34/add_1AddV2"lstm_34/while/lstm_cell_34/mul:z:0$lstm_34/while/lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:         dї
$lstm_34/while/lstm_cell_34/Sigmoid_2Sigmoid)lstm_34/while/lstm_cell_34/split:output:3*
T0*'
_output_shapes
:         dЂ
!lstm_34/while/lstm_cell_34/Relu_1Relu$lstm_34/while/lstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:         d┤
 lstm_34/while/lstm_cell_34/mul_2Mul(lstm_34/while/lstm_cell_34/Sigmoid_2:y:0/lstm_34/while/lstm_cell_34/Relu_1:activations:0*
T0*'
_output_shapes
:         dт
2lstm_34/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_34_while_placeholder_1lstm_34_while_placeholder$lstm_34/while/lstm_cell_34/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмU
lstm_34/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_34/while/addAddV2lstm_34_while_placeholderlstm_34/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_34/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Є
lstm_34/while/add_1AddV2(lstm_34_while_lstm_34_while_loop_counterlstm_34/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_34/while/IdentityIdentitylstm_34/while/add_1:z:0^lstm_34/while/NoOp*
T0*
_output_shapes
: і
lstm_34/while/Identity_1Identity.lstm_34_while_lstm_34_while_maximum_iterations^lstm_34/while/NoOp*
T0*
_output_shapes
: q
lstm_34/while/Identity_2Identitylstm_34/while/add:z:0^lstm_34/while/NoOp*
T0*
_output_shapes
: ъ
lstm_34/while/Identity_3IdentityBlstm_34/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_34/while/NoOp*
T0*
_output_shapes
: Љ
lstm_34/while/Identity_4Identity$lstm_34/while/lstm_cell_34/mul_2:z:0^lstm_34/while/NoOp*
T0*'
_output_shapes
:         dЉ
lstm_34/while/Identity_5Identity$lstm_34/while/lstm_cell_34/add_1:z:0^lstm_34/while/NoOp*
T0*'
_output_shapes
:         d­
lstm_34/while/NoOpNoOp2^lstm_34/while/lstm_cell_34/BiasAdd/ReadVariableOp1^lstm_34/while/lstm_cell_34/MatMul/ReadVariableOp3^lstm_34/while/lstm_cell_34/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "=
lstm_34_while_identity_1!lstm_34/while/Identity_1:output:0"=
lstm_34_while_identity_2!lstm_34/while/Identity_2:output:0"=
lstm_34_while_identity_3!lstm_34/while/Identity_3:output:0"=
lstm_34_while_identity_4!lstm_34/while/Identity_4:output:0"=
lstm_34_while_identity_5!lstm_34/while/Identity_5:output:0"9
lstm_34_while_identitylstm_34/while/Identity:output:0"P
%lstm_34_while_lstm_34_strided_slice_1'lstm_34_while_lstm_34_strided_slice_1_0"z
:lstm_34_while_lstm_cell_34_biasadd_readvariableop_resource<lstm_34_while_lstm_cell_34_biasadd_readvariableop_resource_0"|
;lstm_34_while_lstm_cell_34_matmul_1_readvariableop_resource=lstm_34_while_lstm_cell_34_matmul_1_readvariableop_resource_0"x
9lstm_34_while_lstm_cell_34_matmul_readvariableop_resource;lstm_34_while_lstm_cell_34_matmul_readvariableop_resource_0"╚
alstm_34_while_tensorarrayv2read_tensorlistgetitem_lstm_34_tensorarrayunstack_tensorlistfromtensorclstm_34_while_tensorarrayv2read_tensorlistgetitem_lstm_34_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2f
1lstm_34/while/lstm_cell_34/BiasAdd/ReadVariableOp1lstm_34/while/lstm_cell_34/BiasAdd/ReadVariableOp2d
0lstm_34/while/lstm_cell_34/MatMul/ReadVariableOp0lstm_34/while/lstm_cell_34/MatMul/ReadVariableOp2h
2lstm_34/while/lstm_cell_34/MatMul_1/ReadVariableOp2lstm_34/while/lstm_cell_34/MatMul_1/ReadVariableOp:
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
_user_specified_name" lstm_34/while/maximum_iterations:R N

_output_shapes
: 
4
_user_specified_namelstm_34/while/loop_counter
Ќ	
├
while_cond_377631
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_377631___redundant_placeholder04
0while_while_cond_377631___redundant_placeholder14
0while_while_cond_377631___redundant_placeholder24
0while_while_cond_377631___redundant_placeholder3
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
H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_377618

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
Н
ё
H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_377473

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
Е
и
(__inference_lstm_34_layer_call_fn_379719
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
C__inference_lstm_34_layer_call_and_return_conditional_losses_377556|
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
╚#
с
while_body_377487
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_34_377511_0:		љ.
while_lstm_cell_34_377513_0:	dљ*
while_lstm_cell_34_377515_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_34_377511:		љ,
while_lstm_cell_34_377513:	dљ(
while_lstm_cell_34_377515:	љѕб*while/lstm_cell_34/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         	*
element_dtype0│
*while/lstm_cell_34/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_34_377511_0while_lstm_cell_34_377513_0while_lstm_cell_34_377515_0*
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
H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_377473▄
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_34/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_34/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         dљ
while/Identity_5Identity3while/lstm_cell_34/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         dy

while/NoOpNoOp+^while/lstm_cell_34/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"8
while_lstm_cell_34_377511while_lstm_cell_34_377511_0"8
while_lstm_cell_34_377513while_lstm_cell_34_377513_0"8
while_lstm_cell_34_377515while_lstm_cell_34_377515_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_34/StatefulPartitionedCall*while/lstm_cell_34/StatefulPartitionedCall:
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
┬
ќ
)__inference_dense_34_layer_call_fn_380984

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
D__inference_dense_34_layer_call_and_return_conditional_losses_378444o
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
в
Ш
-__inference_lstm_cell_35_layer_call_fn_381130

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
H__inference_lstm_cell_35_layer_call_and_return_conditional_losses_377823o
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
 
х
(__inference_lstm_34_layer_call_fn_379752

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
C__inference_lstm_34_layer_call_and_return_conditional_losses_378613s
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
Н
ё
H__inference_lstm_cell_35_layer_call_and_return_conditional_losses_377823

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
в
Ш
-__inference_lstm_cell_34_layer_call_fn_381032

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
H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_377473o
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
 
х
(__inference_lstm_34_layer_call_fn_379741

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
C__inference_lstm_34_layer_call_and_return_conditional_losses_378259s
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
в
Ш
-__inference_lstm_cell_35_layer_call_fn_381147

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
H__inference_lstm_cell_35_layer_call_and_return_conditional_losses_377970o
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
і:
л
while_body_380718
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_35_matmul_readvariableop_resource_0:	dљH
5while_lstm_cell_35_matmul_1_readvariableop_resource_0:	dљC
4while_lstm_cell_35_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_35_matmul_readvariableop_resource:	dљF
3while_lstm_cell_35_matmul_1_readvariableop_resource:	dљA
2while_lstm_cell_35_biasadd_readvariableop_resource:	љѕб)while/lstm_cell_35/BiasAdd/ReadVariableOpб(while/lstm_cell_35/MatMul/ReadVariableOpб*while/lstm_cell_35/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ю
(while/lstm_cell_35/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_35_matmul_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0║
while/lstm_cell_35/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_35/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
*while/lstm_cell_35/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_35_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0А
while/lstm_cell_35/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_35/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љъ
while/lstm_cell_35/addAddV2#while/lstm_cell_35/MatMul:product:0%while/lstm_cell_35/MatMul_1:product:0*
T0*(
_output_shapes
:         љЏ
)while/lstm_cell_35/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_35_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0Д
while/lstm_cell_35/BiasAddBiasAddwhile/lstm_cell_35/add:z:01while/lstm_cell_35/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љd
"while/lstm_cell_35/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_35/splitSplit+while/lstm_cell_35/split/split_dim:output:0#while/lstm_cell_35/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitz
while/lstm_cell_35/SigmoidSigmoid!while/lstm_cell_35/split:output:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_35/Sigmoid_1Sigmoid!while/lstm_cell_35/split:output:1*
T0*'
_output_shapes
:         dє
while/lstm_cell_35/mulMul while/lstm_cell_35/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dt
while/lstm_cell_35/ReluRelu!while/lstm_cell_35/split:output:2*
T0*'
_output_shapes
:         dў
while/lstm_cell_35/mul_1Mulwhile/lstm_cell_35/Sigmoid:y:0%while/lstm_cell_35/Relu:activations:0*
T0*'
_output_shapes
:         dЇ
while/lstm_cell_35/add_1AddV2while/lstm_cell_35/mul:z:0while/lstm_cell_35/mul_1:z:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_35/Sigmoid_2Sigmoid!while/lstm_cell_35/split:output:3*
T0*'
_output_shapes
:         dq
while/lstm_cell_35/Relu_1Reluwhile/lstm_cell_35/add_1:z:0*
T0*'
_output_shapes
:         dю
while/lstm_cell_35/mul_2Mul while/lstm_cell_35/Sigmoid_2:y:0'while/lstm_cell_35/Relu_1:activations:0*
T0*'
_output_shapes
:         dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ь
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_35/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_35/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dy
while/Identity_5Identitywhile/lstm_cell_35/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dл

while/NoOpNoOp*^while/lstm_cell_35/BiasAdd/ReadVariableOp)^while/lstm_cell_35/MatMul/ReadVariableOp+^while/lstm_cell_35/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"j
2while_lstm_cell_35_biasadd_readvariableop_resource4while_lstm_cell_35_biasadd_readvariableop_resource_0"l
3while_lstm_cell_35_matmul_1_readvariableop_resource5while_lstm_cell_35_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_35_matmul_readvariableop_resource3while_lstm_cell_35_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2V
)while/lstm_cell_35/BiasAdd/ReadVariableOp)while/lstm_cell_35/BiasAdd/ReadVariableOp2T
(while/lstm_cell_35/MatMul/ReadVariableOp(while/lstm_cell_35/MatMul/ReadVariableOp2X
*while/lstm_cell_35/MatMul_1/ReadVariableOp*while/lstm_cell_35/MatMul_1/ReadVariableOp:
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
П
є
H__inference_lstm_cell_35_layer_call_and_return_conditional_losses_381179

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
џ

e
F__inference_dropout_17_layer_call_and_return_conditional_losses_380970

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
«

§
.__inference_sequential_17_layer_call_fn_379078

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
I__inference_sequential_17_layer_call_and_return_conditional_losses_378822o
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
┼K
Џ
C__inference_lstm_35_layer_call_and_return_conditional_losses_378765

inputs>
+lstm_cell_35_matmul_readvariableop_resource:	dљ@
-lstm_cell_35_matmul_1_readvariableop_resource:	dљ;
,lstm_cell_35_biasadd_readvariableop_resource:	љ
identityѕб#lstm_cell_35/BiasAdd/ReadVariableOpб"lstm_cell_35/MatMul/ReadVariableOpб$lstm_cell_35/MatMul_1/ReadVariableOpбwhileI
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
"lstm_cell_35/MatMul/ReadVariableOpReadVariableOp+lstm_cell_35_matmul_readvariableop_resource*
_output_shapes
:	dљ*
dtype0ќ
lstm_cell_35/MatMulMatMulstrided_slice_2:output:0*lstm_cell_35/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЊ
$lstm_cell_35/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_35_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0љ
lstm_cell_35/MatMul_1MatMulzeros:output:0,lstm_cell_35/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љї
lstm_cell_35/addAddV2lstm_cell_35/MatMul:product:0lstm_cell_35/MatMul_1:product:0*
T0*(
_output_shapes
:         љЇ
#lstm_cell_35/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_35_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0Ћ
lstm_cell_35/BiasAddBiasAddlstm_cell_35/add:z:0+lstm_cell_35/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ^
lstm_cell_35/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_cell_35/splitSplit%lstm_cell_35/split/split_dim:output:0lstm_cell_35/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitn
lstm_cell_35/SigmoidSigmoidlstm_cell_35/split:output:0*
T0*'
_output_shapes
:         dp
lstm_cell_35/Sigmoid_1Sigmoidlstm_cell_35/split:output:1*
T0*'
_output_shapes
:         dw
lstm_cell_35/mulMullstm_cell_35/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dh
lstm_cell_35/ReluRelulstm_cell_35/split:output:2*
T0*'
_output_shapes
:         dє
lstm_cell_35/mul_1Mullstm_cell_35/Sigmoid:y:0lstm_cell_35/Relu:activations:0*
T0*'
_output_shapes
:         d{
lstm_cell_35/add_1AddV2lstm_cell_35/mul:z:0lstm_cell_35/mul_1:z:0*
T0*'
_output_shapes
:         dp
lstm_cell_35/Sigmoid_2Sigmoidlstm_cell_35/split:output:3*
T0*'
_output_shapes
:         de
lstm_cell_35/Relu_1Relulstm_cell_35/add_1:z:0*
T0*'
_output_shapes
:         dі
lstm_cell_35/mul_2Mullstm_cell_35/Sigmoid_2:y:0!lstm_cell_35/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_35_matmul_readvariableop_resource-lstm_cell_35_matmul_1_readvariableop_resource,lstm_cell_35_biasadd_readvariableop_resource*
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
while_body_378680*
condR
while_cond_378679*K
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
NoOpNoOp$^lstm_cell_35/BiasAdd/ReadVariableOp#^lstm_cell_35/MatMul/ReadVariableOp%^lstm_cell_35/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2J
#lstm_cell_35/BiasAdd/ReadVariableOp#lstm_cell_35/BiasAdd/ReadVariableOp2H
"lstm_cell_35/MatMul/ReadVariableOp"lstm_cell_35/MatMul/ReadVariableOp2L
$lstm_cell_35/MatMul_1/ReadVariableOp$lstm_cell_35/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
г
ч
'sequential_17_lstm_34_while_cond_377168H
Dsequential_17_lstm_34_while_sequential_17_lstm_34_while_loop_counterN
Jsequential_17_lstm_34_while_sequential_17_lstm_34_while_maximum_iterations+
'sequential_17_lstm_34_while_placeholder-
)sequential_17_lstm_34_while_placeholder_1-
)sequential_17_lstm_34_while_placeholder_2-
)sequential_17_lstm_34_while_placeholder_3J
Fsequential_17_lstm_34_while_less_sequential_17_lstm_34_strided_slice_1`
\sequential_17_lstm_34_while_sequential_17_lstm_34_while_cond_377168___redundant_placeholder0`
\sequential_17_lstm_34_while_sequential_17_lstm_34_while_cond_377168___redundant_placeholder1`
\sequential_17_lstm_34_while_sequential_17_lstm_34_while_cond_377168___redundant_placeholder2`
\sequential_17_lstm_34_while_sequential_17_lstm_34_while_cond_377168___redundant_placeholder3(
$sequential_17_lstm_34_while_identity
║
 sequential_17/lstm_34/while/LessLess'sequential_17_lstm_34_while_placeholderFsequential_17_lstm_34_while_less_sequential_17_lstm_34_strided_slice_1*
T0*
_output_shapes
: w
$sequential_17/lstm_34/while/IdentityIdentity$sequential_17/lstm_34/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_17_lstm_34_while_identity-sequential_17/lstm_34/while/Identity:output:0*(
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
_user_specified_name0.sequential_17/lstm_34/while/maximum_iterations:` \

_output_shapes
: 
B
_user_specified_name*(sequential_17/lstm_34/while/loop_counter
Ј
и
(__inference_lstm_35_layer_call_fn_380346
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
C__inference_lstm_35_layer_call_and_return_conditional_losses_378055o
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
і:
л
while_body_378680
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_35_matmul_readvariableop_resource_0:	dљH
5while_lstm_cell_35_matmul_1_readvariableop_resource_0:	dљC
4while_lstm_cell_35_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_35_matmul_readvariableop_resource:	dљF
3while_lstm_cell_35_matmul_1_readvariableop_resource:	dљA
2while_lstm_cell_35_biasadd_readvariableop_resource:	љѕб)while/lstm_cell_35/BiasAdd/ReadVariableOpб(while/lstm_cell_35/MatMul/ReadVariableOpб*while/lstm_cell_35/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ю
(while/lstm_cell_35/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_35_matmul_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0║
while/lstm_cell_35/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_35/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
*while/lstm_cell_35/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_35_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0А
while/lstm_cell_35/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_35/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љъ
while/lstm_cell_35/addAddV2#while/lstm_cell_35/MatMul:product:0%while/lstm_cell_35/MatMul_1:product:0*
T0*(
_output_shapes
:         љЏ
)while/lstm_cell_35/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_35_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0Д
while/lstm_cell_35/BiasAddBiasAddwhile/lstm_cell_35/add:z:01while/lstm_cell_35/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љd
"while/lstm_cell_35/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_35/splitSplit+while/lstm_cell_35/split/split_dim:output:0#while/lstm_cell_35/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitz
while/lstm_cell_35/SigmoidSigmoid!while/lstm_cell_35/split:output:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_35/Sigmoid_1Sigmoid!while/lstm_cell_35/split:output:1*
T0*'
_output_shapes
:         dє
while/lstm_cell_35/mulMul while/lstm_cell_35/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dt
while/lstm_cell_35/ReluRelu!while/lstm_cell_35/split:output:2*
T0*'
_output_shapes
:         dў
while/lstm_cell_35/mul_1Mulwhile/lstm_cell_35/Sigmoid:y:0%while/lstm_cell_35/Relu:activations:0*
T0*'
_output_shapes
:         dЇ
while/lstm_cell_35/add_1AddV2while/lstm_cell_35/mul:z:0while/lstm_cell_35/mul_1:z:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_35/Sigmoid_2Sigmoid!while/lstm_cell_35/split:output:3*
T0*'
_output_shapes
:         dq
while/lstm_cell_35/Relu_1Reluwhile/lstm_cell_35/add_1:z:0*
T0*'
_output_shapes
:         dю
while/lstm_cell_35/mul_2Mul while/lstm_cell_35/Sigmoid_2:y:0'while/lstm_cell_35/Relu_1:activations:0*
T0*'
_output_shapes
:         dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ь
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_35/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_35/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dy
while/Identity_5Identitywhile/lstm_cell_35/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dл

while/NoOpNoOp*^while/lstm_cell_35/BiasAdd/ReadVariableOp)^while/lstm_cell_35/MatMul/ReadVariableOp+^while/lstm_cell_35/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"j
2while_lstm_cell_35_biasadd_readvariableop_resource4while_lstm_cell_35_biasadd_readvariableop_resource_0"l
3while_lstm_cell_35_matmul_1_readvariableop_resource5while_lstm_cell_35_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_35_matmul_readvariableop_resource3while_lstm_cell_35_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2V
)while/lstm_cell_35/BiasAdd/ReadVariableOp)while/lstm_cell_35/BiasAdd/ReadVariableOp2T
(while/lstm_cell_35/MatMul/ReadVariableOp(while/lstm_cell_35/MatMul/ReadVariableOp2X
*while/lstm_cell_35/MatMul_1/ReadVariableOp*while/lstm_cell_35/MatMul_1/ReadVariableOp:
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
while_body_377985
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_35_378009_0:	dљ.
while_lstm_cell_35_378011_0:	dљ*
while_lstm_cell_35_378013_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_35_378009:	dљ,
while_lstm_cell_35_378011:	dљ(
while_lstm_cell_35_378013:	љѕб*while/lstm_cell_35/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0│
*while/lstm_cell_35/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_35_378009_0while_lstm_cell_35_378011_0while_lstm_cell_35_378013_0*
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
H__inference_lstm_cell_35_layer_call_and_return_conditional_losses_377970r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ё
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:03while/lstm_cell_35/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_35/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         dљ
while/Identity_5Identity3while/lstm_cell_35/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         dy

while/NoOpNoOp+^while/lstm_cell_35/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"8
while_lstm_cell_35_378009while_lstm_cell_35_378009_0"8
while_lstm_cell_35_378011while_lstm_cell_35_378011_0"8
while_lstm_cell_35_378013while_lstm_cell_35_378013_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_35/StatefulPartitionedCall*while/lstm_cell_35/StatefulPartitionedCall:
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
while_body_380097
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_34_matmul_readvariableop_resource_0:		љH
5while_lstm_cell_34_matmul_1_readvariableop_resource_0:	dљC
4while_lstm_cell_34_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_34_matmul_readvariableop_resource:		љF
3while_lstm_cell_34_matmul_1_readvariableop_resource:	dљA
2while_lstm_cell_34_biasadd_readvariableop_resource:	љѕб)while/lstm_cell_34/BiasAdd/ReadVariableOpб(while/lstm_cell_34/MatMul/ReadVariableOpб*while/lstm_cell_34/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         	*
element_dtype0Ю
(while/lstm_cell_34/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_34_matmul_readvariableop_resource_0*
_output_shapes
:		љ*
dtype0║
while/lstm_cell_34/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
*while/lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_34_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0А
while/lstm_cell_34/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љъ
while/lstm_cell_34/addAddV2#while/lstm_cell_34/MatMul:product:0%while/lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:         љЏ
)while/lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_34_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0Д
while/lstm_cell_34/BiasAddBiasAddwhile/lstm_cell_34/add:z:01while/lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љd
"while/lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_34/splitSplit+while/lstm_cell_34/split/split_dim:output:0#while/lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitz
while/lstm_cell_34/SigmoidSigmoid!while/lstm_cell_34/split:output:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_34/Sigmoid_1Sigmoid!while/lstm_cell_34/split:output:1*
T0*'
_output_shapes
:         dє
while/lstm_cell_34/mulMul while/lstm_cell_34/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dt
while/lstm_cell_34/ReluRelu!while/lstm_cell_34/split:output:2*
T0*'
_output_shapes
:         dў
while/lstm_cell_34/mul_1Mulwhile/lstm_cell_34/Sigmoid:y:0%while/lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:         dЇ
while/lstm_cell_34/add_1AddV2while/lstm_cell_34/mul:z:0while/lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_34/Sigmoid_2Sigmoid!while/lstm_cell_34/split:output:3*
T0*'
_output_shapes
:         dq
while/lstm_cell_34/Relu_1Reluwhile/lstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:         dю
while/lstm_cell_34/mul_2Mul while/lstm_cell_34/Sigmoid_2:y:0'while/lstm_cell_34/Relu_1:activations:0*
T0*'
_output_shapes
:         d┼
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_34/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_34/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dy
while/Identity_5Identitywhile/lstm_cell_34/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dл

while/NoOpNoOp*^while/lstm_cell_34/BiasAdd/ReadVariableOp)^while/lstm_cell_34/MatMul/ReadVariableOp+^while/lstm_cell_34/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"j
2while_lstm_cell_34_biasadd_readvariableop_resource4while_lstm_cell_34_biasadd_readvariableop_resource_0"l
3while_lstm_cell_34_matmul_1_readvariableop_resource5while_lstm_cell_34_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_34_matmul_readvariableop_resource3while_lstm_cell_34_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2V
)while/lstm_cell_34/BiasAdd/ReadVariableOp)while/lstm_cell_34/BiasAdd/ReadVariableOp2T
(while/lstm_cell_34/MatMul/ReadVariableOp(while/lstm_cell_34/MatMul/ReadVariableOp2X
*while/lstm_cell_34/MatMul_1/ReadVariableOp*while/lstm_cell_34/MatMul_1/ReadVariableOp:
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
┐J
Џ
C__inference_lstm_34_layer_call_and_return_conditional_losses_378259

inputs>
+lstm_cell_34_matmul_readvariableop_resource:		љ@
-lstm_cell_34_matmul_1_readvariableop_resource:	dљ;
,lstm_cell_34_biasadd_readvariableop_resource:	љ
identityѕб#lstm_cell_34/BiasAdd/ReadVariableOpб"lstm_cell_34/MatMul/ReadVariableOpб$lstm_cell_34/MatMul_1/ReadVariableOpбwhileI
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
"lstm_cell_34/MatMul/ReadVariableOpReadVariableOp+lstm_cell_34_matmul_readvariableop_resource*
_output_shapes
:		љ*
dtype0ќ
lstm_cell_34/MatMulMatMulstrided_slice_2:output:0*lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЊ
$lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_34_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0љ
lstm_cell_34/MatMul_1MatMulzeros:output:0,lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љї
lstm_cell_34/addAddV2lstm_cell_34/MatMul:product:0lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:         љЇ
#lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_34_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0Ћ
lstm_cell_34/BiasAddBiasAddlstm_cell_34/add:z:0+lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ^
lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_cell_34/splitSplit%lstm_cell_34/split/split_dim:output:0lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitn
lstm_cell_34/SigmoidSigmoidlstm_cell_34/split:output:0*
T0*'
_output_shapes
:         dp
lstm_cell_34/Sigmoid_1Sigmoidlstm_cell_34/split:output:1*
T0*'
_output_shapes
:         dw
lstm_cell_34/mulMullstm_cell_34/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dh
lstm_cell_34/ReluRelulstm_cell_34/split:output:2*
T0*'
_output_shapes
:         dє
lstm_cell_34/mul_1Mullstm_cell_34/Sigmoid:y:0lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:         d{
lstm_cell_34/add_1AddV2lstm_cell_34/mul:z:0lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:         dp
lstm_cell_34/Sigmoid_2Sigmoidlstm_cell_34/split:output:3*
T0*'
_output_shapes
:         de
lstm_cell_34/Relu_1Relulstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:         dі
lstm_cell_34/mul_2Mullstm_cell_34/Sigmoid_2:y:0!lstm_cell_34/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_34_matmul_readvariableop_resource-lstm_cell_34_matmul_1_readvariableop_resource,lstm_cell_34_biasadd_readvariableop_resource*
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
while_body_378175*
condR
while_cond_378174*K
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
NoOpNoOp$^lstm_cell_34/BiasAdd/ReadVariableOp#^lstm_cell_34/MatMul/ReadVariableOp%^lstm_cell_34/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         	: : : 2J
#lstm_cell_34/BiasAdd/ReadVariableOp#lstm_cell_34/BiasAdd/ReadVariableOp2H
"lstm_cell_34/MatMul/ReadVariableOp"lstm_cell_34/MatMul/ReadVariableOp2L
$lstm_cell_34/MatMul_1/ReadVariableOp$lstm_cell_34/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
П
є
H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_381081

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
Ь8
л
while_body_379811
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_34_matmul_readvariableop_resource_0:		љH
5while_lstm_cell_34_matmul_1_readvariableop_resource_0:	dљC
4while_lstm_cell_34_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_34_matmul_readvariableop_resource:		љF
3while_lstm_cell_34_matmul_1_readvariableop_resource:	dљA
2while_lstm_cell_34_biasadd_readvariableop_resource:	љѕб)while/lstm_cell_34/BiasAdd/ReadVariableOpб(while/lstm_cell_34/MatMul/ReadVariableOpб*while/lstm_cell_34/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         	*
element_dtype0Ю
(while/lstm_cell_34/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_34_matmul_readvariableop_resource_0*
_output_shapes
:		љ*
dtype0║
while/lstm_cell_34/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
*while/lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_34_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0А
while/lstm_cell_34/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љъ
while/lstm_cell_34/addAddV2#while/lstm_cell_34/MatMul:product:0%while/lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:         љЏ
)while/lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_34_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0Д
while/lstm_cell_34/BiasAddBiasAddwhile/lstm_cell_34/add:z:01while/lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љd
"while/lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_34/splitSplit+while/lstm_cell_34/split/split_dim:output:0#while/lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitz
while/lstm_cell_34/SigmoidSigmoid!while/lstm_cell_34/split:output:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_34/Sigmoid_1Sigmoid!while/lstm_cell_34/split:output:1*
T0*'
_output_shapes
:         dє
while/lstm_cell_34/mulMul while/lstm_cell_34/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dt
while/lstm_cell_34/ReluRelu!while/lstm_cell_34/split:output:2*
T0*'
_output_shapes
:         dў
while/lstm_cell_34/mul_1Mulwhile/lstm_cell_34/Sigmoid:y:0%while/lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:         dЇ
while/lstm_cell_34/add_1AddV2while/lstm_cell_34/mul:z:0while/lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_34/Sigmoid_2Sigmoid!while/lstm_cell_34/split:output:3*
T0*'
_output_shapes
:         dq
while/lstm_cell_34/Relu_1Reluwhile/lstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:         dю
while/lstm_cell_34/mul_2Mul while/lstm_cell_34/Sigmoid_2:y:0'while/lstm_cell_34/Relu_1:activations:0*
T0*'
_output_shapes
:         d┼
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_34/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_34/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dy
while/Identity_5Identitywhile/lstm_cell_34/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dл

while/NoOpNoOp*^while/lstm_cell_34/BiasAdd/ReadVariableOp)^while/lstm_cell_34/MatMul/ReadVariableOp+^while/lstm_cell_34/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"j
2while_lstm_cell_34_biasadd_readvariableop_resource4while_lstm_cell_34_biasadd_readvariableop_resource_0"l
3while_lstm_cell_34_matmul_1_readvariableop_resource5while_lstm_cell_34_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_34_matmul_readvariableop_resource3while_lstm_cell_34_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2V
)while/lstm_cell_34/BiasAdd/ReadVariableOp)while/lstm_cell_34/BiasAdd/ReadVariableOp2T
(while/lstm_cell_34/MatMul/ReadVariableOp(while/lstm_cell_34/MatMul/ReadVariableOp2X
*while/lstm_cell_34/MatMul_1/ReadVariableOp*while/lstm_cell_34/MatMul_1/ReadVariableOp:
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
Ми
Х	
I__inference_sequential_17_layer_call_and_return_conditional_losses_379708

inputsF
3lstm_34_lstm_cell_34_matmul_readvariableop_resource:		љH
5lstm_34_lstm_cell_34_matmul_1_readvariableop_resource:	dљC
4lstm_34_lstm_cell_34_biasadd_readvariableop_resource:	љF
3lstm_35_lstm_cell_35_matmul_readvariableop_resource:	dљH
5lstm_35_lstm_cell_35_matmul_1_readvariableop_resource:	dљC
4lstm_35_lstm_cell_35_biasadd_readvariableop_resource:	љ9
'dense_34_matmul_readvariableop_resource:d6
(dense_34_biasadd_readvariableop_resource:9
'dense_35_matmul_readvariableop_resource:6
(dense_35_biasadd_readvariableop_resource:
identityѕбdense_34/BiasAdd/ReadVariableOpбdense_34/MatMul/ReadVariableOpбdense_35/BiasAdd/ReadVariableOpбdense_35/MatMul/ReadVariableOpб+lstm_34/lstm_cell_34/BiasAdd/ReadVariableOpб*lstm_34/lstm_cell_34/MatMul/ReadVariableOpб,lstm_34/lstm_cell_34/MatMul_1/ReadVariableOpбlstm_34/whileб+lstm_35/lstm_cell_35/BiasAdd/ReadVariableOpб*lstm_35/lstm_cell_35/MatMul/ReadVariableOpб,lstm_35/lstm_cell_35/MatMul_1/ReadVariableOpбlstm_35/whileQ
lstm_34/ShapeShapeinputs*
T0*
_output_shapes
::ь¤e
lstm_34/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_34/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_34/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
lstm_34/strided_sliceStridedSlicelstm_34/Shape:output:0$lstm_34/strided_slice/stack:output:0&lstm_34/strided_slice/stack_1:output:0&lstm_34/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_34/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dІ
lstm_34/zeros/packedPacklstm_34/strided_slice:output:0lstm_34/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_34/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ё
lstm_34/zerosFilllstm_34/zeros/packed:output:0lstm_34/zeros/Const:output:0*
T0*'
_output_shapes
:         dZ
lstm_34/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dЈ
lstm_34/zeros_1/packedPacklstm_34/strided_slice:output:0!lstm_34/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_34/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    і
lstm_34/zeros_1Filllstm_34/zeros_1/packed:output:0lstm_34/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dk
lstm_34/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_34/transpose	Transposeinputslstm_34/transpose/perm:output:0*
T0*+
_output_shapes
:         	b
lstm_34/Shape_1Shapelstm_34/transpose:y:0*
T0*
_output_shapes
::ь¤g
lstm_34/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_34/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_34/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ѓ
lstm_34/strided_slice_1StridedSlicelstm_34/Shape_1:output:0&lstm_34/strided_slice_1/stack:output:0(lstm_34/strided_slice_1/stack_1:output:0(lstm_34/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_34/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ╠
lstm_34/TensorArrayV2TensorListReserve,lstm_34/TensorArrayV2/element_shape:output:0 lstm_34/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмј
=lstm_34/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   Э
/lstm_34/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_34/transpose:y:0Flstm_34/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмg
lstm_34/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_34/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_34/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Љ
lstm_34/strided_slice_2StridedSlicelstm_34/transpose:y:0&lstm_34/strided_slice_2/stack:output:0(lstm_34/strided_slice_2/stack_1:output:0(lstm_34/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         	*
shrink_axis_maskЪ
*lstm_34/lstm_cell_34/MatMul/ReadVariableOpReadVariableOp3lstm_34_lstm_cell_34_matmul_readvariableop_resource*
_output_shapes
:		љ*
dtype0«
lstm_34/lstm_cell_34/MatMulMatMul lstm_34/strided_slice_2:output:02lstm_34/lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
,lstm_34/lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp5lstm_34_lstm_cell_34_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0е
lstm_34/lstm_cell_34/MatMul_1MatMullstm_34/zeros:output:04lstm_34/lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љц
lstm_34/lstm_cell_34/addAddV2%lstm_34/lstm_cell_34/MatMul:product:0'lstm_34/lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
+lstm_34/lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp4lstm_34_lstm_cell_34_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0Г
lstm_34/lstm_cell_34/BiasAddBiasAddlstm_34/lstm_cell_34/add:z:03lstm_34/lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љf
$lstm_34/lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ш
lstm_34/lstm_cell_34/splitSplit-lstm_34/lstm_cell_34/split/split_dim:output:0%lstm_34/lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split~
lstm_34/lstm_cell_34/SigmoidSigmoid#lstm_34/lstm_cell_34/split:output:0*
T0*'
_output_shapes
:         dђ
lstm_34/lstm_cell_34/Sigmoid_1Sigmoid#lstm_34/lstm_cell_34/split:output:1*
T0*'
_output_shapes
:         dЈ
lstm_34/lstm_cell_34/mulMul"lstm_34/lstm_cell_34/Sigmoid_1:y:0lstm_34/zeros_1:output:0*
T0*'
_output_shapes
:         dx
lstm_34/lstm_cell_34/ReluRelu#lstm_34/lstm_cell_34/split:output:2*
T0*'
_output_shapes
:         dъ
lstm_34/lstm_cell_34/mul_1Mul lstm_34/lstm_cell_34/Sigmoid:y:0'lstm_34/lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:         dЊ
lstm_34/lstm_cell_34/add_1AddV2lstm_34/lstm_cell_34/mul:z:0lstm_34/lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:         dђ
lstm_34/lstm_cell_34/Sigmoid_2Sigmoid#lstm_34/lstm_cell_34/split:output:3*
T0*'
_output_shapes
:         du
lstm_34/lstm_cell_34/Relu_1Relulstm_34/lstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:         dб
lstm_34/lstm_cell_34/mul_2Mul"lstm_34/lstm_cell_34/Sigmoid_2:y:0)lstm_34/lstm_cell_34/Relu_1:activations:0*
T0*'
_output_shapes
:         dv
%lstm_34/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   л
lstm_34/TensorArrayV2_1TensorListReserve.lstm_34/TensorArrayV2_1/element_shape:output:0 lstm_34/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмN
lstm_34/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_34/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         \
lstm_34/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ы
lstm_34/whileWhile#lstm_34/while/loop_counter:output:0)lstm_34/while/maximum_iterations:output:0lstm_34/time:output:0 lstm_34/TensorArrayV2_1:handle:0lstm_34/zeros:output:0lstm_34/zeros_1:output:0 lstm_34/strided_slice_1:output:0?lstm_34/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_34_lstm_cell_34_matmul_readvariableop_resource5lstm_34_lstm_cell_34_matmul_1_readvariableop_resource4lstm_34_lstm_cell_34_biasadd_readvariableop_resource*
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
lstm_34_while_body_379468*%
condR
lstm_34_while_cond_379467*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ѕ
8lstm_34/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ┌
*lstm_34/TensorArrayV2Stack/TensorListStackTensorListStacklstm_34/while:output:3Alstm_34/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0p
lstm_34/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         i
lstm_34/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_34/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:»
lstm_34/strided_slice_3StridedSlice3lstm_34/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_34/strided_slice_3/stack:output:0(lstm_34/strided_slice_3/stack_1:output:0(lstm_34/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskm
lstm_34/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          «
lstm_34/transpose_1	Transpose3lstm_34/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_34/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dc
lstm_34/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
lstm_35/ShapeShapelstm_34/transpose_1:y:0*
T0*
_output_shapes
::ь¤e
lstm_35/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_35/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_35/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
lstm_35/strided_sliceStridedSlicelstm_35/Shape:output:0$lstm_35/strided_slice/stack:output:0&lstm_35/strided_slice/stack_1:output:0&lstm_35/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_35/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dІ
lstm_35/zeros/packedPacklstm_35/strided_slice:output:0lstm_35/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_35/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ё
lstm_35/zerosFilllstm_35/zeros/packed:output:0lstm_35/zeros/Const:output:0*
T0*'
_output_shapes
:         dZ
lstm_35/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dЈ
lstm_35/zeros_1/packedPacklstm_35/strided_slice:output:0!lstm_35/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_35/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    і
lstm_35/zeros_1Filllstm_35/zeros_1/packed:output:0lstm_35/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dk
lstm_35/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ј
lstm_35/transpose	Transposelstm_34/transpose_1:y:0lstm_35/transpose/perm:output:0*
T0*+
_output_shapes
:         db
lstm_35/Shape_1Shapelstm_35/transpose:y:0*
T0*
_output_shapes
::ь¤g
lstm_35/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_35/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_35/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ѓ
lstm_35/strided_slice_1StridedSlicelstm_35/Shape_1:output:0&lstm_35/strided_slice_1/stack:output:0(lstm_35/strided_slice_1/stack_1:output:0(lstm_35/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_35/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ╠
lstm_35/TensorArrayV2TensorListReserve,lstm_35/TensorArrayV2/element_shape:output:0 lstm_35/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмј
=lstm_35/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Э
/lstm_35/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_35/transpose:y:0Flstm_35/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмg
lstm_35/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_35/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_35/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Љ
lstm_35/strided_slice_2StridedSlicelstm_35/transpose:y:0&lstm_35/strided_slice_2/stack:output:0(lstm_35/strided_slice_2/stack_1:output:0(lstm_35/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskЪ
*lstm_35/lstm_cell_35/MatMul/ReadVariableOpReadVariableOp3lstm_35_lstm_cell_35_matmul_readvariableop_resource*
_output_shapes
:	dљ*
dtype0«
lstm_35/lstm_cell_35/MatMulMatMul lstm_35/strided_slice_2:output:02lstm_35/lstm_cell_35/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
,lstm_35/lstm_cell_35/MatMul_1/ReadVariableOpReadVariableOp5lstm_35_lstm_cell_35_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0е
lstm_35/lstm_cell_35/MatMul_1MatMullstm_35/zeros:output:04lstm_35/lstm_cell_35/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љц
lstm_35/lstm_cell_35/addAddV2%lstm_35/lstm_cell_35/MatMul:product:0'lstm_35/lstm_cell_35/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
+lstm_35/lstm_cell_35/BiasAdd/ReadVariableOpReadVariableOp4lstm_35_lstm_cell_35_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0Г
lstm_35/lstm_cell_35/BiasAddBiasAddlstm_35/lstm_cell_35/add:z:03lstm_35/lstm_cell_35/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љf
$lstm_35/lstm_cell_35/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ш
lstm_35/lstm_cell_35/splitSplit-lstm_35/lstm_cell_35/split/split_dim:output:0%lstm_35/lstm_cell_35/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split~
lstm_35/lstm_cell_35/SigmoidSigmoid#lstm_35/lstm_cell_35/split:output:0*
T0*'
_output_shapes
:         dђ
lstm_35/lstm_cell_35/Sigmoid_1Sigmoid#lstm_35/lstm_cell_35/split:output:1*
T0*'
_output_shapes
:         dЈ
lstm_35/lstm_cell_35/mulMul"lstm_35/lstm_cell_35/Sigmoid_1:y:0lstm_35/zeros_1:output:0*
T0*'
_output_shapes
:         dx
lstm_35/lstm_cell_35/ReluRelu#lstm_35/lstm_cell_35/split:output:2*
T0*'
_output_shapes
:         dъ
lstm_35/lstm_cell_35/mul_1Mul lstm_35/lstm_cell_35/Sigmoid:y:0'lstm_35/lstm_cell_35/Relu:activations:0*
T0*'
_output_shapes
:         dЊ
lstm_35/lstm_cell_35/add_1AddV2lstm_35/lstm_cell_35/mul:z:0lstm_35/lstm_cell_35/mul_1:z:0*
T0*'
_output_shapes
:         dђ
lstm_35/lstm_cell_35/Sigmoid_2Sigmoid#lstm_35/lstm_cell_35/split:output:3*
T0*'
_output_shapes
:         du
lstm_35/lstm_cell_35/Relu_1Relulstm_35/lstm_cell_35/add_1:z:0*
T0*'
_output_shapes
:         dб
lstm_35/lstm_cell_35/mul_2Mul"lstm_35/lstm_cell_35/Sigmoid_2:y:0)lstm_35/lstm_cell_35/Relu_1:activations:0*
T0*'
_output_shapes
:         dv
%lstm_35/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   f
$lstm_35/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_35/TensorArrayV2_1TensorListReserve.lstm_35/TensorArrayV2_1/element_shape:output:0-lstm_35/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмN
lstm_35/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_35/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         \
lstm_35/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ы
lstm_35/whileWhile#lstm_35/while/loop_counter:output:0)lstm_35/while/maximum_iterations:output:0lstm_35/time:output:0 lstm_35/TensorArrayV2_1:handle:0lstm_35/zeros:output:0lstm_35/zeros_1:output:0 lstm_35/strided_slice_1:output:0?lstm_35/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_35_lstm_cell_35_matmul_readvariableop_resource5lstm_35_lstm_cell_35_matmul_1_readvariableop_resource4lstm_35_lstm_cell_35_biasadd_readvariableop_resource*
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
lstm_35_while_body_379608*%
condR
lstm_35_while_cond_379607*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ѕ
8lstm_35/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Ь
*lstm_35/TensorArrayV2Stack/TensorListStackTensorListStacklstm_35/while:output:3Alstm_35/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0*
num_elementsp
lstm_35/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         i
lstm_35/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_35/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:»
lstm_35/strided_slice_3StridedSlice3lstm_35/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_35/strided_slice_3/stack:output:0(lstm_35/strided_slice_3/stack_1:output:0(lstm_35/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskm
lstm_35/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          «
lstm_35/transpose_1	Transpose3lstm_35/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_35/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dc
lstm_35/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    s
dropout_17/IdentityIdentity lstm_35/strided_slice_3:output:0*
T0*'
_output_shapes
:         dє
dense_34/MatMul/ReadVariableOpReadVariableOp'dense_34_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0Љ
dense_34/MatMulMatMuldropout_17/Identity:output:0&dense_34/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
dense_34/BiasAdd/ReadVariableOpReadVariableOp(dense_34_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
dense_34/BiasAddBiasAdddense_34/MatMul:product:0'dense_34/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         b
dense_34/ReluReludense_34/BiasAdd:output:0*
T0*'
_output_shapes
:         є
dense_35/MatMul/ReadVariableOpReadVariableOp'dense_35_matmul_readvariableop_resource*
_output_shapes

:*
dtype0љ
dense_35/MatMulMatMuldense_34/Relu:activations:0&dense_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
dense_35/BiasAdd/ReadVariableOpReadVariableOp(dense_35_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
dense_35/BiasAddBiasAdddense_35/MatMul:product:0'dense_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
dense_35/SoftmaxSoftmaxdense_35/BiasAdd:output:0*
T0*'
_output_shapes
:         i
IdentityIdentitydense_35/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         ђ
NoOpNoOp ^dense_34/BiasAdd/ReadVariableOp^dense_34/MatMul/ReadVariableOp ^dense_35/BiasAdd/ReadVariableOp^dense_35/MatMul/ReadVariableOp,^lstm_34/lstm_cell_34/BiasAdd/ReadVariableOp+^lstm_34/lstm_cell_34/MatMul/ReadVariableOp-^lstm_34/lstm_cell_34/MatMul_1/ReadVariableOp^lstm_34/while,^lstm_35/lstm_cell_35/BiasAdd/ReadVariableOp+^lstm_35/lstm_cell_35/MatMul/ReadVariableOp-^lstm_35/lstm_cell_35/MatMul_1/ReadVariableOp^lstm_35/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         	: : : : : : : : : : 2B
dense_34/BiasAdd/ReadVariableOpdense_34/BiasAdd/ReadVariableOp2@
dense_34/MatMul/ReadVariableOpdense_34/MatMul/ReadVariableOp2B
dense_35/BiasAdd/ReadVariableOpdense_35/BiasAdd/ReadVariableOp2@
dense_35/MatMul/ReadVariableOpdense_35/MatMul/ReadVariableOp2Z
+lstm_34/lstm_cell_34/BiasAdd/ReadVariableOp+lstm_34/lstm_cell_34/BiasAdd/ReadVariableOp2X
*lstm_34/lstm_cell_34/MatMul/ReadVariableOp*lstm_34/lstm_cell_34/MatMul/ReadVariableOp2\
,lstm_34/lstm_cell_34/MatMul_1/ReadVariableOp,lstm_34/lstm_cell_34/MatMul_1/ReadVariableOp2
lstm_34/whilelstm_34/while2Z
+lstm_35/lstm_cell_35/BiasAdd/ReadVariableOp+lstm_35/lstm_cell_35/BiasAdd/ReadVariableOp2X
*lstm_35/lstm_cell_35/MatMul/ReadVariableOp*lstm_35/lstm_cell_35/MatMul/ReadVariableOp2\
,lstm_35/lstm_cell_35/MatMul_1/ReadVariableOp,lstm_35/lstm_cell_35/MatMul_1/ReadVariableOp2
lstm_35/whilelstm_35/while:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
Ќ	
├
while_cond_380096
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_380096___redundant_placeholder04
0while_while_cond_380096___redundant_placeholder14
0while_while_cond_380096___redundant_placeholder24
0while_while_cond_380096___redundant_placeholder3
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
ѕ
с
lstm_34_while_cond_379161,
(lstm_34_while_lstm_34_while_loop_counter2
.lstm_34_while_lstm_34_while_maximum_iterations
lstm_34_while_placeholder
lstm_34_while_placeholder_1
lstm_34_while_placeholder_2
lstm_34_while_placeholder_3.
*lstm_34_while_less_lstm_34_strided_slice_1D
@lstm_34_while_lstm_34_while_cond_379161___redundant_placeholder0D
@lstm_34_while_lstm_34_while_cond_379161___redundant_placeholder1D
@lstm_34_while_lstm_34_while_cond_379161___redundant_placeholder2D
@lstm_34_while_lstm_34_while_cond_379161___redundant_placeholder3
lstm_34_while_identity
ѓ
lstm_34/while/LessLesslstm_34_while_placeholder*lstm_34_while_less_lstm_34_strided_slice_1*
T0*
_output_shapes
: [
lstm_34/while/IdentityIdentitylstm_34/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_34_while_identitylstm_34/while/Identity:output:0*(
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
_user_specified_name" lstm_34/while/maximum_iterations:R N

_output_shapes
: 
4
_user_specified_namelstm_34/while/loop_counter
┼K
Џ
C__inference_lstm_35_layer_call_and_return_conditional_losses_378411

inputs>
+lstm_cell_35_matmul_readvariableop_resource:	dљ@
-lstm_cell_35_matmul_1_readvariableop_resource:	dљ;
,lstm_cell_35_biasadd_readvariableop_resource:	љ
identityѕб#lstm_cell_35/BiasAdd/ReadVariableOpб"lstm_cell_35/MatMul/ReadVariableOpб$lstm_cell_35/MatMul_1/ReadVariableOpбwhileI
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
"lstm_cell_35/MatMul/ReadVariableOpReadVariableOp+lstm_cell_35_matmul_readvariableop_resource*
_output_shapes
:	dљ*
dtype0ќ
lstm_cell_35/MatMulMatMulstrided_slice_2:output:0*lstm_cell_35/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЊ
$lstm_cell_35/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_35_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0љ
lstm_cell_35/MatMul_1MatMulzeros:output:0,lstm_cell_35/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љї
lstm_cell_35/addAddV2lstm_cell_35/MatMul:product:0lstm_cell_35/MatMul_1:product:0*
T0*(
_output_shapes
:         љЇ
#lstm_cell_35/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_35_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0Ћ
lstm_cell_35/BiasAddBiasAddlstm_cell_35/add:z:0+lstm_cell_35/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ^
lstm_cell_35/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_cell_35/splitSplit%lstm_cell_35/split/split_dim:output:0lstm_cell_35/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitn
lstm_cell_35/SigmoidSigmoidlstm_cell_35/split:output:0*
T0*'
_output_shapes
:         dp
lstm_cell_35/Sigmoid_1Sigmoidlstm_cell_35/split:output:1*
T0*'
_output_shapes
:         dw
lstm_cell_35/mulMullstm_cell_35/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dh
lstm_cell_35/ReluRelulstm_cell_35/split:output:2*
T0*'
_output_shapes
:         dє
lstm_cell_35/mul_1Mullstm_cell_35/Sigmoid:y:0lstm_cell_35/Relu:activations:0*
T0*'
_output_shapes
:         d{
lstm_cell_35/add_1AddV2lstm_cell_35/mul:z:0lstm_cell_35/mul_1:z:0*
T0*'
_output_shapes
:         dp
lstm_cell_35/Sigmoid_2Sigmoidlstm_cell_35/split:output:3*
T0*'
_output_shapes
:         de
lstm_cell_35/Relu_1Relulstm_cell_35/add_1:z:0*
T0*'
_output_shapes
:         dі
lstm_cell_35/mul_2Mullstm_cell_35/Sigmoid_2:y:0!lstm_cell_35/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_35_matmul_readvariableop_resource-lstm_cell_35_matmul_1_readvariableop_resource,lstm_cell_35_biasadd_readvariableop_resource*
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
while_body_378326*
condR
while_cond_378325*K
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
NoOpNoOp$^lstm_cell_35/BiasAdd/ReadVariableOp#^lstm_cell_35/MatMul/ReadVariableOp%^lstm_cell_35/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2J
#lstm_cell_35/BiasAdd/ReadVariableOp#lstm_cell_35/BiasAdd/ReadVariableOp2H
"lstm_cell_35/MatMul/ReadVariableOp"lstm_cell_35/MatMul/ReadVariableOp2L
$lstm_cell_35/MatMul_1/ReadVariableOp$lstm_cell_35/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
з
d
+__inference_dropout_17_layer_call_fn_380953

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
F__inference_dropout_17_layer_call_and_return_conditional_losses_378431o
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
while_cond_377486
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_377486___redundant_placeholder04
0while_while_cond_377486___redundant_placeholder14
0while_while_cond_377486___redundant_placeholder24
0while_while_cond_377486___redundant_placeholder3
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
§J
Ю
C__inference_lstm_34_layer_call_and_return_conditional_losses_379895
inputs_0>
+lstm_cell_34_matmul_readvariableop_resource:		љ@
-lstm_cell_34_matmul_1_readvariableop_resource:	dљ;
,lstm_cell_34_biasadd_readvariableop_resource:	љ
identityѕб#lstm_cell_34/BiasAdd/ReadVariableOpб"lstm_cell_34/MatMul/ReadVariableOpб$lstm_cell_34/MatMul_1/ReadVariableOpбwhileK
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
"lstm_cell_34/MatMul/ReadVariableOpReadVariableOp+lstm_cell_34_matmul_readvariableop_resource*
_output_shapes
:		љ*
dtype0ќ
lstm_cell_34/MatMulMatMulstrided_slice_2:output:0*lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЊ
$lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_34_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0љ
lstm_cell_34/MatMul_1MatMulzeros:output:0,lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љї
lstm_cell_34/addAddV2lstm_cell_34/MatMul:product:0lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:         љЇ
#lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_34_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0Ћ
lstm_cell_34/BiasAddBiasAddlstm_cell_34/add:z:0+lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ^
lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_cell_34/splitSplit%lstm_cell_34/split/split_dim:output:0lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitn
lstm_cell_34/SigmoidSigmoidlstm_cell_34/split:output:0*
T0*'
_output_shapes
:         dp
lstm_cell_34/Sigmoid_1Sigmoidlstm_cell_34/split:output:1*
T0*'
_output_shapes
:         dw
lstm_cell_34/mulMullstm_cell_34/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dh
lstm_cell_34/ReluRelulstm_cell_34/split:output:2*
T0*'
_output_shapes
:         dє
lstm_cell_34/mul_1Mullstm_cell_34/Sigmoid:y:0lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:         d{
lstm_cell_34/add_1AddV2lstm_cell_34/mul:z:0lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:         dp
lstm_cell_34/Sigmoid_2Sigmoidlstm_cell_34/split:output:3*
T0*'
_output_shapes
:         de
lstm_cell_34/Relu_1Relulstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:         dі
lstm_cell_34/mul_2Mullstm_cell_34/Sigmoid_2:y:0!lstm_cell_34/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_34_matmul_readvariableop_resource-lstm_cell_34_matmul_1_readvariableop_resource,lstm_cell_34_biasadd_readvariableop_resource*
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
while_body_379811*
condR
while_cond_379810*K
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
NoOpNoOp$^lstm_cell_34/BiasAdd/ReadVariableOp#^lstm_cell_34/MatMul/ReadVariableOp%^lstm_cell_34/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  	: : : 2J
#lstm_cell_34/BiasAdd/ReadVariableOp#lstm_cell_34/BiasAdd/ReadVariableOp2H
"lstm_cell_34/MatMul/ReadVariableOp"lstm_cell_34/MatMul/ReadVariableOp2L
$lstm_cell_34/MatMul_1/ReadVariableOp$lstm_cell_34/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  	
"
_user_specified_name
inputs_0
Ў9
Ё
C__inference_lstm_35_layer_call_and_return_conditional_losses_378055

inputs&
lstm_cell_35_377971:	dљ&
lstm_cell_35_377973:	dљ"
lstm_cell_35_377975:	љ
identityѕб$lstm_cell_35/StatefulPartitionedCallбwhileI
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
$lstm_cell_35/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_35_377971lstm_cell_35_377973lstm_cell_35_377975*
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
H__inference_lstm_cell_35_layer_call_and_return_conditional_losses_377970n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_35_377971lstm_cell_35_377973lstm_cell_35_377975*
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
while_body_377985*
condR
while_cond_377984*K
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
NoOpNoOp%^lstm_cell_35/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2L
$lstm_cell_35/StatefulPartitionedCall$lstm_cell_35/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs
Е
и
(__inference_lstm_34_layer_call_fn_379730
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
C__inference_lstm_34_layer_call_and_return_conditional_losses_377701|
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
«

§
.__inference_sequential_17_layer_call_fn_379103

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
I__inference_sequential_17_layer_call_and_return_conditional_losses_378876o
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
┐J
Џ
C__inference_lstm_34_layer_call_and_return_conditional_losses_380324

inputs>
+lstm_cell_34_matmul_readvariableop_resource:		љ@
-lstm_cell_34_matmul_1_readvariableop_resource:	dљ;
,lstm_cell_34_biasadd_readvariableop_resource:	љ
identityѕб#lstm_cell_34/BiasAdd/ReadVariableOpб"lstm_cell_34/MatMul/ReadVariableOpб$lstm_cell_34/MatMul_1/ReadVariableOpбwhileI
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
"lstm_cell_34/MatMul/ReadVariableOpReadVariableOp+lstm_cell_34_matmul_readvariableop_resource*
_output_shapes
:		љ*
dtype0ќ
lstm_cell_34/MatMulMatMulstrided_slice_2:output:0*lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЊ
$lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_34_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0љ
lstm_cell_34/MatMul_1MatMulzeros:output:0,lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љї
lstm_cell_34/addAddV2lstm_cell_34/MatMul:product:0lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:         љЇ
#lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_34_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0Ћ
lstm_cell_34/BiasAddBiasAddlstm_cell_34/add:z:0+lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ^
lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_cell_34/splitSplit%lstm_cell_34/split/split_dim:output:0lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitn
lstm_cell_34/SigmoidSigmoidlstm_cell_34/split:output:0*
T0*'
_output_shapes
:         dp
lstm_cell_34/Sigmoid_1Sigmoidlstm_cell_34/split:output:1*
T0*'
_output_shapes
:         dw
lstm_cell_34/mulMullstm_cell_34/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dh
lstm_cell_34/ReluRelulstm_cell_34/split:output:2*
T0*'
_output_shapes
:         dє
lstm_cell_34/mul_1Mullstm_cell_34/Sigmoid:y:0lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:         d{
lstm_cell_34/add_1AddV2lstm_cell_34/mul:z:0lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:         dp
lstm_cell_34/Sigmoid_2Sigmoidlstm_cell_34/split:output:3*
T0*'
_output_shapes
:         de
lstm_cell_34/Relu_1Relulstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:         dі
lstm_cell_34/mul_2Mullstm_cell_34/Sigmoid_2:y:0!lstm_cell_34/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_34_matmul_readvariableop_resource-lstm_cell_34_matmul_1_readvariableop_resource,lstm_cell_34_biasadd_readvariableop_resource*
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
while_body_380240*
condR
while_cond_380239*K
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
NoOpNoOp$^lstm_cell_34/BiasAdd/ReadVariableOp#^lstm_cell_34/MatMul/ReadVariableOp%^lstm_cell_34/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         	: : : 2J
#lstm_cell_34/BiasAdd/ReadVariableOp#lstm_cell_34/BiasAdd/ReadVariableOp2H
"lstm_cell_34/MatMul/ReadVariableOp"lstm_cell_34/MatMul/ReadVariableOp2L
$lstm_cell_34/MatMul_1/ReadVariableOp$lstm_cell_34/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
а

ш
D__inference_dense_35_layer_call_and_return_conditional_losses_378461

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
П
є
H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_381113

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
╩Џ
Њ
"__inference__traced_restore_381568
file_prefix2
 assignvariableop_dense_34_kernel:d.
 assignvariableop_1_dense_34_bias:4
"assignvariableop_2_dense_35_kernel:.
 assignvariableop_3_dense_35_bias:A
.assignvariableop_4_lstm_34_lstm_cell_34_kernel:		љK
8assignvariableop_5_lstm_34_lstm_cell_34_recurrent_kernel:	dљ;
,assignvariableop_6_lstm_34_lstm_cell_34_bias:	љA
.assignvariableop_7_lstm_35_lstm_cell_35_kernel:	dљK
8assignvariableop_8_lstm_35_lstm_cell_35_recurrent_kernel:	dљ;
,assignvariableop_9_lstm_35_lstm_cell_35_bias:	љ'
assignvariableop_10_iteration:	 +
!assignvariableop_11_learning_rate: I
6assignvariableop_12_adam_m_lstm_34_lstm_cell_34_kernel:		љI
6assignvariableop_13_adam_v_lstm_34_lstm_cell_34_kernel:		љS
@assignvariableop_14_adam_m_lstm_34_lstm_cell_34_recurrent_kernel:	dљS
@assignvariableop_15_adam_v_lstm_34_lstm_cell_34_recurrent_kernel:	dљC
4assignvariableop_16_adam_m_lstm_34_lstm_cell_34_bias:	љC
4assignvariableop_17_adam_v_lstm_34_lstm_cell_34_bias:	љI
6assignvariableop_18_adam_m_lstm_35_lstm_cell_35_kernel:	dљI
6assignvariableop_19_adam_v_lstm_35_lstm_cell_35_kernel:	dљS
@assignvariableop_20_adam_m_lstm_35_lstm_cell_35_recurrent_kernel:	dљS
@assignvariableop_21_adam_v_lstm_35_lstm_cell_35_recurrent_kernel:	dљC
4assignvariableop_22_adam_m_lstm_35_lstm_cell_35_bias:	љC
4assignvariableop_23_adam_v_lstm_35_lstm_cell_35_bias:	љ<
*assignvariableop_24_adam_m_dense_34_kernel:d<
*assignvariableop_25_adam_v_dense_34_kernel:d6
(assignvariableop_26_adam_m_dense_34_bias:6
(assignvariableop_27_adam_v_dense_34_bias:<
*assignvariableop_28_adam_m_dense_35_kernel:<
*assignvariableop_29_adam_v_dense_35_kernel:6
(assignvariableop_30_adam_m_dense_35_bias:6
(assignvariableop_31_adam_v_dense_35_bias:%
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
AssignVariableOpAssignVariableOp assignvariableop_dense_34_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_34_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_35_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_35_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:┼
AssignVariableOp_4AssignVariableOp.assignvariableop_4_lstm_34_lstm_cell_34_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_5AssignVariableOp8assignvariableop_5_lstm_34_lstm_cell_34_recurrent_kernelIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_6AssignVariableOp,assignvariableop_6_lstm_34_lstm_cell_34_biasIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:┼
AssignVariableOp_7AssignVariableOp.assignvariableop_7_lstm_35_lstm_cell_35_kernelIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_8AssignVariableOp8assignvariableop_8_lstm_35_lstm_cell_35_recurrent_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_9AssignVariableOp,assignvariableop_9_lstm_35_lstm_cell_35_biasIdentity_9:output:0"/device:CPU:0*&
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
AssignVariableOp_12AssignVariableOp6assignvariableop_12_adam_m_lstm_34_lstm_cell_34_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_13AssignVariableOp6assignvariableop_13_adam_v_lstm_34_lstm_cell_34_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:┘
AssignVariableOp_14AssignVariableOp@assignvariableop_14_adam_m_lstm_34_lstm_cell_34_recurrent_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:┘
AssignVariableOp_15AssignVariableOp@assignvariableop_15_adam_v_lstm_34_lstm_cell_34_recurrent_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:═
AssignVariableOp_16AssignVariableOp4assignvariableop_16_adam_m_lstm_34_lstm_cell_34_biasIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:═
AssignVariableOp_17AssignVariableOp4assignvariableop_17_adam_v_lstm_34_lstm_cell_34_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_18AssignVariableOp6assignvariableop_18_adam_m_lstm_35_lstm_cell_35_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_19AssignVariableOp6assignvariableop_19_adam_v_lstm_35_lstm_cell_35_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:┘
AssignVariableOp_20AssignVariableOp@assignvariableop_20_adam_m_lstm_35_lstm_cell_35_recurrent_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:┘
AssignVariableOp_21AssignVariableOp@assignvariableop_21_adam_v_lstm_35_lstm_cell_35_recurrent_kernelIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:═
AssignVariableOp_22AssignVariableOp4assignvariableop_22_adam_m_lstm_35_lstm_cell_35_biasIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:═
AssignVariableOp_23AssignVariableOp4assignvariableop_23_adam_v_lstm_35_lstm_cell_35_biasIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_m_dense_34_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_v_dense_34_kernelIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_m_dense_34_biasIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_27AssignVariableOp(assignvariableop_27_adam_v_dense_34_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_28AssignVariableOp*assignvariableop_28_adam_m_dense_35_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_v_dense_35_kernelIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_m_dense_35_biasIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_31AssignVariableOp(assignvariableop_31_adam_v_dense_35_biasIdentity_31:output:0"/device:CPU:0*&
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
Џ

ш
D__inference_dense_34_layer_call_and_return_conditional_losses_380995

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
Ј
и
(__inference_lstm_35_layer_call_fn_380335
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
C__inference_lstm_35_layer_call_and_return_conditional_losses_377908o
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
█C
л

lstm_35_while_body_379608,
(lstm_35_while_lstm_35_while_loop_counter2
.lstm_35_while_lstm_35_while_maximum_iterations
lstm_35_while_placeholder
lstm_35_while_placeholder_1
lstm_35_while_placeholder_2
lstm_35_while_placeholder_3+
'lstm_35_while_lstm_35_strided_slice_1_0g
clstm_35_while_tensorarrayv2read_tensorlistgetitem_lstm_35_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_35_while_lstm_cell_35_matmul_readvariableop_resource_0:	dљP
=lstm_35_while_lstm_cell_35_matmul_1_readvariableop_resource_0:	dљK
<lstm_35_while_lstm_cell_35_biasadd_readvariableop_resource_0:	љ
lstm_35_while_identity
lstm_35_while_identity_1
lstm_35_while_identity_2
lstm_35_while_identity_3
lstm_35_while_identity_4
lstm_35_while_identity_5)
%lstm_35_while_lstm_35_strided_slice_1e
alstm_35_while_tensorarrayv2read_tensorlistgetitem_lstm_35_tensorarrayunstack_tensorlistfromtensorL
9lstm_35_while_lstm_cell_35_matmul_readvariableop_resource:	dљN
;lstm_35_while_lstm_cell_35_matmul_1_readvariableop_resource:	dљI
:lstm_35_while_lstm_cell_35_biasadd_readvariableop_resource:	љѕб1lstm_35/while/lstm_cell_35/BiasAdd/ReadVariableOpб0lstm_35/while/lstm_cell_35/MatMul/ReadVariableOpб2lstm_35/while/lstm_cell_35/MatMul_1/ReadVariableOpљ
?lstm_35/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╬
1lstm_35/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_35_while_tensorarrayv2read_tensorlistgetitem_lstm_35_tensorarrayunstack_tensorlistfromtensor_0lstm_35_while_placeholderHlstm_35/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Г
0lstm_35/while/lstm_cell_35/MatMul/ReadVariableOpReadVariableOp;lstm_35_while_lstm_cell_35_matmul_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0м
!lstm_35/while/lstm_cell_35/MatMulMatMul8lstm_35/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_35/while/lstm_cell_35/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ▒
2lstm_35/while/lstm_cell_35/MatMul_1/ReadVariableOpReadVariableOp=lstm_35_while_lstm_cell_35_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0╣
#lstm_35/while/lstm_cell_35/MatMul_1MatMullstm_35_while_placeholder_2:lstm_35/while/lstm_cell_35/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љХ
lstm_35/while/lstm_cell_35/addAddV2+lstm_35/while/lstm_cell_35/MatMul:product:0-lstm_35/while/lstm_cell_35/MatMul_1:product:0*
T0*(
_output_shapes
:         љФ
1lstm_35/while/lstm_cell_35/BiasAdd/ReadVariableOpReadVariableOp<lstm_35_while_lstm_cell_35_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0┐
"lstm_35/while/lstm_cell_35/BiasAddBiasAdd"lstm_35/while/lstm_cell_35/add:z:09lstm_35/while/lstm_cell_35/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љl
*lstm_35/while/lstm_cell_35/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Є
 lstm_35/while/lstm_cell_35/splitSplit3lstm_35/while/lstm_cell_35/split/split_dim:output:0+lstm_35/while/lstm_cell_35/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitі
"lstm_35/while/lstm_cell_35/SigmoidSigmoid)lstm_35/while/lstm_cell_35/split:output:0*
T0*'
_output_shapes
:         dї
$lstm_35/while/lstm_cell_35/Sigmoid_1Sigmoid)lstm_35/while/lstm_cell_35/split:output:1*
T0*'
_output_shapes
:         dъ
lstm_35/while/lstm_cell_35/mulMul(lstm_35/while/lstm_cell_35/Sigmoid_1:y:0lstm_35_while_placeholder_3*
T0*'
_output_shapes
:         dё
lstm_35/while/lstm_cell_35/ReluRelu)lstm_35/while/lstm_cell_35/split:output:2*
T0*'
_output_shapes
:         d░
 lstm_35/while/lstm_cell_35/mul_1Mul&lstm_35/while/lstm_cell_35/Sigmoid:y:0-lstm_35/while/lstm_cell_35/Relu:activations:0*
T0*'
_output_shapes
:         dЦ
 lstm_35/while/lstm_cell_35/add_1AddV2"lstm_35/while/lstm_cell_35/mul:z:0$lstm_35/while/lstm_cell_35/mul_1:z:0*
T0*'
_output_shapes
:         dї
$lstm_35/while/lstm_cell_35/Sigmoid_2Sigmoid)lstm_35/while/lstm_cell_35/split:output:3*
T0*'
_output_shapes
:         dЂ
!lstm_35/while/lstm_cell_35/Relu_1Relu$lstm_35/while/lstm_cell_35/add_1:z:0*
T0*'
_output_shapes
:         d┤
 lstm_35/while/lstm_cell_35/mul_2Mul(lstm_35/while/lstm_cell_35/Sigmoid_2:y:0/lstm_35/while/lstm_cell_35/Relu_1:activations:0*
T0*'
_output_shapes
:         dz
8lstm_35/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Ї
2lstm_35/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_35_while_placeholder_1Alstm_35/while/TensorArrayV2Write/TensorListSetItem/index:output:0$lstm_35/while/lstm_cell_35/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмU
lstm_35/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_35/while/addAddV2lstm_35_while_placeholderlstm_35/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_35/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Є
lstm_35/while/add_1AddV2(lstm_35_while_lstm_35_while_loop_counterlstm_35/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_35/while/IdentityIdentitylstm_35/while/add_1:z:0^lstm_35/while/NoOp*
T0*
_output_shapes
: і
lstm_35/while/Identity_1Identity.lstm_35_while_lstm_35_while_maximum_iterations^lstm_35/while/NoOp*
T0*
_output_shapes
: q
lstm_35/while/Identity_2Identitylstm_35/while/add:z:0^lstm_35/while/NoOp*
T0*
_output_shapes
: ъ
lstm_35/while/Identity_3IdentityBlstm_35/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_35/while/NoOp*
T0*
_output_shapes
: Љ
lstm_35/while/Identity_4Identity$lstm_35/while/lstm_cell_35/mul_2:z:0^lstm_35/while/NoOp*
T0*'
_output_shapes
:         dЉ
lstm_35/while/Identity_5Identity$lstm_35/while/lstm_cell_35/add_1:z:0^lstm_35/while/NoOp*
T0*'
_output_shapes
:         d­
lstm_35/while/NoOpNoOp2^lstm_35/while/lstm_cell_35/BiasAdd/ReadVariableOp1^lstm_35/while/lstm_cell_35/MatMul/ReadVariableOp3^lstm_35/while/lstm_cell_35/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "=
lstm_35_while_identity_1!lstm_35/while/Identity_1:output:0"=
lstm_35_while_identity_2!lstm_35/while/Identity_2:output:0"=
lstm_35_while_identity_3!lstm_35/while/Identity_3:output:0"=
lstm_35_while_identity_4!lstm_35/while/Identity_4:output:0"=
lstm_35_while_identity_5!lstm_35/while/Identity_5:output:0"9
lstm_35_while_identitylstm_35/while/Identity:output:0"P
%lstm_35_while_lstm_35_strided_slice_1'lstm_35_while_lstm_35_strided_slice_1_0"z
:lstm_35_while_lstm_cell_35_biasadd_readvariableop_resource<lstm_35_while_lstm_cell_35_biasadd_readvariableop_resource_0"|
;lstm_35_while_lstm_cell_35_matmul_1_readvariableop_resource=lstm_35_while_lstm_cell_35_matmul_1_readvariableop_resource_0"x
9lstm_35_while_lstm_cell_35_matmul_readvariableop_resource;lstm_35_while_lstm_cell_35_matmul_readvariableop_resource_0"╚
alstm_35_while_tensorarrayv2read_tensorlistgetitem_lstm_35_tensorarrayunstack_tensorlistfromtensorclstm_35_while_tensorarrayv2read_tensorlistgetitem_lstm_35_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2f
1lstm_35/while/lstm_cell_35/BiasAdd/ReadVariableOp1lstm_35/while/lstm_cell_35/BiasAdd/ReadVariableOp2d
0lstm_35/while/lstm_cell_35/MatMul/ReadVariableOp0lstm_35/while/lstm_cell_35/MatMul/ReadVariableOp2h
2lstm_35/while/lstm_cell_35/MatMul_1/ReadVariableOp2lstm_35/while/lstm_cell_35/MatMul_1/ReadVariableOp:
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
_user_specified_name" lstm_35/while/maximum_iterations:R N

_output_shapes
: 
4
_user_specified_namelstm_35/while/loop_counter
Ь8
л
while_body_380240
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_34_matmul_readvariableop_resource_0:		љH
5while_lstm_cell_34_matmul_1_readvariableop_resource_0:	dљC
4while_lstm_cell_34_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_34_matmul_readvariableop_resource:		љF
3while_lstm_cell_34_matmul_1_readvariableop_resource:	dљA
2while_lstm_cell_34_biasadd_readvariableop_resource:	љѕб)while/lstm_cell_34/BiasAdd/ReadVariableOpб(while/lstm_cell_34/MatMul/ReadVariableOpб*while/lstm_cell_34/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         	*
element_dtype0Ю
(while/lstm_cell_34/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_34_matmul_readvariableop_resource_0*
_output_shapes
:		љ*
dtype0║
while/lstm_cell_34/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
*while/lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_34_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0А
while/lstm_cell_34/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љъ
while/lstm_cell_34/addAddV2#while/lstm_cell_34/MatMul:product:0%while/lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:         љЏ
)while/lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_34_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0Д
while/lstm_cell_34/BiasAddBiasAddwhile/lstm_cell_34/add:z:01while/lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љd
"while/lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_34/splitSplit+while/lstm_cell_34/split/split_dim:output:0#while/lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitz
while/lstm_cell_34/SigmoidSigmoid!while/lstm_cell_34/split:output:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_34/Sigmoid_1Sigmoid!while/lstm_cell_34/split:output:1*
T0*'
_output_shapes
:         dє
while/lstm_cell_34/mulMul while/lstm_cell_34/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dt
while/lstm_cell_34/ReluRelu!while/lstm_cell_34/split:output:2*
T0*'
_output_shapes
:         dў
while/lstm_cell_34/mul_1Mulwhile/lstm_cell_34/Sigmoid:y:0%while/lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:         dЇ
while/lstm_cell_34/add_1AddV2while/lstm_cell_34/mul:z:0while/lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_34/Sigmoid_2Sigmoid!while/lstm_cell_34/split:output:3*
T0*'
_output_shapes
:         dq
while/lstm_cell_34/Relu_1Reluwhile/lstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:         dю
while/lstm_cell_34/mul_2Mul while/lstm_cell_34/Sigmoid_2:y:0'while/lstm_cell_34/Relu_1:activations:0*
T0*'
_output_shapes
:         d┼
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_34/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_34/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dy
while/Identity_5Identitywhile/lstm_cell_34/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dл

while/NoOpNoOp*^while/lstm_cell_34/BiasAdd/ReadVariableOp)^while/lstm_cell_34/MatMul/ReadVariableOp+^while/lstm_cell_34/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"j
2while_lstm_cell_34_biasadd_readvariableop_resource4while_lstm_cell_34_biasadd_readvariableop_resource_0"l
3while_lstm_cell_34_matmul_1_readvariableop_resource5while_lstm_cell_34_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_34_matmul_readvariableop_resource3while_lstm_cell_34_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2V
)while/lstm_cell_34/BiasAdd/ReadVariableOp)while/lstm_cell_34/BiasAdd/ReadVariableOp2T
(while/lstm_cell_34/MatMul/ReadVariableOp(while/lstm_cell_34/MatMul/ReadVariableOp2X
*while/lstm_cell_34/MatMul_1/ReadVariableOp*while/lstm_cell_34/MatMul_1/ReadVariableOp:
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
while_cond_379953
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_379953___redundant_placeholder04
0while_while_cond_379953___redundant_placeholder14
0while_while_cond_379953___redundant_placeholder24
0while_while_cond_379953___redundant_placeholder3
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
А
G
+__inference_dropout_17_layer_call_fn_380958

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
F__inference_dropout_17_layer_call_and_return_conditional_losses_378777`
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
Ў9
Ё
C__inference_lstm_35_layer_call_and_return_conditional_losses_377908

inputs&
lstm_cell_35_377824:	dљ&
lstm_cell_35_377826:	dљ"
lstm_cell_35_377828:	љ
identityѕб$lstm_cell_35/StatefulPartitionedCallбwhileI
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
$lstm_cell_35/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_35_377824lstm_cell_35_377826lstm_cell_35_377828*
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
H__inference_lstm_cell_35_layer_call_and_return_conditional_losses_377823n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_35_377824lstm_cell_35_377826lstm_cell_35_377828*
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
while_body_377838*
condR
while_cond_377837*K
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
NoOpNoOp%^lstm_cell_35/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2L
$lstm_cell_35/StatefulPartitionedCall$lstm_cell_35/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs
ѕ
с
lstm_34_while_cond_379467,
(lstm_34_while_lstm_34_while_loop_counter2
.lstm_34_while_lstm_34_while_maximum_iterations
lstm_34_while_placeholder
lstm_34_while_placeholder_1
lstm_34_while_placeholder_2
lstm_34_while_placeholder_3.
*lstm_34_while_less_lstm_34_strided_slice_1D
@lstm_34_while_lstm_34_while_cond_379467___redundant_placeholder0D
@lstm_34_while_lstm_34_while_cond_379467___redundant_placeholder1D
@lstm_34_while_lstm_34_while_cond_379467___redundant_placeholder2D
@lstm_34_while_lstm_34_while_cond_379467___redundant_placeholder3
lstm_34_while_identity
ѓ
lstm_34/while/LessLesslstm_34_while_placeholder*lstm_34_while_less_lstm_34_strided_slice_1*
T0*
_output_shapes
: [
lstm_34/while/IdentityIdentitylstm_34/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_34_while_identitylstm_34/while/Identity:output:0*(
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
_user_specified_name" lstm_34/while/maximum_iterations:R N

_output_shapes
: 
4
_user_specified_namelstm_34/while/loop_counter
«8
Ё
C__inference_lstm_34_layer_call_and_return_conditional_losses_377556

inputs&
lstm_cell_34_377474:		љ&
lstm_cell_34_377476:	dљ"
lstm_cell_34_377478:	љ
identityѕб$lstm_cell_34/StatefulPartitionedCallбwhileI
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
$lstm_cell_34/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_34_377474lstm_cell_34_377476lstm_cell_34_377478*
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
H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_377473n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_34_377474lstm_cell_34_377476lstm_cell_34_377478*
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
while_body_377487*
condR
while_cond_377486*K
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
NoOpNoOp%^lstm_cell_34/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  	: : : 2L
$lstm_cell_34/StatefulPartitionedCall$lstm_cell_34/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  	
 
_user_specified_nameinputs
╬┐
Х	
I__inference_sequential_17_layer_call_and_return_conditional_losses_379409

inputsF
3lstm_34_lstm_cell_34_matmul_readvariableop_resource:		љH
5lstm_34_lstm_cell_34_matmul_1_readvariableop_resource:	dљC
4lstm_34_lstm_cell_34_biasadd_readvariableop_resource:	љF
3lstm_35_lstm_cell_35_matmul_readvariableop_resource:	dљH
5lstm_35_lstm_cell_35_matmul_1_readvariableop_resource:	dљC
4lstm_35_lstm_cell_35_biasadd_readvariableop_resource:	љ9
'dense_34_matmul_readvariableop_resource:d6
(dense_34_biasadd_readvariableop_resource:9
'dense_35_matmul_readvariableop_resource:6
(dense_35_biasadd_readvariableop_resource:
identityѕбdense_34/BiasAdd/ReadVariableOpбdense_34/MatMul/ReadVariableOpбdense_35/BiasAdd/ReadVariableOpбdense_35/MatMul/ReadVariableOpб+lstm_34/lstm_cell_34/BiasAdd/ReadVariableOpб*lstm_34/lstm_cell_34/MatMul/ReadVariableOpб,lstm_34/lstm_cell_34/MatMul_1/ReadVariableOpбlstm_34/whileб+lstm_35/lstm_cell_35/BiasAdd/ReadVariableOpб*lstm_35/lstm_cell_35/MatMul/ReadVariableOpб,lstm_35/lstm_cell_35/MatMul_1/ReadVariableOpбlstm_35/whileQ
lstm_34/ShapeShapeinputs*
T0*
_output_shapes
::ь¤e
lstm_34/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_34/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_34/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
lstm_34/strided_sliceStridedSlicelstm_34/Shape:output:0$lstm_34/strided_slice/stack:output:0&lstm_34/strided_slice/stack_1:output:0&lstm_34/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_34/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dІ
lstm_34/zeros/packedPacklstm_34/strided_slice:output:0lstm_34/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_34/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ё
lstm_34/zerosFilllstm_34/zeros/packed:output:0lstm_34/zeros/Const:output:0*
T0*'
_output_shapes
:         dZ
lstm_34/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dЈ
lstm_34/zeros_1/packedPacklstm_34/strided_slice:output:0!lstm_34/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_34/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    і
lstm_34/zeros_1Filllstm_34/zeros_1/packed:output:0lstm_34/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dk
lstm_34/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_34/transpose	Transposeinputslstm_34/transpose/perm:output:0*
T0*+
_output_shapes
:         	b
lstm_34/Shape_1Shapelstm_34/transpose:y:0*
T0*
_output_shapes
::ь¤g
lstm_34/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_34/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_34/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ѓ
lstm_34/strided_slice_1StridedSlicelstm_34/Shape_1:output:0&lstm_34/strided_slice_1/stack:output:0(lstm_34/strided_slice_1/stack_1:output:0(lstm_34/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_34/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ╠
lstm_34/TensorArrayV2TensorListReserve,lstm_34/TensorArrayV2/element_shape:output:0 lstm_34/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмј
=lstm_34/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   Э
/lstm_34/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_34/transpose:y:0Flstm_34/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмg
lstm_34/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_34/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_34/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Љ
lstm_34/strided_slice_2StridedSlicelstm_34/transpose:y:0&lstm_34/strided_slice_2/stack:output:0(lstm_34/strided_slice_2/stack_1:output:0(lstm_34/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         	*
shrink_axis_maskЪ
*lstm_34/lstm_cell_34/MatMul/ReadVariableOpReadVariableOp3lstm_34_lstm_cell_34_matmul_readvariableop_resource*
_output_shapes
:		љ*
dtype0«
lstm_34/lstm_cell_34/MatMulMatMul lstm_34/strided_slice_2:output:02lstm_34/lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
,lstm_34/lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp5lstm_34_lstm_cell_34_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0е
lstm_34/lstm_cell_34/MatMul_1MatMullstm_34/zeros:output:04lstm_34/lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љц
lstm_34/lstm_cell_34/addAddV2%lstm_34/lstm_cell_34/MatMul:product:0'lstm_34/lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
+lstm_34/lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp4lstm_34_lstm_cell_34_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0Г
lstm_34/lstm_cell_34/BiasAddBiasAddlstm_34/lstm_cell_34/add:z:03lstm_34/lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љf
$lstm_34/lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ш
lstm_34/lstm_cell_34/splitSplit-lstm_34/lstm_cell_34/split/split_dim:output:0%lstm_34/lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split~
lstm_34/lstm_cell_34/SigmoidSigmoid#lstm_34/lstm_cell_34/split:output:0*
T0*'
_output_shapes
:         dђ
lstm_34/lstm_cell_34/Sigmoid_1Sigmoid#lstm_34/lstm_cell_34/split:output:1*
T0*'
_output_shapes
:         dЈ
lstm_34/lstm_cell_34/mulMul"lstm_34/lstm_cell_34/Sigmoid_1:y:0lstm_34/zeros_1:output:0*
T0*'
_output_shapes
:         dx
lstm_34/lstm_cell_34/ReluRelu#lstm_34/lstm_cell_34/split:output:2*
T0*'
_output_shapes
:         dъ
lstm_34/lstm_cell_34/mul_1Mul lstm_34/lstm_cell_34/Sigmoid:y:0'lstm_34/lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:         dЊ
lstm_34/lstm_cell_34/add_1AddV2lstm_34/lstm_cell_34/mul:z:0lstm_34/lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:         dђ
lstm_34/lstm_cell_34/Sigmoid_2Sigmoid#lstm_34/lstm_cell_34/split:output:3*
T0*'
_output_shapes
:         du
lstm_34/lstm_cell_34/Relu_1Relulstm_34/lstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:         dб
lstm_34/lstm_cell_34/mul_2Mul"lstm_34/lstm_cell_34/Sigmoid_2:y:0)lstm_34/lstm_cell_34/Relu_1:activations:0*
T0*'
_output_shapes
:         dv
%lstm_34/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   л
lstm_34/TensorArrayV2_1TensorListReserve.lstm_34/TensorArrayV2_1/element_shape:output:0 lstm_34/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмN
lstm_34/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_34/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         \
lstm_34/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ы
lstm_34/whileWhile#lstm_34/while/loop_counter:output:0)lstm_34/while/maximum_iterations:output:0lstm_34/time:output:0 lstm_34/TensorArrayV2_1:handle:0lstm_34/zeros:output:0lstm_34/zeros_1:output:0 lstm_34/strided_slice_1:output:0?lstm_34/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_34_lstm_cell_34_matmul_readvariableop_resource5lstm_34_lstm_cell_34_matmul_1_readvariableop_resource4lstm_34_lstm_cell_34_biasadd_readvariableop_resource*
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
lstm_34_while_body_379162*%
condR
lstm_34_while_cond_379161*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ѕ
8lstm_34/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ┌
*lstm_34/TensorArrayV2Stack/TensorListStackTensorListStacklstm_34/while:output:3Alstm_34/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0p
lstm_34/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         i
lstm_34/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_34/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:»
lstm_34/strided_slice_3StridedSlice3lstm_34/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_34/strided_slice_3/stack:output:0(lstm_34/strided_slice_3/stack_1:output:0(lstm_34/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskm
lstm_34/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          «
lstm_34/transpose_1	Transpose3lstm_34/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_34/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dc
lstm_34/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
lstm_35/ShapeShapelstm_34/transpose_1:y:0*
T0*
_output_shapes
::ь¤e
lstm_35/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_35/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_35/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
lstm_35/strided_sliceStridedSlicelstm_35/Shape:output:0$lstm_35/strided_slice/stack:output:0&lstm_35/strided_slice/stack_1:output:0&lstm_35/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_35/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dІ
lstm_35/zeros/packedPacklstm_35/strided_slice:output:0lstm_35/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_35/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ё
lstm_35/zerosFilllstm_35/zeros/packed:output:0lstm_35/zeros/Const:output:0*
T0*'
_output_shapes
:         dZ
lstm_35/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dЈ
lstm_35/zeros_1/packedPacklstm_35/strided_slice:output:0!lstm_35/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_35/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    і
lstm_35/zeros_1Filllstm_35/zeros_1/packed:output:0lstm_35/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dk
lstm_35/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ј
lstm_35/transpose	Transposelstm_34/transpose_1:y:0lstm_35/transpose/perm:output:0*
T0*+
_output_shapes
:         db
lstm_35/Shape_1Shapelstm_35/transpose:y:0*
T0*
_output_shapes
::ь¤g
lstm_35/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_35/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_35/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ѓ
lstm_35/strided_slice_1StridedSlicelstm_35/Shape_1:output:0&lstm_35/strided_slice_1/stack:output:0(lstm_35/strided_slice_1/stack_1:output:0(lstm_35/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_35/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ╠
lstm_35/TensorArrayV2TensorListReserve,lstm_35/TensorArrayV2/element_shape:output:0 lstm_35/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмј
=lstm_35/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Э
/lstm_35/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_35/transpose:y:0Flstm_35/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмg
lstm_35/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_35/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_35/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Љ
lstm_35/strided_slice_2StridedSlicelstm_35/transpose:y:0&lstm_35/strided_slice_2/stack:output:0(lstm_35/strided_slice_2/stack_1:output:0(lstm_35/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskЪ
*lstm_35/lstm_cell_35/MatMul/ReadVariableOpReadVariableOp3lstm_35_lstm_cell_35_matmul_readvariableop_resource*
_output_shapes
:	dљ*
dtype0«
lstm_35/lstm_cell_35/MatMulMatMul lstm_35/strided_slice_2:output:02lstm_35/lstm_cell_35/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
,lstm_35/lstm_cell_35/MatMul_1/ReadVariableOpReadVariableOp5lstm_35_lstm_cell_35_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0е
lstm_35/lstm_cell_35/MatMul_1MatMullstm_35/zeros:output:04lstm_35/lstm_cell_35/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љц
lstm_35/lstm_cell_35/addAddV2%lstm_35/lstm_cell_35/MatMul:product:0'lstm_35/lstm_cell_35/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
+lstm_35/lstm_cell_35/BiasAdd/ReadVariableOpReadVariableOp4lstm_35_lstm_cell_35_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0Г
lstm_35/lstm_cell_35/BiasAddBiasAddlstm_35/lstm_cell_35/add:z:03lstm_35/lstm_cell_35/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љf
$lstm_35/lstm_cell_35/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ш
lstm_35/lstm_cell_35/splitSplit-lstm_35/lstm_cell_35/split/split_dim:output:0%lstm_35/lstm_cell_35/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split~
lstm_35/lstm_cell_35/SigmoidSigmoid#lstm_35/lstm_cell_35/split:output:0*
T0*'
_output_shapes
:         dђ
lstm_35/lstm_cell_35/Sigmoid_1Sigmoid#lstm_35/lstm_cell_35/split:output:1*
T0*'
_output_shapes
:         dЈ
lstm_35/lstm_cell_35/mulMul"lstm_35/lstm_cell_35/Sigmoid_1:y:0lstm_35/zeros_1:output:0*
T0*'
_output_shapes
:         dx
lstm_35/lstm_cell_35/ReluRelu#lstm_35/lstm_cell_35/split:output:2*
T0*'
_output_shapes
:         dъ
lstm_35/lstm_cell_35/mul_1Mul lstm_35/lstm_cell_35/Sigmoid:y:0'lstm_35/lstm_cell_35/Relu:activations:0*
T0*'
_output_shapes
:         dЊ
lstm_35/lstm_cell_35/add_1AddV2lstm_35/lstm_cell_35/mul:z:0lstm_35/lstm_cell_35/mul_1:z:0*
T0*'
_output_shapes
:         dђ
lstm_35/lstm_cell_35/Sigmoid_2Sigmoid#lstm_35/lstm_cell_35/split:output:3*
T0*'
_output_shapes
:         du
lstm_35/lstm_cell_35/Relu_1Relulstm_35/lstm_cell_35/add_1:z:0*
T0*'
_output_shapes
:         dб
lstm_35/lstm_cell_35/mul_2Mul"lstm_35/lstm_cell_35/Sigmoid_2:y:0)lstm_35/lstm_cell_35/Relu_1:activations:0*
T0*'
_output_shapes
:         dv
%lstm_35/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   f
$lstm_35/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_35/TensorArrayV2_1TensorListReserve.lstm_35/TensorArrayV2_1/element_shape:output:0-lstm_35/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмN
lstm_35/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_35/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         \
lstm_35/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ы
lstm_35/whileWhile#lstm_35/while/loop_counter:output:0)lstm_35/while/maximum_iterations:output:0lstm_35/time:output:0 lstm_35/TensorArrayV2_1:handle:0lstm_35/zeros:output:0lstm_35/zeros_1:output:0 lstm_35/strided_slice_1:output:0?lstm_35/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_35_lstm_cell_35_matmul_readvariableop_resource5lstm_35_lstm_cell_35_matmul_1_readvariableop_resource4lstm_35_lstm_cell_35_biasadd_readvariableop_resource*
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
lstm_35_while_body_379302*%
condR
lstm_35_while_cond_379301*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ѕ
8lstm_35/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Ь
*lstm_35/TensorArrayV2Stack/TensorListStackTensorListStacklstm_35/while:output:3Alstm_35/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0*
num_elementsp
lstm_35/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         i
lstm_35/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_35/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:»
lstm_35/strided_slice_3StridedSlice3lstm_35/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_35/strided_slice_3/stack:output:0(lstm_35/strided_slice_3/stack_1:output:0(lstm_35/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskm
lstm_35/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          «
lstm_35/transpose_1	Transpose3lstm_35/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_35/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dc
lstm_35/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ]
dropout_17/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @ћ
dropout_17/dropout/MulMul lstm_35/strided_slice_3:output:0!dropout_17/dropout/Const:output:0*
T0*'
_output_shapes
:         dv
dropout_17/dropout/ShapeShape lstm_35/strided_slice_3:output:0*
T0*
_output_shapes
::ь¤б
/dropout_17/dropout/random_uniform/RandomUniformRandomUniform!dropout_17/dropout/Shape:output:0*
T0*'
_output_shapes
:         d*
dtype0f
!dropout_17/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?К
dropout_17/dropout/GreaterEqualGreaterEqual8dropout_17/dropout/random_uniform/RandomUniform:output:0*dropout_17/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         d_
dropout_17/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ┐
dropout_17/dropout/SelectV2SelectV2#dropout_17/dropout/GreaterEqual:z:0dropout_17/dropout/Mul:z:0#dropout_17/dropout/Const_1:output:0*
T0*'
_output_shapes
:         dє
dense_34/MatMul/ReadVariableOpReadVariableOp'dense_34_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0Ў
dense_34/MatMulMatMul$dropout_17/dropout/SelectV2:output:0&dense_34/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
dense_34/BiasAdd/ReadVariableOpReadVariableOp(dense_34_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
dense_34/BiasAddBiasAdddense_34/MatMul:product:0'dense_34/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         b
dense_34/ReluReludense_34/BiasAdd:output:0*
T0*'
_output_shapes
:         є
dense_35/MatMul/ReadVariableOpReadVariableOp'dense_35_matmul_readvariableop_resource*
_output_shapes

:*
dtype0љ
dense_35/MatMulMatMuldense_34/Relu:activations:0&dense_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
dense_35/BiasAdd/ReadVariableOpReadVariableOp(dense_35_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
dense_35/BiasAddBiasAdddense_35/MatMul:product:0'dense_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
dense_35/SoftmaxSoftmaxdense_35/BiasAdd:output:0*
T0*'
_output_shapes
:         i
IdentityIdentitydense_35/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         ђ
NoOpNoOp ^dense_34/BiasAdd/ReadVariableOp^dense_34/MatMul/ReadVariableOp ^dense_35/BiasAdd/ReadVariableOp^dense_35/MatMul/ReadVariableOp,^lstm_34/lstm_cell_34/BiasAdd/ReadVariableOp+^lstm_34/lstm_cell_34/MatMul/ReadVariableOp-^lstm_34/lstm_cell_34/MatMul_1/ReadVariableOp^lstm_34/while,^lstm_35/lstm_cell_35/BiasAdd/ReadVariableOp+^lstm_35/lstm_cell_35/MatMul/ReadVariableOp-^lstm_35/lstm_cell_35/MatMul_1/ReadVariableOp^lstm_35/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         	: : : : : : : : : : 2B
dense_34/BiasAdd/ReadVariableOpdense_34/BiasAdd/ReadVariableOp2@
dense_34/MatMul/ReadVariableOpdense_34/MatMul/ReadVariableOp2B
dense_35/BiasAdd/ReadVariableOpdense_35/BiasAdd/ReadVariableOp2@
dense_35/MatMul/ReadVariableOpdense_35/MatMul/ReadVariableOp2Z
+lstm_34/lstm_cell_34/BiasAdd/ReadVariableOp+lstm_34/lstm_cell_34/BiasAdd/ReadVariableOp2X
*lstm_34/lstm_cell_34/MatMul/ReadVariableOp*lstm_34/lstm_cell_34/MatMul/ReadVariableOp2\
,lstm_34/lstm_cell_34/MatMul_1/ReadVariableOp,lstm_34/lstm_cell_34/MatMul_1/ReadVariableOp2
lstm_34/whilelstm_34/while2Z
+lstm_35/lstm_cell_35/BiasAdd/ReadVariableOp+lstm_35/lstm_cell_35/BiasAdd/ReadVariableOp2X
*lstm_35/lstm_cell_35/MatMul/ReadVariableOp*lstm_35/lstm_cell_35/MatMul/ReadVariableOp2\
,lstm_35/lstm_cell_35/MatMul_1/ReadVariableOp,lstm_35/lstm_cell_35/MatMul_1/ReadVariableOp2
lstm_35/whilelstm_35/while:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
Ќ	
├
while_cond_380427
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_380427___redundant_placeholder04
0while_while_cond_380427___redundant_placeholder14
0while_while_cond_380427___redundant_placeholder24
0while_while_cond_380427___redundant_placeholder3
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
УK
Ю
C__inference_lstm_35_layer_call_and_return_conditional_losses_380513
inputs_0>
+lstm_cell_35_matmul_readvariableop_resource:	dљ@
-lstm_cell_35_matmul_1_readvariableop_resource:	dљ;
,lstm_cell_35_biasadd_readvariableop_resource:	љ
identityѕб#lstm_cell_35/BiasAdd/ReadVariableOpб"lstm_cell_35/MatMul/ReadVariableOpб$lstm_cell_35/MatMul_1/ReadVariableOpбwhileK
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
"lstm_cell_35/MatMul/ReadVariableOpReadVariableOp+lstm_cell_35_matmul_readvariableop_resource*
_output_shapes
:	dљ*
dtype0ќ
lstm_cell_35/MatMulMatMulstrided_slice_2:output:0*lstm_cell_35/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЊ
$lstm_cell_35/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_35_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0љ
lstm_cell_35/MatMul_1MatMulzeros:output:0,lstm_cell_35/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љї
lstm_cell_35/addAddV2lstm_cell_35/MatMul:product:0lstm_cell_35/MatMul_1:product:0*
T0*(
_output_shapes
:         љЇ
#lstm_cell_35/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_35_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0Ћ
lstm_cell_35/BiasAddBiasAddlstm_cell_35/add:z:0+lstm_cell_35/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ^
lstm_cell_35/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_cell_35/splitSplit%lstm_cell_35/split/split_dim:output:0lstm_cell_35/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitn
lstm_cell_35/SigmoidSigmoidlstm_cell_35/split:output:0*
T0*'
_output_shapes
:         dp
lstm_cell_35/Sigmoid_1Sigmoidlstm_cell_35/split:output:1*
T0*'
_output_shapes
:         dw
lstm_cell_35/mulMullstm_cell_35/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dh
lstm_cell_35/ReluRelulstm_cell_35/split:output:2*
T0*'
_output_shapes
:         dє
lstm_cell_35/mul_1Mullstm_cell_35/Sigmoid:y:0lstm_cell_35/Relu:activations:0*
T0*'
_output_shapes
:         d{
lstm_cell_35/add_1AddV2lstm_cell_35/mul:z:0lstm_cell_35/mul_1:z:0*
T0*'
_output_shapes
:         dp
lstm_cell_35/Sigmoid_2Sigmoidlstm_cell_35/split:output:3*
T0*'
_output_shapes
:         de
lstm_cell_35/Relu_1Relulstm_cell_35/add_1:z:0*
T0*'
_output_shapes
:         dі
lstm_cell_35/mul_2Mullstm_cell_35/Sigmoid_2:y:0!lstm_cell_35/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_35_matmul_readvariableop_resource-lstm_cell_35_matmul_1_readvariableop_resource,lstm_cell_35_biasadd_readvariableop_resource*
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
while_body_380428*
condR
while_cond_380427*K
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
NoOpNoOp$^lstm_cell_35/BiasAdd/ReadVariableOp#^lstm_cell_35/MatMul/ReadVariableOp%^lstm_cell_35/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2J
#lstm_cell_35/BiasAdd/ReadVariableOp#lstm_cell_35/BiasAdd/ReadVariableOp2H
"lstm_cell_35/MatMul/ReadVariableOp"lstm_cell_35/MatMul/ReadVariableOp2L
$lstm_cell_35/MatMul_1/ReadVariableOp$lstm_cell_35/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs_0
і:
л
while_body_380863
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_35_matmul_readvariableop_resource_0:	dљH
5while_lstm_cell_35_matmul_1_readvariableop_resource_0:	dљC
4while_lstm_cell_35_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_35_matmul_readvariableop_resource:	dљF
3while_lstm_cell_35_matmul_1_readvariableop_resource:	dљA
2while_lstm_cell_35_biasadd_readvariableop_resource:	љѕб)while/lstm_cell_35/BiasAdd/ReadVariableOpб(while/lstm_cell_35/MatMul/ReadVariableOpб*while/lstm_cell_35/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ю
(while/lstm_cell_35/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_35_matmul_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0║
while/lstm_cell_35/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_35/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
*while/lstm_cell_35/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_35_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0А
while/lstm_cell_35/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_35/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љъ
while/lstm_cell_35/addAddV2#while/lstm_cell_35/MatMul:product:0%while/lstm_cell_35/MatMul_1:product:0*
T0*(
_output_shapes
:         љЏ
)while/lstm_cell_35/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_35_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0Д
while/lstm_cell_35/BiasAddBiasAddwhile/lstm_cell_35/add:z:01while/lstm_cell_35/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љd
"while/lstm_cell_35/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_35/splitSplit+while/lstm_cell_35/split/split_dim:output:0#while/lstm_cell_35/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitz
while/lstm_cell_35/SigmoidSigmoid!while/lstm_cell_35/split:output:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_35/Sigmoid_1Sigmoid!while/lstm_cell_35/split:output:1*
T0*'
_output_shapes
:         dє
while/lstm_cell_35/mulMul while/lstm_cell_35/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dt
while/lstm_cell_35/ReluRelu!while/lstm_cell_35/split:output:2*
T0*'
_output_shapes
:         dў
while/lstm_cell_35/mul_1Mulwhile/lstm_cell_35/Sigmoid:y:0%while/lstm_cell_35/Relu:activations:0*
T0*'
_output_shapes
:         dЇ
while/lstm_cell_35/add_1AddV2while/lstm_cell_35/mul:z:0while/lstm_cell_35/mul_1:z:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_35/Sigmoid_2Sigmoid!while/lstm_cell_35/split:output:3*
T0*'
_output_shapes
:         dq
while/lstm_cell_35/Relu_1Reluwhile/lstm_cell_35/add_1:z:0*
T0*'
_output_shapes
:         dю
while/lstm_cell_35/mul_2Mul while/lstm_cell_35/Sigmoid_2:y:0'while/lstm_cell_35/Relu_1:activations:0*
T0*'
_output_shapes
:         dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ь
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_35/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_35/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dy
while/Identity_5Identitywhile/lstm_cell_35/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dл

while/NoOpNoOp*^while/lstm_cell_35/BiasAdd/ReadVariableOp)^while/lstm_cell_35/MatMul/ReadVariableOp+^while/lstm_cell_35/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"j
2while_lstm_cell_35_biasadd_readvariableop_resource4while_lstm_cell_35_biasadd_readvariableop_resource_0"l
3while_lstm_cell_35_matmul_1_readvariableop_resource5while_lstm_cell_35_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_35_matmul_readvariableop_resource3while_lstm_cell_35_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2V
)while/lstm_cell_35/BiasAdd/ReadVariableOp)while/lstm_cell_35/BiasAdd/ReadVariableOp2T
(while/lstm_cell_35/MatMul/ReadVariableOp(while/lstm_cell_35/MatMul/ReadVariableOp2X
*while/lstm_cell_35/MatMul_1/ReadVariableOp*while/lstm_cell_35/MatMul_1/ReadVariableOp:
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
lstm_35_while_cond_379607,
(lstm_35_while_lstm_35_while_loop_counter2
.lstm_35_while_lstm_35_while_maximum_iterations
lstm_35_while_placeholder
lstm_35_while_placeholder_1
lstm_35_while_placeholder_2
lstm_35_while_placeholder_3.
*lstm_35_while_less_lstm_35_strided_slice_1D
@lstm_35_while_lstm_35_while_cond_379607___redundant_placeholder0D
@lstm_35_while_lstm_35_while_cond_379607___redundant_placeholder1D
@lstm_35_while_lstm_35_while_cond_379607___redundant_placeholder2D
@lstm_35_while_lstm_35_while_cond_379607___redundant_placeholder3
lstm_35_while_identity
ѓ
lstm_35/while/LessLesslstm_35_while_placeholder*lstm_35_while_less_lstm_35_strided_slice_1*
T0*
_output_shapes
: [
lstm_35/while/IdentityIdentitylstm_35/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_35_while_identitylstm_35/while/Identity:output:0*(
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
_user_specified_name" lstm_35/while/maximum_iterations:R N

_output_shapes
: 
4
_user_specified_namelstm_35/while/loop_counter
э
х
(__inference_lstm_35_layer_call_fn_380368

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
C__inference_lstm_35_layer_call_and_return_conditional_losses_378765o
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
while_cond_380717
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_380717___redundant_placeholder04
0while_while_cond_380717___redundant_placeholder14
0while_while_cond_380717___redundant_placeholder24
0while_while_cond_380717___redundant_placeholder3
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
Џ

ш
D__inference_dense_34_layer_call_and_return_conditional_losses_378444

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
С$
с
while_body_377838
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_35_377862_0:	dљ.
while_lstm_cell_35_377864_0:	dљ*
while_lstm_cell_35_377866_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_35_377862:	dљ,
while_lstm_cell_35_377864:	dљ(
while_lstm_cell_35_377866:	љѕб*while/lstm_cell_35/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0│
*while/lstm_cell_35/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_35_377862_0while_lstm_cell_35_377864_0while_lstm_cell_35_377866_0*
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
H__inference_lstm_cell_35_layer_call_and_return_conditional_losses_377823r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ё
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:03while/lstm_cell_35/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_35/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         dљ
while/Identity_5Identity3while/lstm_cell_35/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         dy

while/NoOpNoOp+^while/lstm_cell_35/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"8
while_lstm_cell_35_377862while_lstm_cell_35_377862_0"8
while_lstm_cell_35_377864while_lstm_cell_35_377864_0"8
while_lstm_cell_35_377866while_lstm_cell_35_377866_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_35/StatefulPartitionedCall*while/lstm_cell_35/StatefulPartitionedCall:
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
кT
њ
'sequential_17_lstm_35_while_body_377309H
Dsequential_17_lstm_35_while_sequential_17_lstm_35_while_loop_counterN
Jsequential_17_lstm_35_while_sequential_17_lstm_35_while_maximum_iterations+
'sequential_17_lstm_35_while_placeholder-
)sequential_17_lstm_35_while_placeholder_1-
)sequential_17_lstm_35_while_placeholder_2-
)sequential_17_lstm_35_while_placeholder_3G
Csequential_17_lstm_35_while_sequential_17_lstm_35_strided_slice_1_0Ѓ
sequential_17_lstm_35_while_tensorarrayv2read_tensorlistgetitem_sequential_17_lstm_35_tensorarrayunstack_tensorlistfromtensor_0\
Isequential_17_lstm_35_while_lstm_cell_35_matmul_readvariableop_resource_0:	dљ^
Ksequential_17_lstm_35_while_lstm_cell_35_matmul_1_readvariableop_resource_0:	dљY
Jsequential_17_lstm_35_while_lstm_cell_35_biasadd_readvariableop_resource_0:	љ(
$sequential_17_lstm_35_while_identity*
&sequential_17_lstm_35_while_identity_1*
&sequential_17_lstm_35_while_identity_2*
&sequential_17_lstm_35_while_identity_3*
&sequential_17_lstm_35_while_identity_4*
&sequential_17_lstm_35_while_identity_5E
Asequential_17_lstm_35_while_sequential_17_lstm_35_strided_slice_1Ђ
}sequential_17_lstm_35_while_tensorarrayv2read_tensorlistgetitem_sequential_17_lstm_35_tensorarrayunstack_tensorlistfromtensorZ
Gsequential_17_lstm_35_while_lstm_cell_35_matmul_readvariableop_resource:	dљ\
Isequential_17_lstm_35_while_lstm_cell_35_matmul_1_readvariableop_resource:	dљW
Hsequential_17_lstm_35_while_lstm_cell_35_biasadd_readvariableop_resource:	љѕб?sequential_17/lstm_35/while/lstm_cell_35/BiasAdd/ReadVariableOpб>sequential_17/lstm_35/while/lstm_cell_35/MatMul/ReadVariableOpб@sequential_17/lstm_35/while/lstm_cell_35/MatMul_1/ReadVariableOpъ
Msequential_17/lstm_35/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ћ
?sequential_17/lstm_35/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_17_lstm_35_while_tensorarrayv2read_tensorlistgetitem_sequential_17_lstm_35_tensorarrayunstack_tensorlistfromtensor_0'sequential_17_lstm_35_while_placeholderVsequential_17/lstm_35/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0╔
>sequential_17/lstm_35/while/lstm_cell_35/MatMul/ReadVariableOpReadVariableOpIsequential_17_lstm_35_while_lstm_cell_35_matmul_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Ч
/sequential_17/lstm_35/while/lstm_cell_35/MatMulMatMulFsequential_17/lstm_35/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_17/lstm_35/while/lstm_cell_35/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ═
@sequential_17/lstm_35/while/lstm_cell_35/MatMul_1/ReadVariableOpReadVariableOpKsequential_17_lstm_35_while_lstm_cell_35_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0с
1sequential_17/lstm_35/while/lstm_cell_35/MatMul_1MatMul)sequential_17_lstm_35_while_placeholder_2Hsequential_17/lstm_35/while/lstm_cell_35/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЯ
,sequential_17/lstm_35/while/lstm_cell_35/addAddV29sequential_17/lstm_35/while/lstm_cell_35/MatMul:product:0;sequential_17/lstm_35/while/lstm_cell_35/MatMul_1:product:0*
T0*(
_output_shapes
:         љК
?sequential_17/lstm_35/while/lstm_cell_35/BiasAdd/ReadVariableOpReadVariableOpJsequential_17_lstm_35_while_lstm_cell_35_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ж
0sequential_17/lstm_35/while/lstm_cell_35/BiasAddBiasAdd0sequential_17/lstm_35/while/lstm_cell_35/add:z:0Gsequential_17/lstm_35/while/lstm_cell_35/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љz
8sequential_17/lstm_35/while/lstm_cell_35/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▒
.sequential_17/lstm_35/while/lstm_cell_35/splitSplitAsequential_17/lstm_35/while/lstm_cell_35/split/split_dim:output:09sequential_17/lstm_35/while/lstm_cell_35/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitд
0sequential_17/lstm_35/while/lstm_cell_35/SigmoidSigmoid7sequential_17/lstm_35/while/lstm_cell_35/split:output:0*
T0*'
_output_shapes
:         dе
2sequential_17/lstm_35/while/lstm_cell_35/Sigmoid_1Sigmoid7sequential_17/lstm_35/while/lstm_cell_35/split:output:1*
T0*'
_output_shapes
:         d╚
,sequential_17/lstm_35/while/lstm_cell_35/mulMul6sequential_17/lstm_35/while/lstm_cell_35/Sigmoid_1:y:0)sequential_17_lstm_35_while_placeholder_3*
T0*'
_output_shapes
:         dа
-sequential_17/lstm_35/while/lstm_cell_35/ReluRelu7sequential_17/lstm_35/while/lstm_cell_35/split:output:2*
T0*'
_output_shapes
:         d┌
.sequential_17/lstm_35/while/lstm_cell_35/mul_1Mul4sequential_17/lstm_35/while/lstm_cell_35/Sigmoid:y:0;sequential_17/lstm_35/while/lstm_cell_35/Relu:activations:0*
T0*'
_output_shapes
:         d¤
.sequential_17/lstm_35/while/lstm_cell_35/add_1AddV20sequential_17/lstm_35/while/lstm_cell_35/mul:z:02sequential_17/lstm_35/while/lstm_cell_35/mul_1:z:0*
T0*'
_output_shapes
:         dе
2sequential_17/lstm_35/while/lstm_cell_35/Sigmoid_2Sigmoid7sequential_17/lstm_35/while/lstm_cell_35/split:output:3*
T0*'
_output_shapes
:         dЮ
/sequential_17/lstm_35/while/lstm_cell_35/Relu_1Relu2sequential_17/lstm_35/while/lstm_cell_35/add_1:z:0*
T0*'
_output_shapes
:         dя
.sequential_17/lstm_35/while/lstm_cell_35/mul_2Mul6sequential_17/lstm_35/while/lstm_cell_35/Sigmoid_2:y:0=sequential_17/lstm_35/while/lstm_cell_35/Relu_1:activations:0*
T0*'
_output_shapes
:         dѕ
Fsequential_17/lstm_35/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ┼
@sequential_17/lstm_35/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_17_lstm_35_while_placeholder_1Osequential_17/lstm_35/while/TensorArrayV2Write/TensorListSetItem/index:output:02sequential_17/lstm_35/while/lstm_cell_35/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмc
!sequential_17/lstm_35/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ъ
sequential_17/lstm_35/while/addAddV2'sequential_17_lstm_35_while_placeholder*sequential_17/lstm_35/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_17/lstm_35/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :┐
!sequential_17/lstm_35/while/add_1AddV2Dsequential_17_lstm_35_while_sequential_17_lstm_35_while_loop_counter,sequential_17/lstm_35/while/add_1/y:output:0*
T0*
_output_shapes
: Џ
$sequential_17/lstm_35/while/IdentityIdentity%sequential_17/lstm_35/while/add_1:z:0!^sequential_17/lstm_35/while/NoOp*
T0*
_output_shapes
: ┬
&sequential_17/lstm_35/while/Identity_1IdentityJsequential_17_lstm_35_while_sequential_17_lstm_35_while_maximum_iterations!^sequential_17/lstm_35/while/NoOp*
T0*
_output_shapes
: Џ
&sequential_17/lstm_35/while/Identity_2Identity#sequential_17/lstm_35/while/add:z:0!^sequential_17/lstm_35/while/NoOp*
T0*
_output_shapes
: ╚
&sequential_17/lstm_35/while/Identity_3IdentityPsequential_17/lstm_35/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_17/lstm_35/while/NoOp*
T0*
_output_shapes
: ╗
&sequential_17/lstm_35/while/Identity_4Identity2sequential_17/lstm_35/while/lstm_cell_35/mul_2:z:0!^sequential_17/lstm_35/while/NoOp*
T0*'
_output_shapes
:         d╗
&sequential_17/lstm_35/while/Identity_5Identity2sequential_17/lstm_35/while/lstm_cell_35/add_1:z:0!^sequential_17/lstm_35/while/NoOp*
T0*'
_output_shapes
:         dе
 sequential_17/lstm_35/while/NoOpNoOp@^sequential_17/lstm_35/while/lstm_cell_35/BiasAdd/ReadVariableOp?^sequential_17/lstm_35/while/lstm_cell_35/MatMul/ReadVariableOpA^sequential_17/lstm_35/while/lstm_cell_35/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_17_lstm_35_while_identity_1/sequential_17/lstm_35/while/Identity_1:output:0"Y
&sequential_17_lstm_35_while_identity_2/sequential_17/lstm_35/while/Identity_2:output:0"Y
&sequential_17_lstm_35_while_identity_3/sequential_17/lstm_35/while/Identity_3:output:0"Y
&sequential_17_lstm_35_while_identity_4/sequential_17/lstm_35/while/Identity_4:output:0"Y
&sequential_17_lstm_35_while_identity_5/sequential_17/lstm_35/while/Identity_5:output:0"U
$sequential_17_lstm_35_while_identity-sequential_17/lstm_35/while/Identity:output:0"ќ
Hsequential_17_lstm_35_while_lstm_cell_35_biasadd_readvariableop_resourceJsequential_17_lstm_35_while_lstm_cell_35_biasadd_readvariableop_resource_0"ў
Isequential_17_lstm_35_while_lstm_cell_35_matmul_1_readvariableop_resourceKsequential_17_lstm_35_while_lstm_cell_35_matmul_1_readvariableop_resource_0"ћ
Gsequential_17_lstm_35_while_lstm_cell_35_matmul_readvariableop_resourceIsequential_17_lstm_35_while_lstm_cell_35_matmul_readvariableop_resource_0"ѕ
Asequential_17_lstm_35_while_sequential_17_lstm_35_strided_slice_1Csequential_17_lstm_35_while_sequential_17_lstm_35_strided_slice_1_0"ђ
}sequential_17_lstm_35_while_tensorarrayv2read_tensorlistgetitem_sequential_17_lstm_35_tensorarrayunstack_tensorlistfromtensorsequential_17_lstm_35_while_tensorarrayv2read_tensorlistgetitem_sequential_17_lstm_35_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2ѓ
?sequential_17/lstm_35/while/lstm_cell_35/BiasAdd/ReadVariableOp?sequential_17/lstm_35/while/lstm_cell_35/BiasAdd/ReadVariableOp2ђ
>sequential_17/lstm_35/while/lstm_cell_35/MatMul/ReadVariableOp>sequential_17/lstm_35/while/lstm_cell_35/MatMul/ReadVariableOp2ё
@sequential_17/lstm_35/while/lstm_cell_35/MatMul_1/ReadVariableOp@sequential_17/lstm_35/while/lstm_cell_35/MatMul_1/ReadVariableOp:
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
_user_specified_name0.sequential_17/lstm_35/while/maximum_iterations:` \

_output_shapes
: 
B
_user_specified_name*(sequential_17/lstm_35/while/loop_counter
Ќ	
├
while_cond_377984
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_377984___redundant_placeholder04
0while_while_cond_377984___redundant_placeholder14
0while_while_cond_377984___redundant_placeholder24
0while_while_cond_377984___redundant_placeholder3
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
while_body_378529
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_34_matmul_readvariableop_resource_0:		љH
5while_lstm_cell_34_matmul_1_readvariableop_resource_0:	dљC
4while_lstm_cell_34_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_34_matmul_readvariableop_resource:		љF
3while_lstm_cell_34_matmul_1_readvariableop_resource:	dљA
2while_lstm_cell_34_biasadd_readvariableop_resource:	љѕб)while/lstm_cell_34/BiasAdd/ReadVariableOpб(while/lstm_cell_34/MatMul/ReadVariableOpб*while/lstm_cell_34/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         	*
element_dtype0Ю
(while/lstm_cell_34/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_34_matmul_readvariableop_resource_0*
_output_shapes
:		љ*
dtype0║
while/lstm_cell_34/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
*while/lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_34_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0А
while/lstm_cell_34/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љъ
while/lstm_cell_34/addAddV2#while/lstm_cell_34/MatMul:product:0%while/lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:         љЏ
)while/lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_34_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0Д
while/lstm_cell_34/BiasAddBiasAddwhile/lstm_cell_34/add:z:01while/lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љd
"while/lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_34/splitSplit+while/lstm_cell_34/split/split_dim:output:0#while/lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitz
while/lstm_cell_34/SigmoidSigmoid!while/lstm_cell_34/split:output:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_34/Sigmoid_1Sigmoid!while/lstm_cell_34/split:output:1*
T0*'
_output_shapes
:         dє
while/lstm_cell_34/mulMul while/lstm_cell_34/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dt
while/lstm_cell_34/ReluRelu!while/lstm_cell_34/split:output:2*
T0*'
_output_shapes
:         dў
while/lstm_cell_34/mul_1Mulwhile/lstm_cell_34/Sigmoid:y:0%while/lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:         dЇ
while/lstm_cell_34/add_1AddV2while/lstm_cell_34/mul:z:0while/lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_34/Sigmoid_2Sigmoid!while/lstm_cell_34/split:output:3*
T0*'
_output_shapes
:         dq
while/lstm_cell_34/Relu_1Reluwhile/lstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:         dю
while/lstm_cell_34/mul_2Mul while/lstm_cell_34/Sigmoid_2:y:0'while/lstm_cell_34/Relu_1:activations:0*
T0*'
_output_shapes
:         d┼
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_34/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_34/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dy
while/Identity_5Identitywhile/lstm_cell_34/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dл

while/NoOpNoOp*^while/lstm_cell_34/BiasAdd/ReadVariableOp)^while/lstm_cell_34/MatMul/ReadVariableOp+^while/lstm_cell_34/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"j
2while_lstm_cell_34_biasadd_readvariableop_resource4while_lstm_cell_34_biasadd_readvariableop_resource_0"l
3while_lstm_cell_34_matmul_1_readvariableop_resource5while_lstm_cell_34_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_34_matmul_readvariableop_resource3while_lstm_cell_34_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2V
)while/lstm_cell_34/BiasAdd/ReadVariableOp)while/lstm_cell_34/BiasAdd/ReadVariableOp2T
(while/lstm_cell_34/MatMul/ReadVariableOp(while/lstm_cell_34/MatMul/ReadVariableOp2X
*while/lstm_cell_34/MatMul_1/ReadVariableOp*while/lstm_cell_34/MatMul_1/ReadVariableOp:
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
while_body_378175
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_34_matmul_readvariableop_resource_0:		љH
5while_lstm_cell_34_matmul_1_readvariableop_resource_0:	dљC
4while_lstm_cell_34_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_34_matmul_readvariableop_resource:		љF
3while_lstm_cell_34_matmul_1_readvariableop_resource:	dљA
2while_lstm_cell_34_biasadd_readvariableop_resource:	љѕб)while/lstm_cell_34/BiasAdd/ReadVariableOpб(while/lstm_cell_34/MatMul/ReadVariableOpб*while/lstm_cell_34/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         	*
element_dtype0Ю
(while/lstm_cell_34/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_34_matmul_readvariableop_resource_0*
_output_shapes
:		љ*
dtype0║
while/lstm_cell_34/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
*while/lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_34_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0А
while/lstm_cell_34/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љъ
while/lstm_cell_34/addAddV2#while/lstm_cell_34/MatMul:product:0%while/lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:         љЏ
)while/lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_34_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0Д
while/lstm_cell_34/BiasAddBiasAddwhile/lstm_cell_34/add:z:01while/lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љd
"while/lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_34/splitSplit+while/lstm_cell_34/split/split_dim:output:0#while/lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitz
while/lstm_cell_34/SigmoidSigmoid!while/lstm_cell_34/split:output:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_34/Sigmoid_1Sigmoid!while/lstm_cell_34/split:output:1*
T0*'
_output_shapes
:         dє
while/lstm_cell_34/mulMul while/lstm_cell_34/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dt
while/lstm_cell_34/ReluRelu!while/lstm_cell_34/split:output:2*
T0*'
_output_shapes
:         dў
while/lstm_cell_34/mul_1Mulwhile/lstm_cell_34/Sigmoid:y:0%while/lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:         dЇ
while/lstm_cell_34/add_1AddV2while/lstm_cell_34/mul:z:0while/lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_34/Sigmoid_2Sigmoid!while/lstm_cell_34/split:output:3*
T0*'
_output_shapes
:         dq
while/lstm_cell_34/Relu_1Reluwhile/lstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:         dю
while/lstm_cell_34/mul_2Mul while/lstm_cell_34/Sigmoid_2:y:0'while/lstm_cell_34/Relu_1:activations:0*
T0*'
_output_shapes
:         d┼
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_34/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_34/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dy
while/Identity_5Identitywhile/lstm_cell_34/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dл

while/NoOpNoOp*^while/lstm_cell_34/BiasAdd/ReadVariableOp)^while/lstm_cell_34/MatMul/ReadVariableOp+^while/lstm_cell_34/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"j
2while_lstm_cell_34_biasadd_readvariableop_resource4while_lstm_cell_34_biasadd_readvariableop_resource_0"l
3while_lstm_cell_34_matmul_1_readvariableop_resource5while_lstm_cell_34_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_34_matmul_readvariableop_resource3while_lstm_cell_34_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2V
)while/lstm_cell_34/BiasAdd/ReadVariableOp)while/lstm_cell_34/BiasAdd/ReadVariableOp2T
(while/lstm_cell_34/MatMul/ReadVariableOp(while/lstm_cell_34/MatMul/ReadVariableOp2X
*while/lstm_cell_34/MatMul_1/ReadVariableOp*while/lstm_cell_34/MatMul_1/ReadVariableOp:
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
в
Ш
-__inference_lstm_cell_34_layer_call_fn_381049

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
H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_377618o
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
├

ё
.__inference_sequential_17_layer_call_fn_378845
lstm_34_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_34_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
I__inference_sequential_17_layer_call_and_return_conditional_losses_378822o
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
_user_specified_namelstm_34_input
а

ш
D__inference_dense_35_layer_call_and_return_conditional_losses_381015

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
├

ё
.__inference_sequential_17_layer_call_fn_378899
lstm_34_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_34_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
I__inference_sequential_17_layer_call_and_return_conditional_losses_378876o
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
_user_specified_namelstm_34_input
«8
Ё
C__inference_lstm_34_layer_call_and_return_conditional_losses_377701

inputs&
lstm_cell_34_377619:		љ&
lstm_cell_34_377621:	dљ"
lstm_cell_34_377623:	љ
identityѕб$lstm_cell_34/StatefulPartitionedCallбwhileI
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
$lstm_cell_34/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_34_377619lstm_cell_34_377621lstm_cell_34_377623*
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
H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_377618n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_34_377619lstm_cell_34_377621lstm_cell_34_377623*
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
while_body_377632*
condR
while_cond_377631*K
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
NoOpNoOp%^lstm_cell_34/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  	: : : 2L
$lstm_cell_34/StatefulPartitionedCall$lstm_cell_34/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  	
 
_user_specified_nameinputs
і:
л
while_body_380428
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_35_matmul_readvariableop_resource_0:	dљH
5while_lstm_cell_35_matmul_1_readvariableop_resource_0:	dљC
4while_lstm_cell_35_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_35_matmul_readvariableop_resource:	dљF
3while_lstm_cell_35_matmul_1_readvariableop_resource:	dљA
2while_lstm_cell_35_biasadd_readvariableop_resource:	љѕб)while/lstm_cell_35/BiasAdd/ReadVariableOpб(while/lstm_cell_35/MatMul/ReadVariableOpб*while/lstm_cell_35/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ю
(while/lstm_cell_35/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_35_matmul_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0║
while/lstm_cell_35/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_35/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
*while/lstm_cell_35/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_35_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0А
while/lstm_cell_35/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_35/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љъ
while/lstm_cell_35/addAddV2#while/lstm_cell_35/MatMul:product:0%while/lstm_cell_35/MatMul_1:product:0*
T0*(
_output_shapes
:         љЏ
)while/lstm_cell_35/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_35_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0Д
while/lstm_cell_35/BiasAddBiasAddwhile/lstm_cell_35/add:z:01while/lstm_cell_35/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љd
"while/lstm_cell_35/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_35/splitSplit+while/lstm_cell_35/split/split_dim:output:0#while/lstm_cell_35/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitz
while/lstm_cell_35/SigmoidSigmoid!while/lstm_cell_35/split:output:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_35/Sigmoid_1Sigmoid!while/lstm_cell_35/split:output:1*
T0*'
_output_shapes
:         dє
while/lstm_cell_35/mulMul while/lstm_cell_35/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dt
while/lstm_cell_35/ReluRelu!while/lstm_cell_35/split:output:2*
T0*'
_output_shapes
:         dў
while/lstm_cell_35/mul_1Mulwhile/lstm_cell_35/Sigmoid:y:0%while/lstm_cell_35/Relu:activations:0*
T0*'
_output_shapes
:         dЇ
while/lstm_cell_35/add_1AddV2while/lstm_cell_35/mul:z:0while/lstm_cell_35/mul_1:z:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_35/Sigmoid_2Sigmoid!while/lstm_cell_35/split:output:3*
T0*'
_output_shapes
:         dq
while/lstm_cell_35/Relu_1Reluwhile/lstm_cell_35/add_1:z:0*
T0*'
_output_shapes
:         dю
while/lstm_cell_35/mul_2Mul while/lstm_cell_35/Sigmoid_2:y:0'while/lstm_cell_35/Relu_1:activations:0*
T0*'
_output_shapes
:         dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ь
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_35/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_35/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dy
while/Identity_5Identitywhile/lstm_cell_35/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dл

while/NoOpNoOp*^while/lstm_cell_35/BiasAdd/ReadVariableOp)^while/lstm_cell_35/MatMul/ReadVariableOp+^while/lstm_cell_35/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"j
2while_lstm_cell_35_biasadd_readvariableop_resource4while_lstm_cell_35_biasadd_readvariableop_resource_0"l
3while_lstm_cell_35_matmul_1_readvariableop_resource5while_lstm_cell_35_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_35_matmul_readvariableop_resource3while_lstm_cell_35_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2V
)while/lstm_cell_35/BiasAdd/ReadVariableOp)while/lstm_cell_35/BiasAdd/ReadVariableOp2T
(while/lstm_cell_35/MatMul/ReadVariableOp(while/lstm_cell_35/MatMul/ReadVariableOp2X
*while/lstm_cell_35/MatMul_1/ReadVariableOp*while/lstm_cell_35/MatMul_1/ReadVariableOp:
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
к
К
I__inference_sequential_17_layer_call_and_return_conditional_losses_378790
lstm_34_input!
lstm_34_378614:		љ!
lstm_34_378616:	dљ
lstm_34_378618:	љ!
lstm_35_378766:	dљ!
lstm_35_378768:	dљ
lstm_35_378770:	љ!
dense_34_378779:d
dense_34_378781:!
dense_35_378784:
dense_35_378786:
identityѕб dense_34/StatefulPartitionedCallб dense_35/StatefulPartitionedCallбlstm_34/StatefulPartitionedCallбlstm_35/StatefulPartitionedCallЅ
lstm_34/StatefulPartitionedCallStatefulPartitionedCalllstm_34_inputlstm_34_378614lstm_34_378616lstm_34_378618*
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
C__inference_lstm_34_layer_call_and_return_conditional_losses_378613а
lstm_35/StatefulPartitionedCallStatefulPartitionedCall(lstm_34/StatefulPartitionedCall:output:0lstm_35_378766lstm_35_378768lstm_35_378770*
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
C__inference_lstm_35_layer_call_and_return_conditional_losses_378765я
dropout_17/PartitionedCallPartitionedCall(lstm_35/StatefulPartitionedCall:output:0*
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
F__inference_dropout_17_layer_call_and_return_conditional_losses_378777Ї
 dense_34/StatefulPartitionedCallStatefulPartitionedCall#dropout_17/PartitionedCall:output:0dense_34_378779dense_34_378781*
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
D__inference_dense_34_layer_call_and_return_conditional_losses_378444Њ
 dense_35/StatefulPartitionedCallStatefulPartitionedCall)dense_34/StatefulPartitionedCall:output:0dense_35_378784dense_35_378786*
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
D__inference_dense_35_layer_call_and_return_conditional_losses_378461x
IdentityIdentity)dense_35/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         л
NoOpNoOp!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall ^lstm_34/StatefulPartitionedCall ^lstm_35/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         	: : : : : : : : : : 2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall2B
lstm_34/StatefulPartitionedCalllstm_34/StatefulPartitionedCall2B
lstm_35/StatefulPartitionedCalllstm_35/StatefulPartitionedCall:Z V
+
_output_shapes
:         	
'
_user_specified_namelstm_34_input
█C
л

lstm_35_while_body_379302,
(lstm_35_while_lstm_35_while_loop_counter2
.lstm_35_while_lstm_35_while_maximum_iterations
lstm_35_while_placeholder
lstm_35_while_placeholder_1
lstm_35_while_placeholder_2
lstm_35_while_placeholder_3+
'lstm_35_while_lstm_35_strided_slice_1_0g
clstm_35_while_tensorarrayv2read_tensorlistgetitem_lstm_35_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_35_while_lstm_cell_35_matmul_readvariableop_resource_0:	dљP
=lstm_35_while_lstm_cell_35_matmul_1_readvariableop_resource_0:	dљK
<lstm_35_while_lstm_cell_35_biasadd_readvariableop_resource_0:	љ
lstm_35_while_identity
lstm_35_while_identity_1
lstm_35_while_identity_2
lstm_35_while_identity_3
lstm_35_while_identity_4
lstm_35_while_identity_5)
%lstm_35_while_lstm_35_strided_slice_1e
alstm_35_while_tensorarrayv2read_tensorlistgetitem_lstm_35_tensorarrayunstack_tensorlistfromtensorL
9lstm_35_while_lstm_cell_35_matmul_readvariableop_resource:	dљN
;lstm_35_while_lstm_cell_35_matmul_1_readvariableop_resource:	dљI
:lstm_35_while_lstm_cell_35_biasadd_readvariableop_resource:	љѕб1lstm_35/while/lstm_cell_35/BiasAdd/ReadVariableOpб0lstm_35/while/lstm_cell_35/MatMul/ReadVariableOpб2lstm_35/while/lstm_cell_35/MatMul_1/ReadVariableOpљ
?lstm_35/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╬
1lstm_35/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_35_while_tensorarrayv2read_tensorlistgetitem_lstm_35_tensorarrayunstack_tensorlistfromtensor_0lstm_35_while_placeholderHlstm_35/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Г
0lstm_35/while/lstm_cell_35/MatMul/ReadVariableOpReadVariableOp;lstm_35_while_lstm_cell_35_matmul_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0м
!lstm_35/while/lstm_cell_35/MatMulMatMul8lstm_35/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_35/while/lstm_cell_35/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ▒
2lstm_35/while/lstm_cell_35/MatMul_1/ReadVariableOpReadVariableOp=lstm_35_while_lstm_cell_35_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0╣
#lstm_35/while/lstm_cell_35/MatMul_1MatMullstm_35_while_placeholder_2:lstm_35/while/lstm_cell_35/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љХ
lstm_35/while/lstm_cell_35/addAddV2+lstm_35/while/lstm_cell_35/MatMul:product:0-lstm_35/while/lstm_cell_35/MatMul_1:product:0*
T0*(
_output_shapes
:         љФ
1lstm_35/while/lstm_cell_35/BiasAdd/ReadVariableOpReadVariableOp<lstm_35_while_lstm_cell_35_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0┐
"lstm_35/while/lstm_cell_35/BiasAddBiasAdd"lstm_35/while/lstm_cell_35/add:z:09lstm_35/while/lstm_cell_35/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љl
*lstm_35/while/lstm_cell_35/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Є
 lstm_35/while/lstm_cell_35/splitSplit3lstm_35/while/lstm_cell_35/split/split_dim:output:0+lstm_35/while/lstm_cell_35/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitі
"lstm_35/while/lstm_cell_35/SigmoidSigmoid)lstm_35/while/lstm_cell_35/split:output:0*
T0*'
_output_shapes
:         dї
$lstm_35/while/lstm_cell_35/Sigmoid_1Sigmoid)lstm_35/while/lstm_cell_35/split:output:1*
T0*'
_output_shapes
:         dъ
lstm_35/while/lstm_cell_35/mulMul(lstm_35/while/lstm_cell_35/Sigmoid_1:y:0lstm_35_while_placeholder_3*
T0*'
_output_shapes
:         dё
lstm_35/while/lstm_cell_35/ReluRelu)lstm_35/while/lstm_cell_35/split:output:2*
T0*'
_output_shapes
:         d░
 lstm_35/while/lstm_cell_35/mul_1Mul&lstm_35/while/lstm_cell_35/Sigmoid:y:0-lstm_35/while/lstm_cell_35/Relu:activations:0*
T0*'
_output_shapes
:         dЦ
 lstm_35/while/lstm_cell_35/add_1AddV2"lstm_35/while/lstm_cell_35/mul:z:0$lstm_35/while/lstm_cell_35/mul_1:z:0*
T0*'
_output_shapes
:         dї
$lstm_35/while/lstm_cell_35/Sigmoid_2Sigmoid)lstm_35/while/lstm_cell_35/split:output:3*
T0*'
_output_shapes
:         dЂ
!lstm_35/while/lstm_cell_35/Relu_1Relu$lstm_35/while/lstm_cell_35/add_1:z:0*
T0*'
_output_shapes
:         d┤
 lstm_35/while/lstm_cell_35/mul_2Mul(lstm_35/while/lstm_cell_35/Sigmoid_2:y:0/lstm_35/while/lstm_cell_35/Relu_1:activations:0*
T0*'
_output_shapes
:         dz
8lstm_35/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Ї
2lstm_35/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_35_while_placeholder_1Alstm_35/while/TensorArrayV2Write/TensorListSetItem/index:output:0$lstm_35/while/lstm_cell_35/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмU
lstm_35/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_35/while/addAddV2lstm_35_while_placeholderlstm_35/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_35/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Є
lstm_35/while/add_1AddV2(lstm_35_while_lstm_35_while_loop_counterlstm_35/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_35/while/IdentityIdentitylstm_35/while/add_1:z:0^lstm_35/while/NoOp*
T0*
_output_shapes
: і
lstm_35/while/Identity_1Identity.lstm_35_while_lstm_35_while_maximum_iterations^lstm_35/while/NoOp*
T0*
_output_shapes
: q
lstm_35/while/Identity_2Identitylstm_35/while/add:z:0^lstm_35/while/NoOp*
T0*
_output_shapes
: ъ
lstm_35/while/Identity_3IdentityBlstm_35/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_35/while/NoOp*
T0*
_output_shapes
: Љ
lstm_35/while/Identity_4Identity$lstm_35/while/lstm_cell_35/mul_2:z:0^lstm_35/while/NoOp*
T0*'
_output_shapes
:         dЉ
lstm_35/while/Identity_5Identity$lstm_35/while/lstm_cell_35/add_1:z:0^lstm_35/while/NoOp*
T0*'
_output_shapes
:         d­
lstm_35/while/NoOpNoOp2^lstm_35/while/lstm_cell_35/BiasAdd/ReadVariableOp1^lstm_35/while/lstm_cell_35/MatMul/ReadVariableOp3^lstm_35/while/lstm_cell_35/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "=
lstm_35_while_identity_1!lstm_35/while/Identity_1:output:0"=
lstm_35_while_identity_2!lstm_35/while/Identity_2:output:0"=
lstm_35_while_identity_3!lstm_35/while/Identity_3:output:0"=
lstm_35_while_identity_4!lstm_35/while/Identity_4:output:0"=
lstm_35_while_identity_5!lstm_35/while/Identity_5:output:0"9
lstm_35_while_identitylstm_35/while/Identity:output:0"P
%lstm_35_while_lstm_35_strided_slice_1'lstm_35_while_lstm_35_strided_slice_1_0"z
:lstm_35_while_lstm_cell_35_biasadd_readvariableop_resource<lstm_35_while_lstm_cell_35_biasadd_readvariableop_resource_0"|
;lstm_35_while_lstm_cell_35_matmul_1_readvariableop_resource=lstm_35_while_lstm_cell_35_matmul_1_readvariableop_resource_0"x
9lstm_35_while_lstm_cell_35_matmul_readvariableop_resource;lstm_35_while_lstm_cell_35_matmul_readvariableop_resource_0"╚
alstm_35_while_tensorarrayv2read_tensorlistgetitem_lstm_35_tensorarrayunstack_tensorlistfromtensorclstm_35_while_tensorarrayv2read_tensorlistgetitem_lstm_35_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2f
1lstm_35/while/lstm_cell_35/BiasAdd/ReadVariableOp1lstm_35/while/lstm_cell_35/BiasAdd/ReadVariableOp2d
0lstm_35/while/lstm_cell_35/MatMul/ReadVariableOp0lstm_35/while/lstm_cell_35/MatMul/ReadVariableOp2h
2lstm_35/while/lstm_cell_35/MatMul_1/ReadVariableOp2lstm_35/while/lstm_cell_35/MatMul_1/ReadVariableOp:
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
_user_specified_name" lstm_35/while/maximum_iterations:R N

_output_shapes
: 
4
_user_specified_namelstm_35/while/loop_counter
иB
л

lstm_34_while_body_379162,
(lstm_34_while_lstm_34_while_loop_counter2
.lstm_34_while_lstm_34_while_maximum_iterations
lstm_34_while_placeholder
lstm_34_while_placeholder_1
lstm_34_while_placeholder_2
lstm_34_while_placeholder_3+
'lstm_34_while_lstm_34_strided_slice_1_0g
clstm_34_while_tensorarrayv2read_tensorlistgetitem_lstm_34_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_34_while_lstm_cell_34_matmul_readvariableop_resource_0:		љP
=lstm_34_while_lstm_cell_34_matmul_1_readvariableop_resource_0:	dљK
<lstm_34_while_lstm_cell_34_biasadd_readvariableop_resource_0:	љ
lstm_34_while_identity
lstm_34_while_identity_1
lstm_34_while_identity_2
lstm_34_while_identity_3
lstm_34_while_identity_4
lstm_34_while_identity_5)
%lstm_34_while_lstm_34_strided_slice_1e
alstm_34_while_tensorarrayv2read_tensorlistgetitem_lstm_34_tensorarrayunstack_tensorlistfromtensorL
9lstm_34_while_lstm_cell_34_matmul_readvariableop_resource:		љN
;lstm_34_while_lstm_cell_34_matmul_1_readvariableop_resource:	dљI
:lstm_34_while_lstm_cell_34_biasadd_readvariableop_resource:	љѕб1lstm_34/while/lstm_cell_34/BiasAdd/ReadVariableOpб0lstm_34/while/lstm_cell_34/MatMul/ReadVariableOpб2lstm_34/while/lstm_cell_34/MatMul_1/ReadVariableOpљ
?lstm_34/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   ╬
1lstm_34/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_34_while_tensorarrayv2read_tensorlistgetitem_lstm_34_tensorarrayunstack_tensorlistfromtensor_0lstm_34_while_placeholderHlstm_34/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         	*
element_dtype0Г
0lstm_34/while/lstm_cell_34/MatMul/ReadVariableOpReadVariableOp;lstm_34_while_lstm_cell_34_matmul_readvariableop_resource_0*
_output_shapes
:		љ*
dtype0м
!lstm_34/while/lstm_cell_34/MatMulMatMul8lstm_34/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_34/while/lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ▒
2lstm_34/while/lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp=lstm_34_while_lstm_cell_34_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0╣
#lstm_34/while/lstm_cell_34/MatMul_1MatMullstm_34_while_placeholder_2:lstm_34/while/lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љХ
lstm_34/while/lstm_cell_34/addAddV2+lstm_34/while/lstm_cell_34/MatMul:product:0-lstm_34/while/lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:         љФ
1lstm_34/while/lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp<lstm_34_while_lstm_cell_34_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0┐
"lstm_34/while/lstm_cell_34/BiasAddBiasAdd"lstm_34/while/lstm_cell_34/add:z:09lstm_34/while/lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љl
*lstm_34/while/lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Є
 lstm_34/while/lstm_cell_34/splitSplit3lstm_34/while/lstm_cell_34/split/split_dim:output:0+lstm_34/while/lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitі
"lstm_34/while/lstm_cell_34/SigmoidSigmoid)lstm_34/while/lstm_cell_34/split:output:0*
T0*'
_output_shapes
:         dї
$lstm_34/while/lstm_cell_34/Sigmoid_1Sigmoid)lstm_34/while/lstm_cell_34/split:output:1*
T0*'
_output_shapes
:         dъ
lstm_34/while/lstm_cell_34/mulMul(lstm_34/while/lstm_cell_34/Sigmoid_1:y:0lstm_34_while_placeholder_3*
T0*'
_output_shapes
:         dё
lstm_34/while/lstm_cell_34/ReluRelu)lstm_34/while/lstm_cell_34/split:output:2*
T0*'
_output_shapes
:         d░
 lstm_34/while/lstm_cell_34/mul_1Mul&lstm_34/while/lstm_cell_34/Sigmoid:y:0-lstm_34/while/lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:         dЦ
 lstm_34/while/lstm_cell_34/add_1AddV2"lstm_34/while/lstm_cell_34/mul:z:0$lstm_34/while/lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:         dї
$lstm_34/while/lstm_cell_34/Sigmoid_2Sigmoid)lstm_34/while/lstm_cell_34/split:output:3*
T0*'
_output_shapes
:         dЂ
!lstm_34/while/lstm_cell_34/Relu_1Relu$lstm_34/while/lstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:         d┤
 lstm_34/while/lstm_cell_34/mul_2Mul(lstm_34/while/lstm_cell_34/Sigmoid_2:y:0/lstm_34/while/lstm_cell_34/Relu_1:activations:0*
T0*'
_output_shapes
:         dт
2lstm_34/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_34_while_placeholder_1lstm_34_while_placeholder$lstm_34/while/lstm_cell_34/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмU
lstm_34/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_34/while/addAddV2lstm_34_while_placeholderlstm_34/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_34/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Є
lstm_34/while/add_1AddV2(lstm_34_while_lstm_34_while_loop_counterlstm_34/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_34/while/IdentityIdentitylstm_34/while/add_1:z:0^lstm_34/while/NoOp*
T0*
_output_shapes
: і
lstm_34/while/Identity_1Identity.lstm_34_while_lstm_34_while_maximum_iterations^lstm_34/while/NoOp*
T0*
_output_shapes
: q
lstm_34/while/Identity_2Identitylstm_34/while/add:z:0^lstm_34/while/NoOp*
T0*
_output_shapes
: ъ
lstm_34/while/Identity_3IdentityBlstm_34/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_34/while/NoOp*
T0*
_output_shapes
: Љ
lstm_34/while/Identity_4Identity$lstm_34/while/lstm_cell_34/mul_2:z:0^lstm_34/while/NoOp*
T0*'
_output_shapes
:         dЉ
lstm_34/while/Identity_5Identity$lstm_34/while/lstm_cell_34/add_1:z:0^lstm_34/while/NoOp*
T0*'
_output_shapes
:         d­
lstm_34/while/NoOpNoOp2^lstm_34/while/lstm_cell_34/BiasAdd/ReadVariableOp1^lstm_34/while/lstm_cell_34/MatMul/ReadVariableOp3^lstm_34/while/lstm_cell_34/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "=
lstm_34_while_identity_1!lstm_34/while/Identity_1:output:0"=
lstm_34_while_identity_2!lstm_34/while/Identity_2:output:0"=
lstm_34_while_identity_3!lstm_34/while/Identity_3:output:0"=
lstm_34_while_identity_4!lstm_34/while/Identity_4:output:0"=
lstm_34_while_identity_5!lstm_34/while/Identity_5:output:0"9
lstm_34_while_identitylstm_34/while/Identity:output:0"P
%lstm_34_while_lstm_34_strided_slice_1'lstm_34_while_lstm_34_strided_slice_1_0"z
:lstm_34_while_lstm_cell_34_biasadd_readvariableop_resource<lstm_34_while_lstm_cell_34_biasadd_readvariableop_resource_0"|
;lstm_34_while_lstm_cell_34_matmul_1_readvariableop_resource=lstm_34_while_lstm_cell_34_matmul_1_readvariableop_resource_0"x
9lstm_34_while_lstm_cell_34_matmul_readvariableop_resource;lstm_34_while_lstm_cell_34_matmul_readvariableop_resource_0"╚
alstm_34_while_tensorarrayv2read_tensorlistgetitem_lstm_34_tensorarrayunstack_tensorlistfromtensorclstm_34_while_tensorarrayv2read_tensorlistgetitem_lstm_34_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2f
1lstm_34/while/lstm_cell_34/BiasAdd/ReadVariableOp1lstm_34/while/lstm_cell_34/BiasAdd/ReadVariableOp2d
0lstm_34/while/lstm_cell_34/MatMul/ReadVariableOp0lstm_34/while/lstm_cell_34/MatMul/ReadVariableOp2h
2lstm_34/while/lstm_cell_34/MatMul_1/ReadVariableOp2lstm_34/while/lstm_cell_34/MatMul_1/ReadVariableOp:
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
_user_specified_name" lstm_34/while/maximum_iterations:R N

_output_shapes
: 
4
_user_specified_namelstm_34/while/loop_counter
┐J
Џ
C__inference_lstm_34_layer_call_and_return_conditional_losses_378613

inputs>
+lstm_cell_34_matmul_readvariableop_resource:		љ@
-lstm_cell_34_matmul_1_readvariableop_resource:	dљ;
,lstm_cell_34_biasadd_readvariableop_resource:	љ
identityѕб#lstm_cell_34/BiasAdd/ReadVariableOpб"lstm_cell_34/MatMul/ReadVariableOpб$lstm_cell_34/MatMul_1/ReadVariableOpбwhileI
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
"lstm_cell_34/MatMul/ReadVariableOpReadVariableOp+lstm_cell_34_matmul_readvariableop_resource*
_output_shapes
:		љ*
dtype0ќ
lstm_cell_34/MatMulMatMulstrided_slice_2:output:0*lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЊ
$lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_34_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0љ
lstm_cell_34/MatMul_1MatMulzeros:output:0,lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љї
lstm_cell_34/addAddV2lstm_cell_34/MatMul:product:0lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:         љЇ
#lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_34_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0Ћ
lstm_cell_34/BiasAddBiasAddlstm_cell_34/add:z:0+lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ^
lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_cell_34/splitSplit%lstm_cell_34/split/split_dim:output:0lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitn
lstm_cell_34/SigmoidSigmoidlstm_cell_34/split:output:0*
T0*'
_output_shapes
:         dp
lstm_cell_34/Sigmoid_1Sigmoidlstm_cell_34/split:output:1*
T0*'
_output_shapes
:         dw
lstm_cell_34/mulMullstm_cell_34/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dh
lstm_cell_34/ReluRelulstm_cell_34/split:output:2*
T0*'
_output_shapes
:         dє
lstm_cell_34/mul_1Mullstm_cell_34/Sigmoid:y:0lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:         d{
lstm_cell_34/add_1AddV2lstm_cell_34/mul:z:0lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:         dp
lstm_cell_34/Sigmoid_2Sigmoidlstm_cell_34/split:output:3*
T0*'
_output_shapes
:         de
lstm_cell_34/Relu_1Relulstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:         dі
lstm_cell_34/mul_2Mullstm_cell_34/Sigmoid_2:y:0!lstm_cell_34/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_34_matmul_readvariableop_resource-lstm_cell_34_matmul_1_readvariableop_resource,lstm_cell_34_biasadd_readvariableop_resource*
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
while_body_378529*
condR
while_cond_378528*K
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
NoOpNoOp$^lstm_cell_34/BiasAdd/ReadVariableOp#^lstm_cell_34/MatMul/ReadVariableOp%^lstm_cell_34/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         	: : : 2J
#lstm_cell_34/BiasAdd/ReadVariableOp#lstm_cell_34/BiasAdd/ReadVariableOp2H
"lstm_cell_34/MatMul/ReadVariableOp"lstm_cell_34/MatMul/ReadVariableOp2L
$lstm_cell_34/MatMul_1/ReadVariableOp$lstm_cell_34/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
Ќ	
├
while_cond_380862
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_380862___redundant_placeholder04
0while_while_cond_380862___redundant_placeholder14
0while_while_cond_380862___redundant_placeholder24
0while_while_cond_380862___redundant_placeholder3
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
УK
Ю
C__inference_lstm_35_layer_call_and_return_conditional_losses_380658
inputs_0>
+lstm_cell_35_matmul_readvariableop_resource:	dљ@
-lstm_cell_35_matmul_1_readvariableop_resource:	dљ;
,lstm_cell_35_biasadd_readvariableop_resource:	љ
identityѕб#lstm_cell_35/BiasAdd/ReadVariableOpб"lstm_cell_35/MatMul/ReadVariableOpб$lstm_cell_35/MatMul_1/ReadVariableOpбwhileK
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
"lstm_cell_35/MatMul/ReadVariableOpReadVariableOp+lstm_cell_35_matmul_readvariableop_resource*
_output_shapes
:	dљ*
dtype0ќ
lstm_cell_35/MatMulMatMulstrided_slice_2:output:0*lstm_cell_35/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЊ
$lstm_cell_35/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_35_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0љ
lstm_cell_35/MatMul_1MatMulzeros:output:0,lstm_cell_35/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љї
lstm_cell_35/addAddV2lstm_cell_35/MatMul:product:0lstm_cell_35/MatMul_1:product:0*
T0*(
_output_shapes
:         љЇ
#lstm_cell_35/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_35_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0Ћ
lstm_cell_35/BiasAddBiasAddlstm_cell_35/add:z:0+lstm_cell_35/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ^
lstm_cell_35/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_cell_35/splitSplit%lstm_cell_35/split/split_dim:output:0lstm_cell_35/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitn
lstm_cell_35/SigmoidSigmoidlstm_cell_35/split:output:0*
T0*'
_output_shapes
:         dp
lstm_cell_35/Sigmoid_1Sigmoidlstm_cell_35/split:output:1*
T0*'
_output_shapes
:         dw
lstm_cell_35/mulMullstm_cell_35/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dh
lstm_cell_35/ReluRelulstm_cell_35/split:output:2*
T0*'
_output_shapes
:         dє
lstm_cell_35/mul_1Mullstm_cell_35/Sigmoid:y:0lstm_cell_35/Relu:activations:0*
T0*'
_output_shapes
:         d{
lstm_cell_35/add_1AddV2lstm_cell_35/mul:z:0lstm_cell_35/mul_1:z:0*
T0*'
_output_shapes
:         dp
lstm_cell_35/Sigmoid_2Sigmoidlstm_cell_35/split:output:3*
T0*'
_output_shapes
:         de
lstm_cell_35/Relu_1Relulstm_cell_35/add_1:z:0*
T0*'
_output_shapes
:         dі
lstm_cell_35/mul_2Mullstm_cell_35/Sigmoid_2:y:0!lstm_cell_35/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_35_matmul_readvariableop_resource-lstm_cell_35_matmul_1_readvariableop_resource,lstm_cell_35_biasadd_readvariableop_resource*
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
while_body_380573*
condR
while_cond_380572*K
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
NoOpNoOp$^lstm_cell_35/BiasAdd/ReadVariableOp#^lstm_cell_35/MatMul/ReadVariableOp%^lstm_cell_35/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2J
#lstm_cell_35/BiasAdd/ReadVariableOp#lstm_cell_35/BiasAdd/ReadVariableOp2H
"lstm_cell_35/MatMul/ReadVariableOp"lstm_cell_35/MatMul/ReadVariableOp2L
$lstm_cell_35/MatMul_1/ReadVariableOp$lstm_cell_35/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs_0
┐J
Џ
C__inference_lstm_34_layer_call_and_return_conditional_losses_380181

inputs>
+lstm_cell_34_matmul_readvariableop_resource:		љ@
-lstm_cell_34_matmul_1_readvariableop_resource:	dљ;
,lstm_cell_34_biasadd_readvariableop_resource:	љ
identityѕб#lstm_cell_34/BiasAdd/ReadVariableOpб"lstm_cell_34/MatMul/ReadVariableOpб$lstm_cell_34/MatMul_1/ReadVariableOpбwhileI
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
"lstm_cell_34/MatMul/ReadVariableOpReadVariableOp+lstm_cell_34_matmul_readvariableop_resource*
_output_shapes
:		љ*
dtype0ќ
lstm_cell_34/MatMulMatMulstrided_slice_2:output:0*lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЊ
$lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_34_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0љ
lstm_cell_34/MatMul_1MatMulzeros:output:0,lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љї
lstm_cell_34/addAddV2lstm_cell_34/MatMul:product:0lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:         љЇ
#lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_34_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0Ћ
lstm_cell_34/BiasAddBiasAddlstm_cell_34/add:z:0+lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ^
lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_cell_34/splitSplit%lstm_cell_34/split/split_dim:output:0lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitn
lstm_cell_34/SigmoidSigmoidlstm_cell_34/split:output:0*
T0*'
_output_shapes
:         dp
lstm_cell_34/Sigmoid_1Sigmoidlstm_cell_34/split:output:1*
T0*'
_output_shapes
:         dw
lstm_cell_34/mulMullstm_cell_34/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dh
lstm_cell_34/ReluRelulstm_cell_34/split:output:2*
T0*'
_output_shapes
:         dє
lstm_cell_34/mul_1Mullstm_cell_34/Sigmoid:y:0lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:         d{
lstm_cell_34/add_1AddV2lstm_cell_34/mul:z:0lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:         dp
lstm_cell_34/Sigmoid_2Sigmoidlstm_cell_34/split:output:3*
T0*'
_output_shapes
:         de
lstm_cell_34/Relu_1Relulstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:         dі
lstm_cell_34/mul_2Mullstm_cell_34/Sigmoid_2:y:0!lstm_cell_34/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_34_matmul_readvariableop_resource-lstm_cell_34_matmul_1_readvariableop_resource,lstm_cell_34_biasadd_readvariableop_resource*
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
while_body_380097*
condR
while_cond_380096*K
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
NoOpNoOp$^lstm_cell_34/BiasAdd/ReadVariableOp#^lstm_cell_34/MatMul/ReadVariableOp%^lstm_cell_34/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         	: : : 2J
#lstm_cell_34/BiasAdd/ReadVariableOp#lstm_cell_34/BiasAdd/ReadVariableOp2H
"lstm_cell_34/MatMul/ReadVariableOp"lstm_cell_34/MatMul/ReadVariableOp2L
$lstm_cell_34/MatMul_1/ReadVariableOp$lstm_cell_34/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
г
ч
'sequential_17_lstm_35_while_cond_377308H
Dsequential_17_lstm_35_while_sequential_17_lstm_35_while_loop_counterN
Jsequential_17_lstm_35_while_sequential_17_lstm_35_while_maximum_iterations+
'sequential_17_lstm_35_while_placeholder-
)sequential_17_lstm_35_while_placeholder_1-
)sequential_17_lstm_35_while_placeholder_2-
)sequential_17_lstm_35_while_placeholder_3J
Fsequential_17_lstm_35_while_less_sequential_17_lstm_35_strided_slice_1`
\sequential_17_lstm_35_while_sequential_17_lstm_35_while_cond_377308___redundant_placeholder0`
\sequential_17_lstm_35_while_sequential_17_lstm_35_while_cond_377308___redundant_placeholder1`
\sequential_17_lstm_35_while_sequential_17_lstm_35_while_cond_377308___redundant_placeholder2`
\sequential_17_lstm_35_while_sequential_17_lstm_35_while_cond_377308___redundant_placeholder3(
$sequential_17_lstm_35_while_identity
║
 sequential_17/lstm_35/while/LessLess'sequential_17_lstm_35_while_placeholderFsequential_17_lstm_35_while_less_sequential_17_lstm_35_strided_slice_1*
T0*
_output_shapes
: w
$sequential_17/lstm_35/while/IdentityIdentity$sequential_17/lstm_35/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_17_lstm_35_while_identity-sequential_17/lstm_35/while/Identity:output:0*(
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
_user_specified_name0.sequential_17/lstm_35/while/maximum_iterations:` \

_output_shapes
: 
B
_user_specified_name*(sequential_17/lstm_35/while/loop_counter
П
т
I__inference_sequential_17_layer_call_and_return_conditional_losses_378822

inputs!
lstm_34_378796:		љ!
lstm_34_378798:	dљ
lstm_34_378800:	љ!
lstm_35_378803:	dљ!
lstm_35_378805:	dљ
lstm_35_378807:	љ!
dense_34_378811:d
dense_34_378813:!
dense_35_378816:
dense_35_378818:
identityѕб dense_34/StatefulPartitionedCallб dense_35/StatefulPartitionedCallб"dropout_17/StatefulPartitionedCallбlstm_34/StatefulPartitionedCallбlstm_35/StatefulPartitionedCallѓ
lstm_34/StatefulPartitionedCallStatefulPartitionedCallinputslstm_34_378796lstm_34_378798lstm_34_378800*
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
C__inference_lstm_34_layer_call_and_return_conditional_losses_378259а
lstm_35/StatefulPartitionedCallStatefulPartitionedCall(lstm_34/StatefulPartitionedCall:output:0lstm_35_378803lstm_35_378805lstm_35_378807*
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
C__inference_lstm_35_layer_call_and_return_conditional_losses_378411Ь
"dropout_17/StatefulPartitionedCallStatefulPartitionedCall(lstm_35/StatefulPartitionedCall:output:0*
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
F__inference_dropout_17_layer_call_and_return_conditional_losses_378431Ћ
 dense_34/StatefulPartitionedCallStatefulPartitionedCall+dropout_17/StatefulPartitionedCall:output:0dense_34_378811dense_34_378813*
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
D__inference_dense_34_layer_call_and_return_conditional_losses_378444Њ
 dense_35/StatefulPartitionedCallStatefulPartitionedCall)dense_34/StatefulPartitionedCall:output:0dense_35_378816dense_35_378818*
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
D__inference_dense_35_layer_call_and_return_conditional_losses_378461x
IdentityIdentity)dense_35/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ш
NoOpNoOp!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall#^dropout_17/StatefulPartitionedCall ^lstm_34/StatefulPartitionedCall ^lstm_35/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         	: : : : : : : : : : 2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall2H
"dropout_17/StatefulPartitionedCall"dropout_17/StatefulPartitionedCall2B
lstm_34/StatefulPartitionedCalllstm_34/StatefulPartitionedCall2B
lstm_35/StatefulPartitionedCalllstm_35/StatefulPartitionedCall:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
ѕ
с
lstm_35_while_cond_379301,
(lstm_35_while_lstm_35_while_loop_counter2
.lstm_35_while_lstm_35_while_maximum_iterations
lstm_35_while_placeholder
lstm_35_while_placeholder_1
lstm_35_while_placeholder_2
lstm_35_while_placeholder_3.
*lstm_35_while_less_lstm_35_strided_slice_1D
@lstm_35_while_lstm_35_while_cond_379301___redundant_placeholder0D
@lstm_35_while_lstm_35_while_cond_379301___redundant_placeholder1D
@lstm_35_while_lstm_35_while_cond_379301___redundant_placeholder2D
@lstm_35_while_lstm_35_while_cond_379301___redundant_placeholder3
lstm_35_while_identity
ѓ
lstm_35/while/LessLesslstm_35_while_placeholder*lstm_35_while_less_lstm_35_strided_slice_1*
T0*
_output_shapes
: [
lstm_35/while/IdentityIdentitylstm_35/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_35_while_identitylstm_35/while/Identity:output:0*(
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
_user_specified_name" lstm_35/while/maximum_iterations:R N

_output_shapes
: 
4
_user_specified_namelstm_35/while/loop_counter
П
є
H__inference_lstm_cell_35_layer_call_and_return_conditional_losses_381211

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
і:
л
while_body_380573
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_35_matmul_readvariableop_resource_0:	dљH
5while_lstm_cell_35_matmul_1_readvariableop_resource_0:	dљC
4while_lstm_cell_35_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_35_matmul_readvariableop_resource:	dљF
3while_lstm_cell_35_matmul_1_readvariableop_resource:	dљA
2while_lstm_cell_35_biasadd_readvariableop_resource:	љѕб)while/lstm_cell_35/BiasAdd/ReadVariableOpб(while/lstm_cell_35/MatMul/ReadVariableOpб*while/lstm_cell_35/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ю
(while/lstm_cell_35/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_35_matmul_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0║
while/lstm_cell_35/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_35/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
*while/lstm_cell_35/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_35_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0А
while/lstm_cell_35/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_35/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љъ
while/lstm_cell_35/addAddV2#while/lstm_cell_35/MatMul:product:0%while/lstm_cell_35/MatMul_1:product:0*
T0*(
_output_shapes
:         љЏ
)while/lstm_cell_35/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_35_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0Д
while/lstm_cell_35/BiasAddBiasAddwhile/lstm_cell_35/add:z:01while/lstm_cell_35/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љd
"while/lstm_cell_35/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_35/splitSplit+while/lstm_cell_35/split/split_dim:output:0#while/lstm_cell_35/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitz
while/lstm_cell_35/SigmoidSigmoid!while/lstm_cell_35/split:output:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_35/Sigmoid_1Sigmoid!while/lstm_cell_35/split:output:1*
T0*'
_output_shapes
:         dє
while/lstm_cell_35/mulMul while/lstm_cell_35/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dt
while/lstm_cell_35/ReluRelu!while/lstm_cell_35/split:output:2*
T0*'
_output_shapes
:         dў
while/lstm_cell_35/mul_1Mulwhile/lstm_cell_35/Sigmoid:y:0%while/lstm_cell_35/Relu:activations:0*
T0*'
_output_shapes
:         dЇ
while/lstm_cell_35/add_1AddV2while/lstm_cell_35/mul:z:0while/lstm_cell_35/mul_1:z:0*
T0*'
_output_shapes
:         d|
while/lstm_cell_35/Sigmoid_2Sigmoid!while/lstm_cell_35/split:output:3*
T0*'
_output_shapes
:         dq
while/lstm_cell_35/Relu_1Reluwhile/lstm_cell_35/add_1:z:0*
T0*'
_output_shapes
:         dю
while/lstm_cell_35/mul_2Mul while/lstm_cell_35/Sigmoid_2:y:0'while/lstm_cell_35/Relu_1:activations:0*
T0*'
_output_shapes
:         dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ь
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_35/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_35/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dy
while/Identity_5Identitywhile/lstm_cell_35/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dл

while/NoOpNoOp*^while/lstm_cell_35/BiasAdd/ReadVariableOp)^while/lstm_cell_35/MatMul/ReadVariableOp+^while/lstm_cell_35/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"j
2while_lstm_cell_35_biasadd_readvariableop_resource4while_lstm_cell_35_biasadd_readvariableop_resource_0"l
3while_lstm_cell_35_matmul_1_readvariableop_resource5while_lstm_cell_35_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_35_matmul_readvariableop_resource3while_lstm_cell_35_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2V
)while/lstm_cell_35/BiasAdd/ReadVariableOp)while/lstm_cell_35/BiasAdd/ReadVariableOp2T
(while/lstm_cell_35/MatMul/ReadVariableOp(while/lstm_cell_35/MatMul/ReadVariableOp2X
*while/lstm_cell_35/MatMul_1/ReadVariableOp*while/lstm_cell_35/MatMul_1/ReadVariableOp:
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
э
х
(__inference_lstm_35_layer_call_fn_380357

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
C__inference_lstm_35_layer_call_and_return_conditional_losses_378411o
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
while_cond_378528
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_378528___redundant_placeholder04
0while_while_cond_378528___redundant_placeholder14
0while_while_cond_378528___redundant_placeholder24
0while_while_cond_378528___redundant_placeholder3
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
while_cond_377837
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_377837___redundant_placeholder04
0while_while_cond_377837___redundant_placeholder14
0while_while_cond_377837___redundant_placeholder24
0while_while_cond_377837___redundant_placeholder3
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
▓і
▀"
__inference__traced_save_381450
file_prefix8
&read_disablecopyonread_dense_34_kernel:d4
&read_1_disablecopyonread_dense_34_bias::
(read_2_disablecopyonread_dense_35_kernel:4
&read_3_disablecopyonread_dense_35_bias:G
4read_4_disablecopyonread_lstm_34_lstm_cell_34_kernel:		љQ
>read_5_disablecopyonread_lstm_34_lstm_cell_34_recurrent_kernel:	dљA
2read_6_disablecopyonread_lstm_34_lstm_cell_34_bias:	љG
4read_7_disablecopyonread_lstm_35_lstm_cell_35_kernel:	dљQ
>read_8_disablecopyonread_lstm_35_lstm_cell_35_recurrent_kernel:	dљA
2read_9_disablecopyonread_lstm_35_lstm_cell_35_bias:	љ-
#read_10_disablecopyonread_iteration:	 1
'read_11_disablecopyonread_learning_rate: O
<read_12_disablecopyonread_adam_m_lstm_34_lstm_cell_34_kernel:		љO
<read_13_disablecopyonread_adam_v_lstm_34_lstm_cell_34_kernel:		љY
Fread_14_disablecopyonread_adam_m_lstm_34_lstm_cell_34_recurrent_kernel:	dљY
Fread_15_disablecopyonread_adam_v_lstm_34_lstm_cell_34_recurrent_kernel:	dљI
:read_16_disablecopyonread_adam_m_lstm_34_lstm_cell_34_bias:	љI
:read_17_disablecopyonread_adam_v_lstm_34_lstm_cell_34_bias:	љO
<read_18_disablecopyonread_adam_m_lstm_35_lstm_cell_35_kernel:	dљO
<read_19_disablecopyonread_adam_v_lstm_35_lstm_cell_35_kernel:	dљY
Fread_20_disablecopyonread_adam_m_lstm_35_lstm_cell_35_recurrent_kernel:	dљY
Fread_21_disablecopyonread_adam_v_lstm_35_lstm_cell_35_recurrent_kernel:	dљI
:read_22_disablecopyonread_adam_m_lstm_35_lstm_cell_35_bias:	љI
:read_23_disablecopyonread_adam_v_lstm_35_lstm_cell_35_bias:	љB
0read_24_disablecopyonread_adam_m_dense_34_kernel:dB
0read_25_disablecopyonread_adam_v_dense_34_kernel:d<
.read_26_disablecopyonread_adam_m_dense_34_bias:<
.read_27_disablecopyonread_adam_v_dense_34_bias:B
0read_28_disablecopyonread_adam_m_dense_35_kernel:B
0read_29_disablecopyonread_adam_v_dense_35_kernel:<
.read_30_disablecopyonread_adam_m_dense_35_bias:<
.read_31_disablecopyonread_adam_v_dense_35_bias:+
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
Read/DisableCopyOnReadDisableCopyOnRead&read_disablecopyonread_dense_34_kernel"/device:CPU:0*
_output_shapes
 б
Read/ReadVariableOpReadVariableOp&read_disablecopyonread_dense_34_kernel^Read/DisableCopyOnRead"/device:CPU:0*
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
Read_1/DisableCopyOnReadDisableCopyOnRead&read_1_disablecopyonread_dense_34_bias"/device:CPU:0*
_output_shapes
 б
Read_1/ReadVariableOpReadVariableOp&read_1_disablecopyonread_dense_34_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
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
Read_2/DisableCopyOnReadDisableCopyOnRead(read_2_disablecopyonread_dense_35_kernel"/device:CPU:0*
_output_shapes
 е
Read_2/ReadVariableOpReadVariableOp(read_2_disablecopyonread_dense_35_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
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
Read_3/DisableCopyOnReadDisableCopyOnRead&read_3_disablecopyonread_dense_35_bias"/device:CPU:0*
_output_shapes
 б
Read_3/ReadVariableOpReadVariableOp&read_3_disablecopyonread_dense_35_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
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
Read_4/DisableCopyOnReadDisableCopyOnRead4read_4_disablecopyonread_lstm_34_lstm_cell_34_kernel"/device:CPU:0*
_output_shapes
 х
Read_4/ReadVariableOpReadVariableOp4read_4_disablecopyonread_lstm_34_lstm_cell_34_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*
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
Read_5/DisableCopyOnReadDisableCopyOnRead>read_5_disablecopyonread_lstm_34_lstm_cell_34_recurrent_kernel"/device:CPU:0*
_output_shapes
 ┐
Read_5/ReadVariableOpReadVariableOp>read_5_disablecopyonread_lstm_34_lstm_cell_34_recurrent_kernel^Read_5/DisableCopyOnRead"/device:CPU:0*
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
Read_6/DisableCopyOnReadDisableCopyOnRead2read_6_disablecopyonread_lstm_34_lstm_cell_34_bias"/device:CPU:0*
_output_shapes
 »
Read_6/ReadVariableOpReadVariableOp2read_6_disablecopyonread_lstm_34_lstm_cell_34_bias^Read_6/DisableCopyOnRead"/device:CPU:0*
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
Read_7/DisableCopyOnReadDisableCopyOnRead4read_7_disablecopyonread_lstm_35_lstm_cell_35_kernel"/device:CPU:0*
_output_shapes
 х
Read_7/ReadVariableOpReadVariableOp4read_7_disablecopyonread_lstm_35_lstm_cell_35_kernel^Read_7/DisableCopyOnRead"/device:CPU:0*
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
Read_8/DisableCopyOnReadDisableCopyOnRead>read_8_disablecopyonread_lstm_35_lstm_cell_35_recurrent_kernel"/device:CPU:0*
_output_shapes
 ┐
Read_8/ReadVariableOpReadVariableOp>read_8_disablecopyonread_lstm_35_lstm_cell_35_recurrent_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
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
Read_9/DisableCopyOnReadDisableCopyOnRead2read_9_disablecopyonread_lstm_35_lstm_cell_35_bias"/device:CPU:0*
_output_shapes
 »
Read_9/ReadVariableOpReadVariableOp2read_9_disablecopyonread_lstm_35_lstm_cell_35_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
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
Read_12/DisableCopyOnReadDisableCopyOnRead<read_12_disablecopyonread_adam_m_lstm_34_lstm_cell_34_kernel"/device:CPU:0*
_output_shapes
 ┐
Read_12/ReadVariableOpReadVariableOp<read_12_disablecopyonread_adam_m_lstm_34_lstm_cell_34_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*
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
Read_13/DisableCopyOnReadDisableCopyOnRead<read_13_disablecopyonread_adam_v_lstm_34_lstm_cell_34_kernel"/device:CPU:0*
_output_shapes
 ┐
Read_13/ReadVariableOpReadVariableOp<read_13_disablecopyonread_adam_v_lstm_34_lstm_cell_34_kernel^Read_13/DisableCopyOnRead"/device:CPU:0*
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
Read_14/DisableCopyOnReadDisableCopyOnReadFread_14_disablecopyonread_adam_m_lstm_34_lstm_cell_34_recurrent_kernel"/device:CPU:0*
_output_shapes
 ╔
Read_14/ReadVariableOpReadVariableOpFread_14_disablecopyonread_adam_m_lstm_34_lstm_cell_34_recurrent_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*
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
Read_15/DisableCopyOnReadDisableCopyOnReadFread_15_disablecopyonread_adam_v_lstm_34_lstm_cell_34_recurrent_kernel"/device:CPU:0*
_output_shapes
 ╔
Read_15/ReadVariableOpReadVariableOpFread_15_disablecopyonread_adam_v_lstm_34_lstm_cell_34_recurrent_kernel^Read_15/DisableCopyOnRead"/device:CPU:0*
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
Read_16/DisableCopyOnReadDisableCopyOnRead:read_16_disablecopyonread_adam_m_lstm_34_lstm_cell_34_bias"/device:CPU:0*
_output_shapes
 ╣
Read_16/ReadVariableOpReadVariableOp:read_16_disablecopyonread_adam_m_lstm_34_lstm_cell_34_bias^Read_16/DisableCopyOnRead"/device:CPU:0*
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
Read_17/DisableCopyOnReadDisableCopyOnRead:read_17_disablecopyonread_adam_v_lstm_34_lstm_cell_34_bias"/device:CPU:0*
_output_shapes
 ╣
Read_17/ReadVariableOpReadVariableOp:read_17_disablecopyonread_adam_v_lstm_34_lstm_cell_34_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
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
Read_18/DisableCopyOnReadDisableCopyOnRead<read_18_disablecopyonread_adam_m_lstm_35_lstm_cell_35_kernel"/device:CPU:0*
_output_shapes
 ┐
Read_18/ReadVariableOpReadVariableOp<read_18_disablecopyonread_adam_m_lstm_35_lstm_cell_35_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*
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
Read_19/DisableCopyOnReadDisableCopyOnRead<read_19_disablecopyonread_adam_v_lstm_35_lstm_cell_35_kernel"/device:CPU:0*
_output_shapes
 ┐
Read_19/ReadVariableOpReadVariableOp<read_19_disablecopyonread_adam_v_lstm_35_lstm_cell_35_kernel^Read_19/DisableCopyOnRead"/device:CPU:0*
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
Read_20/DisableCopyOnReadDisableCopyOnReadFread_20_disablecopyonread_adam_m_lstm_35_lstm_cell_35_recurrent_kernel"/device:CPU:0*
_output_shapes
 ╔
Read_20/ReadVariableOpReadVariableOpFread_20_disablecopyonread_adam_m_lstm_35_lstm_cell_35_recurrent_kernel^Read_20/DisableCopyOnRead"/device:CPU:0*
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
Read_21/DisableCopyOnReadDisableCopyOnReadFread_21_disablecopyonread_adam_v_lstm_35_lstm_cell_35_recurrent_kernel"/device:CPU:0*
_output_shapes
 ╔
Read_21/ReadVariableOpReadVariableOpFread_21_disablecopyonread_adam_v_lstm_35_lstm_cell_35_recurrent_kernel^Read_21/DisableCopyOnRead"/device:CPU:0*
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
Read_22/DisableCopyOnReadDisableCopyOnRead:read_22_disablecopyonread_adam_m_lstm_35_lstm_cell_35_bias"/device:CPU:0*
_output_shapes
 ╣
Read_22/ReadVariableOpReadVariableOp:read_22_disablecopyonread_adam_m_lstm_35_lstm_cell_35_bias^Read_22/DisableCopyOnRead"/device:CPU:0*
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
Read_23/DisableCopyOnReadDisableCopyOnRead:read_23_disablecopyonread_adam_v_lstm_35_lstm_cell_35_bias"/device:CPU:0*
_output_shapes
 ╣
Read_23/ReadVariableOpReadVariableOp:read_23_disablecopyonread_adam_v_lstm_35_lstm_cell_35_bias^Read_23/DisableCopyOnRead"/device:CPU:0*
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
Read_24/DisableCopyOnReadDisableCopyOnRead0read_24_disablecopyonread_adam_m_dense_34_kernel"/device:CPU:0*
_output_shapes
 ▓
Read_24/ReadVariableOpReadVariableOp0read_24_disablecopyonread_adam_m_dense_34_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*
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
Read_25/DisableCopyOnReadDisableCopyOnRead0read_25_disablecopyonread_adam_v_dense_34_kernel"/device:CPU:0*
_output_shapes
 ▓
Read_25/ReadVariableOpReadVariableOp0read_25_disablecopyonread_adam_v_dense_34_kernel^Read_25/DisableCopyOnRead"/device:CPU:0*
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
Read_26/DisableCopyOnReadDisableCopyOnRead.read_26_disablecopyonread_adam_m_dense_34_bias"/device:CPU:0*
_output_shapes
 г
Read_26/ReadVariableOpReadVariableOp.read_26_disablecopyonread_adam_m_dense_34_bias^Read_26/DisableCopyOnRead"/device:CPU:0*
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
Read_27/DisableCopyOnReadDisableCopyOnRead.read_27_disablecopyonread_adam_v_dense_34_bias"/device:CPU:0*
_output_shapes
 г
Read_27/ReadVariableOpReadVariableOp.read_27_disablecopyonread_adam_v_dense_34_bias^Read_27/DisableCopyOnRead"/device:CPU:0*
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
Read_28/DisableCopyOnReadDisableCopyOnRead0read_28_disablecopyonread_adam_m_dense_35_kernel"/device:CPU:0*
_output_shapes
 ▓
Read_28/ReadVariableOpReadVariableOp0read_28_disablecopyonread_adam_m_dense_35_kernel^Read_28/DisableCopyOnRead"/device:CPU:0*
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
Read_29/DisableCopyOnReadDisableCopyOnRead0read_29_disablecopyonread_adam_v_dense_35_kernel"/device:CPU:0*
_output_shapes
 ▓
Read_29/ReadVariableOpReadVariableOp0read_29_disablecopyonread_adam_v_dense_35_kernel^Read_29/DisableCopyOnRead"/device:CPU:0*
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
Read_30/DisableCopyOnReadDisableCopyOnRead.read_30_disablecopyonread_adam_m_dense_35_bias"/device:CPU:0*
_output_shapes
 г
Read_30/ReadVariableOpReadVariableOp.read_30_disablecopyonread_adam_m_dense_35_bias^Read_30/DisableCopyOnRead"/device:CPU:0*
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
Read_31/DisableCopyOnReadDisableCopyOnRead.read_31_disablecopyonread_adam_v_dense_35_bias"/device:CPU:0*
_output_shapes
 г
Read_31/ReadVariableOpReadVariableOp.read_31_disablecopyonread_adam_v_dense_35_bias^Read_31/DisableCopyOnRead"/device:CPU:0*
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
џ

e
F__inference_dropout_17_layer_call_and_return_conditional_losses_378431

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
Љ

Щ
$__inference_signature_wrapper_379053
lstm_34_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_34_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
!__inference__wrapped_model_377409o
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
_user_specified_namelstm_34_input
┬
ќ
)__inference_dense_35_layer_call_fn_381004

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
D__inference_dense_35_layer_call_and_return_conditional_losses_378461o
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
lstm_34_input:
serving_default_lstm_34_input:0         	<
dense_350
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
.__inference_sequential_17_layer_call_fn_378845
.__inference_sequential_17_layer_call_fn_378899
.__inference_sequential_17_layer_call_fn_379078
.__inference_sequential_17_layer_call_fn_379103х
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
I__inference_sequential_17_layer_call_and_return_conditional_losses_378468
I__inference_sequential_17_layer_call_and_return_conditional_losses_378790
I__inference_sequential_17_layer_call_and_return_conditional_losses_379409
I__inference_sequential_17_layer_call_and_return_conditional_losses_379708х
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
!__inference__wrapped_model_377409lstm_34_input"ў
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
(__inference_lstm_34_layer_call_fn_379719
(__inference_lstm_34_layer_call_fn_379730
(__inference_lstm_34_layer_call_fn_379741
(__inference_lstm_34_layer_call_fn_379752╩
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
C__inference_lstm_34_layer_call_and_return_conditional_losses_379895
C__inference_lstm_34_layer_call_and_return_conditional_losses_380038
C__inference_lstm_34_layer_call_and_return_conditional_losses_380181
C__inference_lstm_34_layer_call_and_return_conditional_losses_380324╩
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
(__inference_lstm_35_layer_call_fn_380335
(__inference_lstm_35_layer_call_fn_380346
(__inference_lstm_35_layer_call_fn_380357
(__inference_lstm_35_layer_call_fn_380368╩
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
C__inference_lstm_35_layer_call_and_return_conditional_losses_380513
C__inference_lstm_35_layer_call_and_return_conditional_losses_380658
C__inference_lstm_35_layer_call_and_return_conditional_losses_380803
C__inference_lstm_35_layer_call_and_return_conditional_losses_380948╩
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
+__inference_dropout_17_layer_call_fn_380953
+__inference_dropout_17_layer_call_fn_380958Е
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
F__inference_dropout_17_layer_call_and_return_conditional_losses_380970
F__inference_dropout_17_layer_call_and_return_conditional_losses_380975Е
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
)__inference_dense_34_layer_call_fn_380984ў
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
D__inference_dense_34_layer_call_and_return_conditional_losses_380995ў
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
!:d2dense_34/kernel
:2dense_34/bias
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
)__inference_dense_35_layer_call_fn_381004ў
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
D__inference_dense_35_layer_call_and_return_conditional_losses_381015ў
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
!:2dense_35/kernel
:2dense_35/bias
.:,		љ2lstm_34/lstm_cell_34/kernel
8:6	dљ2%lstm_34/lstm_cell_34/recurrent_kernel
(:&љ2lstm_34/lstm_cell_34/bias
.:,	dљ2lstm_35/lstm_cell_35/kernel
8:6	dљ2%lstm_35/lstm_cell_35/recurrent_kernel
(:&љ2lstm_35/lstm_cell_35/bias
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
.__inference_sequential_17_layer_call_fn_378845lstm_34_input"х
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
.__inference_sequential_17_layer_call_fn_378899lstm_34_input"х
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
.__inference_sequential_17_layer_call_fn_379078inputs"х
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
.__inference_sequential_17_layer_call_fn_379103inputs"х
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
I__inference_sequential_17_layer_call_and_return_conditional_losses_378468lstm_34_input"х
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
I__inference_sequential_17_layer_call_and_return_conditional_losses_378790lstm_34_input"х
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
I__inference_sequential_17_layer_call_and_return_conditional_losses_379409inputs"х
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
I__inference_sequential_17_layer_call_and_return_conditional_losses_379708inputs"х
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
$__inference_signature_wrapper_379053lstm_34_input"ћ
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
(__inference_lstm_34_layer_call_fn_379719inputs_0"╩
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
(__inference_lstm_34_layer_call_fn_379730inputs_0"╩
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
(__inference_lstm_34_layer_call_fn_379741inputs"╩
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
(__inference_lstm_34_layer_call_fn_379752inputs"╩
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
C__inference_lstm_34_layer_call_and_return_conditional_losses_379895inputs_0"╩
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
C__inference_lstm_34_layer_call_and_return_conditional_losses_380038inputs_0"╩
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
C__inference_lstm_34_layer_call_and_return_conditional_losses_380181inputs"╩
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
C__inference_lstm_34_layer_call_and_return_conditional_losses_380324inputs"╩
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
-__inference_lstm_cell_34_layer_call_fn_381032
-__inference_lstm_cell_34_layer_call_fn_381049│
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
H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_381081
H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_381113│
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
(__inference_lstm_35_layer_call_fn_380335inputs_0"╩
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
(__inference_lstm_35_layer_call_fn_380346inputs_0"╩
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
(__inference_lstm_35_layer_call_fn_380357inputs"╩
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
(__inference_lstm_35_layer_call_fn_380368inputs"╩
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
C__inference_lstm_35_layer_call_and_return_conditional_losses_380513inputs_0"╩
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
C__inference_lstm_35_layer_call_and_return_conditional_losses_380658inputs_0"╩
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
C__inference_lstm_35_layer_call_and_return_conditional_losses_380803inputs"╩
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
C__inference_lstm_35_layer_call_and_return_conditional_losses_380948inputs"╩
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
-__inference_lstm_cell_35_layer_call_fn_381130
-__inference_lstm_cell_35_layer_call_fn_381147│
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
H__inference_lstm_cell_35_layer_call_and_return_conditional_losses_381179
H__inference_lstm_cell_35_layer_call_and_return_conditional_losses_381211│
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
+__inference_dropout_17_layer_call_fn_380953inputs"Е
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
+__inference_dropout_17_layer_call_fn_380958inputs"Е
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
F__inference_dropout_17_layer_call_and_return_conditional_losses_380970inputs"Е
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
F__inference_dropout_17_layer_call_and_return_conditional_losses_380975inputs"Е
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
)__inference_dense_34_layer_call_fn_380984inputs"ў
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
D__inference_dense_34_layer_call_and_return_conditional_losses_380995inputs"ў
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
)__inference_dense_35_layer_call_fn_381004inputs"ў
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
D__inference_dense_35_layer_call_and_return_conditional_losses_381015inputs"ў
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
3:1		љ2"Adam/m/lstm_34/lstm_cell_34/kernel
3:1		љ2"Adam/v/lstm_34/lstm_cell_34/kernel
=:;	dљ2,Adam/m/lstm_34/lstm_cell_34/recurrent_kernel
=:;	dљ2,Adam/v/lstm_34/lstm_cell_34/recurrent_kernel
-:+љ2 Adam/m/lstm_34/lstm_cell_34/bias
-:+љ2 Adam/v/lstm_34/lstm_cell_34/bias
3:1	dљ2"Adam/m/lstm_35/lstm_cell_35/kernel
3:1	dљ2"Adam/v/lstm_35/lstm_cell_35/kernel
=:;	dљ2,Adam/m/lstm_35/lstm_cell_35/recurrent_kernel
=:;	dљ2,Adam/v/lstm_35/lstm_cell_35/recurrent_kernel
-:+љ2 Adam/m/lstm_35/lstm_cell_35/bias
-:+љ2 Adam/v/lstm_35/lstm_cell_35/bias
&:$d2Adam/m/dense_34/kernel
&:$d2Adam/v/dense_34/kernel
 :2Adam/m/dense_34/bias
 :2Adam/v/dense_34/bias
&:$2Adam/m/dense_35/kernel
&:$2Adam/v/dense_35/kernel
 :2Adam/m/dense_35/bias
 :2Adam/v/dense_35/bias
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
-__inference_lstm_cell_34_layer_call_fn_381032inputsstates_0states_1"│
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
-__inference_lstm_cell_34_layer_call_fn_381049inputsstates_0states_1"│
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
H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_381081inputsstates_0states_1"│
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
H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_381113inputsstates_0states_1"│
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
-__inference_lstm_cell_35_layer_call_fn_381130inputsstates_0states_1"│
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
-__inference_lstm_cell_35_layer_call_fn_381147inputsstates_0states_1"│
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
H__inference_lstm_cell_35_layer_call_and_return_conditional_losses_381179inputsstates_0states_1"│
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
H__inference_lstm_cell_35_layer_call_and_return_conditional_losses_381211inputsstates_0states_1"│
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
!__inference__wrapped_model_377409}
89:;<=./67:б7
0б-
+і(
lstm_34_input         	
ф "3ф0
.
dense_35"і
dense_35         Ф
D__inference_dense_34_layer_call_and_return_conditional_losses_380995c.//б,
%б"
 і
inputs         d
ф ",б)
"і
tensor_0         
џ Ё
)__inference_dense_34_layer_call_fn_380984X.//б,
%б"
 і
inputs         d
ф "!і
unknown         Ф
D__inference_dense_35_layer_call_and_return_conditional_losses_381015c67/б,
%б"
 і
inputs         
ф ",б)
"і
tensor_0         
џ Ё
)__inference_dense_35_layer_call_fn_381004X67/б,
%б"
 і
inputs         
ф "!і
unknown         Г
F__inference_dropout_17_layer_call_and_return_conditional_losses_380970c3б0
)б&
 і
inputs         d
p
ф ",б)
"і
tensor_0         d
џ Г
F__inference_dropout_17_layer_call_and_return_conditional_losses_380975c3б0
)б&
 і
inputs         d
p 
ф ",б)
"і
tensor_0         d
џ Є
+__inference_dropout_17_layer_call_fn_380953X3б0
)б&
 і
inputs         d
p
ф "!і
unknown         dЄ
+__inference_dropout_17_layer_call_fn_380958X3б0
)б&
 і
inputs         d
p 
ф "!і
unknown         d┘
C__inference_lstm_34_layer_call_and_return_conditional_losses_379895Љ89:OбL
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
C__inference_lstm_34_layer_call_and_return_conditional_losses_380038Љ89:OбL
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
C__inference_lstm_34_layer_call_and_return_conditional_losses_380181x89:?б<
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
C__inference_lstm_34_layer_call_and_return_conditional_losses_380324x89:?б<
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
(__inference_lstm_34_layer_call_fn_379719є89:OбL
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
(__inference_lstm_34_layer_call_fn_379730є89:OбL
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
(__inference_lstm_34_layer_call_fn_379741m89:?б<
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
(__inference_lstm_34_layer_call_fn_379752m89:?б<
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
C__inference_lstm_35_layer_call_and_return_conditional_losses_380513ё;<=OбL
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
C__inference_lstm_35_layer_call_and_return_conditional_losses_380658ё;<=OбL
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
C__inference_lstm_35_layer_call_and_return_conditional_losses_380803t;<=?б<
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
C__inference_lstm_35_layer_call_and_return_conditional_losses_380948t;<=?б<
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
(__inference_lstm_35_layer_call_fn_380335y;<=OбL
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
(__inference_lstm_35_layer_call_fn_380346y;<=OбL
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
(__inference_lstm_35_layer_call_fn_380357i;<=?б<
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
(__inference_lstm_35_layer_call_fn_380368i;<=?б<
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
H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_381081ћ89:ђб}
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
H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_381113ћ89:ђб}
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
-__inference_lstm_cell_34_layer_call_fn_381032ѓ89:ђб}
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
-__inference_lstm_cell_34_layer_call_fn_381049ѓ89:ђб}
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
H__inference_lstm_cell_35_layer_call_and_return_conditional_losses_381179ћ;<=ђб}
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
H__inference_lstm_cell_35_layer_call_and_return_conditional_losses_381211ћ;<=ђб}
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
-__inference_lstm_cell_35_layer_call_fn_381130ѓ;<=ђб}
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
-__inference_lstm_cell_35_layer_call_fn_381147ѓ;<=ђб}
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
I__inference_sequential_17_layer_call_and_return_conditional_losses_378468~
89:;<=./67Bб?
8б5
+і(
lstm_34_input         	
p

 
ф ",б)
"і
tensor_0         
џ ╦
I__inference_sequential_17_layer_call_and_return_conditional_losses_378790~
89:;<=./67Bб?
8б5
+і(
lstm_34_input         	
p 

 
ф ",б)
"і
tensor_0         
џ ─
I__inference_sequential_17_layer_call_and_return_conditional_losses_379409w
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
I__inference_sequential_17_layer_call_and_return_conditional_losses_379708w
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
.__inference_sequential_17_layer_call_fn_378845s
89:;<=./67Bб?
8б5
+і(
lstm_34_input         	
p

 
ф "!і
unknown         Ц
.__inference_sequential_17_layer_call_fn_378899s
89:;<=./67Bб?
8б5
+і(
lstm_34_input         	
p 

 
ф "!і
unknown         ъ
.__inference_sequential_17_layer_call_fn_379078l
89:;<=./67;б8
1б.
$і!
inputs         	
p

 
ф "!і
unknown         ъ
.__inference_sequential_17_layer_call_fn_379103l
89:;<=./67;б8
1б.
$і!
inputs         	
p 

 
ф "!і
unknown         и
$__inference_signature_wrapper_379053ј
89:;<=./67KбH
б 
Aф>
<
lstm_34_input+і(
lstm_34_input         	"3ф0
.
dense_35"і
dense_35         