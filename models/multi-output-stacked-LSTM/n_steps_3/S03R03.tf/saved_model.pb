Еа$
ьЋ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
А
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
resourceИ
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
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
dtypetypeИ
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
output"out_typeКнout_type"	
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
Ѕ
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
executor_typestring И®
@
StaticRegexFullMatch	
input

output
"
patternstring
ч
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
∞
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleКйиelement_dtype"
element_dtypetype"

shape_typetype:
2	
Я
TensorListReserve
element_shape"
shape_type
num_elements(
handleКйиelement_dtype"
element_dtypetype"

shape_typetype:
2	
И
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint€€€€€€€€€
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И
Ф
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
И"serve*2.12.02v2.12.0-rc1-12-g0db597d0d758”®"
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
А
Adam/v/dense_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/v/dense_13/bias
y
(Adam/v/dense_13/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_13/bias*
_output_shapes
:
*
dtype0
А
Adam/m/dense_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/m/dense_13/bias
y
(Adam/m/dense_13/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_13/bias*
_output_shapes
:
*
dtype0
И
Adam/v/dense_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/v/dense_13/kernel
Б
*Adam/v/dense_13/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_13/kernel*
_output_shapes

:
*
dtype0
И
Adam/m/dense_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/m/dense_13/kernel
Б
*Adam/m/dense_13/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_13/kernel*
_output_shapes

:
*
dtype0
А
Adam/v/dense_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/dense_12/bias
y
(Adam/v/dense_12/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_12/bias*
_output_shapes
:*
dtype0
А
Adam/m/dense_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/dense_12/bias
y
(Adam/m/dense_12/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_12/bias*
_output_shapes
:*
dtype0
И
Adam/v/dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*'
shared_nameAdam/v/dense_12/kernel
Б
*Adam/v/dense_12/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_12/kernel*
_output_shapes

:d*
dtype0
И
Adam/m/dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*'
shared_nameAdam/m/dense_12/kernel
Б
*Adam/m/dense_12/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_12/kernel*
_output_shapes

:d*
dtype0
Щ
 Adam/v/lstm_13/lstm_cell_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*1
shared_name" Adam/v/lstm_13/lstm_cell_13/bias
Т
4Adam/v/lstm_13/lstm_cell_13/bias/Read/ReadVariableOpReadVariableOp Adam/v/lstm_13/lstm_cell_13/bias*
_output_shapes	
:Р*
dtype0
Щ
 Adam/m/lstm_13/lstm_cell_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*1
shared_name" Adam/m/lstm_13/lstm_cell_13/bias
Т
4Adam/m/lstm_13/lstm_cell_13/bias/Read/ReadVariableOpReadVariableOp Adam/m/lstm_13/lstm_cell_13/bias*
_output_shapes	
:Р*
dtype0
µ
,Adam/v/lstm_13/lstm_cell_13/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dР*=
shared_name.,Adam/v/lstm_13/lstm_cell_13/recurrent_kernel
Ѓ
@Adam/v/lstm_13/lstm_cell_13/recurrent_kernel/Read/ReadVariableOpReadVariableOp,Adam/v/lstm_13/lstm_cell_13/recurrent_kernel*
_output_shapes
:	dР*
dtype0
µ
,Adam/m/lstm_13/lstm_cell_13/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dР*=
shared_name.,Adam/m/lstm_13/lstm_cell_13/recurrent_kernel
Ѓ
@Adam/m/lstm_13/lstm_cell_13/recurrent_kernel/Read/ReadVariableOpReadVariableOp,Adam/m/lstm_13/lstm_cell_13/recurrent_kernel*
_output_shapes
:	dР*
dtype0
°
"Adam/v/lstm_13/lstm_cell_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dР*3
shared_name$"Adam/v/lstm_13/lstm_cell_13/kernel
Ъ
6Adam/v/lstm_13/lstm_cell_13/kernel/Read/ReadVariableOpReadVariableOp"Adam/v/lstm_13/lstm_cell_13/kernel*
_output_shapes
:	dР*
dtype0
°
"Adam/m/lstm_13/lstm_cell_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dР*3
shared_name$"Adam/m/lstm_13/lstm_cell_13/kernel
Ъ
6Adam/m/lstm_13/lstm_cell_13/kernel/Read/ReadVariableOpReadVariableOp"Adam/m/lstm_13/lstm_cell_13/kernel*
_output_shapes
:	dР*
dtype0
Щ
 Adam/v/lstm_12/lstm_cell_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*1
shared_name" Adam/v/lstm_12/lstm_cell_12/bias
Т
4Adam/v/lstm_12/lstm_cell_12/bias/Read/ReadVariableOpReadVariableOp Adam/v/lstm_12/lstm_cell_12/bias*
_output_shapes	
:Р*
dtype0
Щ
 Adam/m/lstm_12/lstm_cell_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*1
shared_name" Adam/m/lstm_12/lstm_cell_12/bias
Т
4Adam/m/lstm_12/lstm_cell_12/bias/Read/ReadVariableOpReadVariableOp Adam/m/lstm_12/lstm_cell_12/bias*
_output_shapes	
:Р*
dtype0
µ
,Adam/v/lstm_12/lstm_cell_12/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dР*=
shared_name.,Adam/v/lstm_12/lstm_cell_12/recurrent_kernel
Ѓ
@Adam/v/lstm_12/lstm_cell_12/recurrent_kernel/Read/ReadVariableOpReadVariableOp,Adam/v/lstm_12/lstm_cell_12/recurrent_kernel*
_output_shapes
:	dР*
dtype0
µ
,Adam/m/lstm_12/lstm_cell_12/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dР*=
shared_name.,Adam/m/lstm_12/lstm_cell_12/recurrent_kernel
Ѓ
@Adam/m/lstm_12/lstm_cell_12/recurrent_kernel/Read/ReadVariableOpReadVariableOp,Adam/m/lstm_12/lstm_cell_12/recurrent_kernel*
_output_shapes
:	dР*
dtype0
°
"Adam/v/lstm_12/lstm_cell_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
Р*3
shared_name$"Adam/v/lstm_12/lstm_cell_12/kernel
Ъ
6Adam/v/lstm_12/lstm_cell_12/kernel/Read/ReadVariableOpReadVariableOp"Adam/v/lstm_12/lstm_cell_12/kernel*
_output_shapes
:	
Р*
dtype0
°
"Adam/m/lstm_12/lstm_cell_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
Р*3
shared_name$"Adam/m/lstm_12/lstm_cell_12/kernel
Ъ
6Adam/m/lstm_12/lstm_cell_12/kernel/Read/ReadVariableOpReadVariableOp"Adam/m/lstm_12/lstm_cell_12/kernel*
_output_shapes
:	
Р*
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
Л
lstm_13/lstm_cell_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р**
shared_namelstm_13/lstm_cell_13/bias
Д
-lstm_13/lstm_cell_13/bias/Read/ReadVariableOpReadVariableOplstm_13/lstm_cell_13/bias*
_output_shapes	
:Р*
dtype0
І
%lstm_13/lstm_cell_13/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dР*6
shared_name'%lstm_13/lstm_cell_13/recurrent_kernel
†
9lstm_13/lstm_cell_13/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_13/lstm_cell_13/recurrent_kernel*
_output_shapes
:	dР*
dtype0
У
lstm_13/lstm_cell_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dР*,
shared_namelstm_13/lstm_cell_13/kernel
М
/lstm_13/lstm_cell_13/kernel/Read/ReadVariableOpReadVariableOplstm_13/lstm_cell_13/kernel*
_output_shapes
:	dР*
dtype0
Л
lstm_12/lstm_cell_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р**
shared_namelstm_12/lstm_cell_12/bias
Д
-lstm_12/lstm_cell_12/bias/Read/ReadVariableOpReadVariableOplstm_12/lstm_cell_12/bias*
_output_shapes	
:Р*
dtype0
І
%lstm_12/lstm_cell_12/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dР*6
shared_name'%lstm_12/lstm_cell_12/recurrent_kernel
†
9lstm_12/lstm_cell_12/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_12/lstm_cell_12/recurrent_kernel*
_output_shapes
:	dР*
dtype0
У
lstm_12/lstm_cell_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
Р*,
shared_namelstm_12/lstm_cell_12/kernel
М
/lstm_12/lstm_cell_12/kernel/Read/ReadVariableOpReadVariableOplstm_12/lstm_cell_12/kernel*
_output_shapes
:	
Р*
dtype0
r
dense_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_13/bias
k
!dense_13/bias/Read/ReadVariableOpReadVariableOpdense_13/bias*
_output_shapes
:
*
dtype0
z
dense_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_13/kernel
s
#dense_13/kernel/Read/ReadVariableOpReadVariableOpdense_13/kernel*
_output_shapes

:
*
dtype0
r
dense_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_12/bias
k
!dense_12/bias/Read/ReadVariableOpReadVariableOpdense_12/bias*
_output_shapes
:*
dtype0
z
dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d* 
shared_namedense_12/kernel
s
#dense_12/kernel/Read/ReadVariableOpReadVariableOpdense_12/kernel*
_output_shapes

:d*
dtype0
И
serving_default_lstm_12_inputPlaceholder*+
_output_shapes
:€€€€€€€€€
*
dtype0* 
shape:€€€€€€€€€

…
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_12_inputlstm_12/lstm_cell_12/kernel%lstm_12/lstm_cell_12/recurrent_kernellstm_12/lstm_cell_12/biaslstm_13/lstm_cell_13/kernel%lstm_13/lstm_cell_13/recurrent_kernellstm_13/lstm_cell_13/biasdense_12/kerneldense_12/biasdense_13/kerneldense_13/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *,
f'R%
#__inference_signature_wrapper_96593

NoOpNoOp
ЉN
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*чM
valueнMBкM BгM
х
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
Ѕ
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
Ѕ
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
•
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses
'_random_generator* 
¶
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses

.kernel
/bias*
¶
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
∞
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
Б
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
Я

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
г
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
Я

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
г
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
Х
non_trainable_variables
Аlayers
Бmetrics
 Вlayer_regularization_losses
Гlayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses* 

Дtrace_0
Еtrace_1* 

Жtrace_0
Зtrace_1* 
* 

.0
/1*

.0
/1*
* 
Ш
Иnon_trainable_variables
Йlayers
Кmetrics
 Лlayer_regularization_losses
Мlayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses*

Нtrace_0* 

Оtrace_0* 
_Y
VARIABLE_VALUEdense_12/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_12/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

60
71*

60
71*
* 
Ш
Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses*

Фtrace_0* 

Хtrace_0* 
_Y
VARIABLE_VALUEdense_13/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_13/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUElstm_12/lstm_cell_12/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%lstm_12/lstm_cell_12/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_12/lstm_cell_12/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUElstm_13/lstm_cell_13/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%lstm_13/lstm_cell_13/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_13/lstm_cell_13/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
* 
'
0
1
2
3
4*

Ц0
Ч1*
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
ґ
L0
Ш1
Щ2
Ъ3
Ы4
Ь5
Э6
Ю7
Я8
†9
°10
Ґ11
£12
§13
•14
¶15
І16
®17
©18
™19
Ђ20*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
T
Ш0
Ъ1
Ь2
Ю3
†4
Ґ5
§6
¶7
®8
™9*
T
Щ0
Ы1
Э2
Я3
°4
£5
•6
І7
©8
Ђ9*
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
Ш
ђnon_trainable_variables
≠layers
Ѓmetrics
 ѓlayer_regularization_losses
∞layer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses*

±trace_0
≤trace_1* 

≥trace_0
іtrace_1* 
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
Ш
µnon_trainable_variables
ґlayers
Јmetrics
 Єlayer_regularization_losses
єlayer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses*

Їtrace_0
їtrace_1* 

Љtrace_0
љtrace_1* 
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
Њ	variables
њ	keras_api

јtotal

Ѕcount*
M
¬	variables
√	keras_api

ƒtotal

≈count
∆
_fn_kwargs*
mg
VARIABLE_VALUE"Adam/m/lstm_12/lstm_cell_12/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/v/lstm_12/lstm_cell_12/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE,Adam/m/lstm_12/lstm_cell_12/recurrent_kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE,Adam/v/lstm_12/lstm_cell_12/recurrent_kernel1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE Adam/m/lstm_12/lstm_cell_12/bias1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE Adam/v/lstm_12/lstm_cell_12/bias1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/m/lstm_13/lstm_cell_13/kernel1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/v/lstm_13/lstm_cell_13/kernel1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE,Adam/m/lstm_13/lstm_cell_13/recurrent_kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE,Adam/v/lstm_13/lstm_cell_13/recurrent_kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE Adam/m/lstm_13/lstm_cell_13/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE Adam/v/lstm_13/lstm_cell_13/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_12/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_12/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_12/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_12/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_13/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_13/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_13/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_13/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
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
ј0
Ѕ1*

Њ	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

ƒ0
≈1*

¬	variables*
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
ю	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense_12/kerneldense_12/biasdense_13/kerneldense_13/biaslstm_12/lstm_cell_12/kernel%lstm_12/lstm_cell_12/recurrent_kernellstm_12/lstm_cell_12/biaslstm_13/lstm_cell_13/kernel%lstm_13/lstm_cell_13/recurrent_kernellstm_13/lstm_cell_13/bias	iterationlearning_rate"Adam/m/lstm_12/lstm_cell_12/kernel"Adam/v/lstm_12/lstm_cell_12/kernel,Adam/m/lstm_12/lstm_cell_12/recurrent_kernel,Adam/v/lstm_12/lstm_cell_12/recurrent_kernel Adam/m/lstm_12/lstm_cell_12/bias Adam/v/lstm_12/lstm_cell_12/bias"Adam/m/lstm_13/lstm_cell_13/kernel"Adam/v/lstm_13/lstm_cell_13/kernel,Adam/m/lstm_13/lstm_cell_13/recurrent_kernel,Adam/v/lstm_13/lstm_cell_13/recurrent_kernel Adam/m/lstm_13/lstm_cell_13/bias Adam/v/lstm_13/lstm_cell_13/biasAdam/m/dense_12/kernelAdam/v/dense_12/kernelAdam/m/dense_12/biasAdam/v/dense_12/biasAdam/m/dense_13/kernelAdam/v/dense_13/kernelAdam/m/dense_13/biasAdam/v/dense_13/biastotal_1count_1totalcountConst*1
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
GPU 2J 8В *'
f"R 
__inference__traced_save_98990
щ	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_12/kerneldense_12/biasdense_13/kerneldense_13/biaslstm_12/lstm_cell_12/kernel%lstm_12/lstm_cell_12/recurrent_kernellstm_12/lstm_cell_12/biaslstm_13/lstm_cell_13/kernel%lstm_13/lstm_cell_13/recurrent_kernellstm_13/lstm_cell_13/bias	iterationlearning_rate"Adam/m/lstm_12/lstm_cell_12/kernel"Adam/v/lstm_12/lstm_cell_12/kernel,Adam/m/lstm_12/lstm_cell_12/recurrent_kernel,Adam/v/lstm_12/lstm_cell_12/recurrent_kernel Adam/m/lstm_12/lstm_cell_12/bias Adam/v/lstm_12/lstm_cell_12/bias"Adam/m/lstm_13/lstm_cell_13/kernel"Adam/v/lstm_13/lstm_cell_13/kernel,Adam/m/lstm_13/lstm_cell_13/recurrent_kernel,Adam/v/lstm_13/lstm_cell_13/recurrent_kernel Adam/m/lstm_13/lstm_cell_13/bias Adam/v/lstm_13/lstm_cell_13/biasAdam/m/dense_12/kernelAdam/v/dense_12/kernelAdam/m/dense_12/biasAdam/v/dense_12/biasAdam/m/dense_13/kernelAdam/v/dense_13/kernelAdam/m/dense_13/biasAdam/v/dense_13/biastotal_1count_1totalcount*0
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
GPU 2J 8В **
f%R#
!__inference__traced_restore_99108ос 
°8
Б
B__inference_lstm_12_layer_call_and_return_conditional_losses_95241

inputs%
lstm_cell_12_95159:	
Р%
lstm_cell_12_95161:	dР!
lstm_cell_12_95163:	Р
identityИҐ$lstm_cell_12/StatefulPartitionedCallҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
:€€€€€€€€€dR
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
:€€€€€€€€€dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€
*
shrink_axis_maskс
$lstm_cell_12/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_12_95159lstm_cell_12_95161lstm_cell_12_95163*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_lstm_cell_12_layer_call_and_return_conditional_losses_95158n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ≤
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_12_95159lstm_cell_12_95161lstm_cell_12_95163*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_95172*
condR
while_cond_95171*K
output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   Ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€du
NoOpNoOp%^lstm_cell_12/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€
: : : 2L
$lstm_cell_12/StatefulPartitionedCall$lstm_cell_12/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€

 
_user_specified_nameinputs
Ш

c
D__inference_dropout_6_layer_call_and_return_conditional_losses_95971

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕМ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€d*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¶
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€dT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€da
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€d:O K
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
Й:
ѕ
while_body_95866
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_13_matmul_readvariableop_resource_0:	dРH
5while_lstm_cell_13_matmul_1_readvariableop_resource_0:	dРC
4while_lstm_cell_13_biasadd_readvariableop_resource_0:	Р
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_13_matmul_readvariableop_resource:	dРF
3while_lstm_cell_13_matmul_1_readvariableop_resource:	dРA
2while_lstm_cell_13_biasadd_readvariableop_resource:	РИҐ)while/lstm_cell_13/BiasAdd/ReadVariableOpҐ(while/lstm_cell_13/MatMul/ReadVariableOpҐ*while/lstm_cell_13/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€d*
element_dtype0Э
(while/lstm_cell_13/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_13_matmul_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0Ї
while/lstm_cell_13/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р°
*while/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_13_matmul_1_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0°
while/lstm_cell_13/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РЮ
while/lstm_cell_13/addAddV2#while/lstm_cell_13/MatMul:product:0%while/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РЫ
)while/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_13_biasadd_readvariableop_resource_0*
_output_shapes	
:Р*
dtype0І
while/lstm_cell_13/BiasAddBiasAddwhile/lstm_cell_13/add:z:01while/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рd
"while/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_13/splitSplit+while/lstm_cell_13/split/split_dim:output:0#while/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitz
while/lstm_cell_13/SigmoidSigmoid!while/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell_13/Sigmoid_1Sigmoid!while/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dЖ
while/lstm_cell_13/mulMul while/lstm_cell_13/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€dt
while/lstm_cell_13/ReluRelu!while/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dШ
while/lstm_cell_13/mul_1Mulwhile/lstm_cell_13/Sigmoid:y:0%while/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dН
while/lstm_cell_13/add_1AddV2while/lstm_cell_13/mul:z:0while/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell_13/Sigmoid_2Sigmoid!while/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€dq
while/lstm_cell_13/Relu_1Reluwhile/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dЬ
while/lstm_cell_13/mul_2Mul while/lstm_cell_13/Sigmoid_2:y:0'while/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : н
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_13/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_13/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dy
while/Identity_5Identitywhile/lstm_cell_13/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€d–

while/NoOpNoOp*^while/lstm_cell_13/BiasAdd/ReadVariableOp)^while/lstm_cell_13/MatMul/ReadVariableOp+^while/lstm_cell_13/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"j
2while_lstm_cell_13_biasadd_readvariableop_resource4while_lstm_cell_13_biasadd_readvariableop_resource_0"l
3while_lstm_cell_13_matmul_1_readvariableop_resource5while_lstm_cell_13_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_13_matmul_readvariableop_resource3while_lstm_cell_13_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : 2V
)while/lstm_cell_13/BiasAdd/ReadVariableOp)while/lstm_cell_13/BiasAdd/ReadVariableOp2T
(while/lstm_cell_13/MatMul/ReadVariableOp(while/lstm_cell_13/MatMul/ReadVariableOp2X
*while/lstm_cell_13/MatMul_1/ReadVariableOp*while/lstm_cell_13/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:
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
Г
ё
lstm_13_while_cond_96841,
(lstm_13_while_lstm_13_while_loop_counter2
.lstm_13_while_lstm_13_while_maximum_iterations
lstm_13_while_placeholder
lstm_13_while_placeholder_1
lstm_13_while_placeholder_2
lstm_13_while_placeholder_3.
*lstm_13_while_less_lstm_13_strided_slice_1C
?lstm_13_while_lstm_13_while_cond_96841___redundant_placeholder0C
?lstm_13_while_lstm_13_while_cond_96841___redundant_placeholder1C
?lstm_13_while_lstm_13_while_cond_96841___redundant_placeholder2C
?lstm_13_while_lstm_13_while_cond_96841___redundant_placeholder3
lstm_13_while_identity
В
lstm_13/while/LessLesslstm_13_while_placeholder*lstm_13_while_less_lstm_13_strided_slice_1*
T0*
_output_shapes
: [
lstm_13/while/IdentityIdentitylstm_13/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_13_while_identitylstm_13/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€d:€€€€€€€€€d: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:
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
_user_specified_name" lstm_13/while/maximum_iterations:R N

_output_shapes
: 
4
_user_specified_namelstm_13/while/loop_counter
„
b
D__inference_dropout_6_layer_call_and_return_conditional_losses_96317

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€d[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€d"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€d:O K
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
э
і
'__inference_lstm_12_layer_call_fn_97292

inputs
unknown:	
Р
	unknown_0:	dР
	unknown_1:	Р
identityИҐStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_12_layer_call_and_return_conditional_losses_96153s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
ЋЈ
і	
G__inference_sequential_6_layer_call_and_return_conditional_losses_97248

inputsF
3lstm_12_lstm_cell_12_matmul_readvariableop_resource:	
РH
5lstm_12_lstm_cell_12_matmul_1_readvariableop_resource:	dРC
4lstm_12_lstm_cell_12_biasadd_readvariableop_resource:	РF
3lstm_13_lstm_cell_13_matmul_readvariableop_resource:	dРH
5lstm_13_lstm_cell_13_matmul_1_readvariableop_resource:	dРC
4lstm_13_lstm_cell_13_biasadd_readvariableop_resource:	Р9
'dense_12_matmul_readvariableop_resource:d6
(dense_12_biasadd_readvariableop_resource:9
'dense_13_matmul_readvariableop_resource:
6
(dense_13_biasadd_readvariableop_resource:

identityИҐdense_12/BiasAdd/ReadVariableOpҐdense_12/MatMul/ReadVariableOpҐdense_13/BiasAdd/ReadVariableOpҐdense_13/MatMul/ReadVariableOpҐ+lstm_12/lstm_cell_12/BiasAdd/ReadVariableOpҐ*lstm_12/lstm_cell_12/MatMul/ReadVariableOpҐ,lstm_12/lstm_cell_12/MatMul_1/ReadVariableOpҐlstm_12/whileҐ+lstm_13/lstm_cell_13/BiasAdd/ReadVariableOpҐ*lstm_13/lstm_cell_13/MatMul/ReadVariableOpҐ,lstm_13/lstm_cell_13/MatMul_1/ReadVariableOpҐlstm_13/whileQ
lstm_12/ShapeShapeinputs*
T0*
_output_shapes
::нѕe
lstm_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
lstm_12/strided_sliceStridedSlicelstm_12/Shape:output:0$lstm_12/strided_slice/stack:output:0&lstm_12/strided_slice/stack_1:output:0&lstm_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_12/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dЛ
lstm_12/zeros/packedPacklstm_12/strided_slice:output:0lstm_12/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_12/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Д
lstm_12/zerosFilllstm_12/zeros/packed:output:0lstm_12/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dZ
lstm_12/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dП
lstm_12/zeros_1/packedPacklstm_12/strided_slice:output:0!lstm_12/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_12/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    К
lstm_12/zeros_1Filllstm_12/zeros_1/packed:output:0lstm_12/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dk
lstm_12/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_12/transpose	Transposeinputslstm_12/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€
b
lstm_12/Shape_1Shapelstm_12/transpose:y:0*
T0*
_output_shapes
::нѕg
lstm_12/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_12/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_12/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Г
lstm_12/strided_slice_1StridedSlicelstm_12/Shape_1:output:0&lstm_12/strided_slice_1/stack:output:0(lstm_12/strided_slice_1/stack_1:output:0(lstm_12/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_12/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€ћ
lstm_12/TensorArrayV2TensorListReserve,lstm_12/TensorArrayV2/element_shape:output:0 lstm_12/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“О
=lstm_12/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   ш
/lstm_12/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_12/transpose:y:0Flstm_12/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“g
lstm_12/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_12/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_12/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:С
lstm_12/strided_slice_2StridedSlicelstm_12/transpose:y:0&lstm_12/strided_slice_2/stack:output:0(lstm_12/strided_slice_2/stack_1:output:0(lstm_12/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€
*
shrink_axis_maskЯ
*lstm_12/lstm_cell_12/MatMul/ReadVariableOpReadVariableOp3lstm_12_lstm_cell_12_matmul_readvariableop_resource*
_output_shapes
:	
Р*
dtype0Ѓ
lstm_12/lstm_cell_12/MatMulMatMul lstm_12/strided_slice_2:output:02lstm_12/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р£
,lstm_12/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp5lstm_12_lstm_cell_12_matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0®
lstm_12/lstm_cell_12/MatMul_1MatMullstm_12/zeros:output:04lstm_12/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р§
lstm_12/lstm_cell_12/addAddV2%lstm_12/lstm_cell_12/MatMul:product:0'lstm_12/lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РЭ
+lstm_12/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp4lstm_12_lstm_cell_12_biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0≠
lstm_12/lstm_cell_12/BiasAddBiasAddlstm_12/lstm_cell_12/add:z:03lstm_12/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рf
$lstm_12/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :х
lstm_12/lstm_cell_12/splitSplit-lstm_12/lstm_cell_12/split/split_dim:output:0%lstm_12/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_split~
lstm_12/lstm_cell_12/SigmoidSigmoid#lstm_12/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€dА
lstm_12/lstm_cell_12/Sigmoid_1Sigmoid#lstm_12/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dП
lstm_12/lstm_cell_12/mulMul"lstm_12/lstm_cell_12/Sigmoid_1:y:0lstm_12/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dx
lstm_12/lstm_cell_12/ReluRelu#lstm_12/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dЮ
lstm_12/lstm_cell_12/mul_1Mul lstm_12/lstm_cell_12/Sigmoid:y:0'lstm_12/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dУ
lstm_12/lstm_cell_12/add_1AddV2lstm_12/lstm_cell_12/mul:z:0lstm_12/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dА
lstm_12/lstm_cell_12/Sigmoid_2Sigmoid#lstm_12/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€du
lstm_12/lstm_cell_12/Relu_1Relulstm_12/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dҐ
lstm_12/lstm_cell_12/mul_2Mul"lstm_12/lstm_cell_12/Sigmoid_2:y:0)lstm_12/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dv
%lstm_12/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   –
lstm_12/TensorArrayV2_1TensorListReserve.lstm_12/TensorArrayV2_1/element_shape:output:0 lstm_12/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“N
lstm_12/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_12/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€\
lstm_12/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : р
lstm_12/whileWhile#lstm_12/while/loop_counter:output:0)lstm_12/while/maximum_iterations:output:0lstm_12/time:output:0 lstm_12/TensorArrayV2_1:handle:0lstm_12/zeros:output:0lstm_12/zeros_1:output:0 lstm_12/strided_slice_1:output:0?lstm_12/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_12_lstm_cell_12_matmul_readvariableop_resource5lstm_12_lstm_cell_12_matmul_1_readvariableop_resource4lstm_12_lstm_cell_12_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_12_while_body_97008*$
condR
lstm_12_while_cond_97007*K
output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *
parallel_iterations Й
8lstm_12/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   Џ
*lstm_12/TensorArrayV2Stack/TensorListStackTensorListStacklstm_12/while:output:3Alstm_12/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€d*
element_dtype0p
lstm_12/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€i
lstm_12/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_12/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѓ
lstm_12/strided_slice_3StridedSlice3lstm_12/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_12/strided_slice_3/stack:output:0(lstm_12/strided_slice_3/stack_1:output:0(lstm_12/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maskm
lstm_12/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ѓ
lstm_12/transpose_1	Transpose3lstm_12/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_12/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€dc
lstm_12/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
lstm_13/ShapeShapelstm_12/transpose_1:y:0*
T0*
_output_shapes
::нѕe
lstm_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
lstm_13/strided_sliceStridedSlicelstm_13/Shape:output:0$lstm_13/strided_slice/stack:output:0&lstm_13/strided_slice/stack_1:output:0&lstm_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_13/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dЛ
lstm_13/zeros/packedPacklstm_13/strided_slice:output:0lstm_13/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_13/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Д
lstm_13/zerosFilllstm_13/zeros/packed:output:0lstm_13/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dZ
lstm_13/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dП
lstm_13/zeros_1/packedPacklstm_13/strided_slice:output:0!lstm_13/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_13/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    К
lstm_13/zeros_1Filllstm_13/zeros_1/packed:output:0lstm_13/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dk
lstm_13/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          О
lstm_13/transpose	Transposelstm_12/transpose_1:y:0lstm_13/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€db
lstm_13/Shape_1Shapelstm_13/transpose:y:0*
T0*
_output_shapes
::нѕg
lstm_13/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_13/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_13/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Г
lstm_13/strided_slice_1StridedSlicelstm_13/Shape_1:output:0&lstm_13/strided_slice_1/stack:output:0(lstm_13/strided_slice_1/stack_1:output:0(lstm_13/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_13/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€ћ
lstm_13/TensorArrayV2TensorListReserve,lstm_13/TensorArrayV2/element_shape:output:0 lstm_13/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“О
=lstm_13/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ш
/lstm_13/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_13/transpose:y:0Flstm_13/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“g
lstm_13/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_13/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_13/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:С
lstm_13/strided_slice_2StridedSlicelstm_13/transpose:y:0&lstm_13/strided_slice_2/stack:output:0(lstm_13/strided_slice_2/stack_1:output:0(lstm_13/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maskЯ
*lstm_13/lstm_cell_13/MatMul/ReadVariableOpReadVariableOp3lstm_13_lstm_cell_13_matmul_readvariableop_resource*
_output_shapes
:	dР*
dtype0Ѓ
lstm_13/lstm_cell_13/MatMulMatMul lstm_13/strided_slice_2:output:02lstm_13/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р£
,lstm_13/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp5lstm_13_lstm_cell_13_matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0®
lstm_13/lstm_cell_13/MatMul_1MatMullstm_13/zeros:output:04lstm_13/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р§
lstm_13/lstm_cell_13/addAddV2%lstm_13/lstm_cell_13/MatMul:product:0'lstm_13/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РЭ
+lstm_13/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp4lstm_13_lstm_cell_13_biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0≠
lstm_13/lstm_cell_13/BiasAddBiasAddlstm_13/lstm_cell_13/add:z:03lstm_13/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рf
$lstm_13/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :х
lstm_13/lstm_cell_13/splitSplit-lstm_13/lstm_cell_13/split/split_dim:output:0%lstm_13/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_split~
lstm_13/lstm_cell_13/SigmoidSigmoid#lstm_13/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€dА
lstm_13/lstm_cell_13/Sigmoid_1Sigmoid#lstm_13/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dП
lstm_13/lstm_cell_13/mulMul"lstm_13/lstm_cell_13/Sigmoid_1:y:0lstm_13/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dx
lstm_13/lstm_cell_13/ReluRelu#lstm_13/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dЮ
lstm_13/lstm_cell_13/mul_1Mul lstm_13/lstm_cell_13/Sigmoid:y:0'lstm_13/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dУ
lstm_13/lstm_cell_13/add_1AddV2lstm_13/lstm_cell_13/mul:z:0lstm_13/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dА
lstm_13/lstm_cell_13/Sigmoid_2Sigmoid#lstm_13/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€du
lstm_13/lstm_cell_13/Relu_1Relulstm_13/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dҐ
lstm_13/lstm_cell_13/mul_2Mul"lstm_13/lstm_cell_13/Sigmoid_2:y:0)lstm_13/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dv
%lstm_13/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   f
$lstm_13/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_13/TensorArrayV2_1TensorListReserve.lstm_13/TensorArrayV2_1/element_shape:output:0-lstm_13/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“N
lstm_13/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_13/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€\
lstm_13/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : р
lstm_13/whileWhile#lstm_13/while/loop_counter:output:0)lstm_13/while/maximum_iterations:output:0lstm_13/time:output:0 lstm_13/TensorArrayV2_1:handle:0lstm_13/zeros:output:0lstm_13/zeros_1:output:0 lstm_13/strided_slice_1:output:0?lstm_13/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_13_lstm_cell_13_matmul_readvariableop_resource5lstm_13_lstm_cell_13_matmul_1_readvariableop_resource4lstm_13_lstm_cell_13_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_13_while_body_97148*$
condR
lstm_13_while_cond_97147*K
output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *
parallel_iterations Й
8lstm_13/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   о
*lstm_13/TensorArrayV2Stack/TensorListStackTensorListStacklstm_13/while:output:3Alstm_13/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€d*
element_dtype0*
num_elementsp
lstm_13/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€i
lstm_13/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_13/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѓ
lstm_13/strided_slice_3StridedSlice3lstm_13/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_13/strided_slice_3/stack:output:0(lstm_13/strided_slice_3/stack_1:output:0(lstm_13/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maskm
lstm_13/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ѓ
lstm_13/transpose_1	Transpose3lstm_13/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_13/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€dc
lstm_13/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
dropout_6/IdentityIdentity lstm_13/strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€dЖ
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0Р
dense_12/MatMulMatMuldropout_6/Identity:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Д
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€b
dense_12/ReluReludense_12/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ж
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0Р
dense_13/MatMulMatMuldense_12/Relu:activations:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
Д
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0С
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
h
dense_13/SoftmaxSoftmaxdense_13/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
i
IdentityIdentitydense_13/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
А
NoOpNoOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp,^lstm_12/lstm_cell_12/BiasAdd/ReadVariableOp+^lstm_12/lstm_cell_12/MatMul/ReadVariableOp-^lstm_12/lstm_cell_12/MatMul_1/ReadVariableOp^lstm_12/while,^lstm_13/lstm_cell_13/BiasAdd/ReadVariableOp+^lstm_13/lstm_cell_13/MatMul/ReadVariableOp-^lstm_13/lstm_cell_13/MatMul_1/ReadVariableOp^lstm_13/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€
: : : : : : : : : : 2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2Z
+lstm_12/lstm_cell_12/BiasAdd/ReadVariableOp+lstm_12/lstm_cell_12/BiasAdd/ReadVariableOp2X
*lstm_12/lstm_cell_12/MatMul/ReadVariableOp*lstm_12/lstm_cell_12/MatMul/ReadVariableOp2\
,lstm_12/lstm_cell_12/MatMul_1/ReadVariableOp,lstm_12/lstm_cell_12/MatMul_1/ReadVariableOp2
lstm_12/whilelstm_12/while2Z
+lstm_13/lstm_cell_13/BiasAdd/ReadVariableOp+lstm_13/lstm_cell_13/BiasAdd/ReadVariableOp2X
*lstm_13/lstm_cell_13/MatMul/ReadVariableOp*lstm_13/lstm_cell_13/MatMul/ReadVariableOp2\
,lstm_13/lstm_cell_13/MatMul_1/ReadVariableOp,lstm_13/lstm_cell_13/MatMul_1/ReadVariableOp2
lstm_13/whilelstm_13/while:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
¬K
Ъ
B__inference_lstm_13_layer_call_and_return_conditional_losses_96305

inputs>
+lstm_cell_13_matmul_readvariableop_resource:	dР@
-lstm_cell_13_matmul_1_readvariableop_resource:	dР;
,lstm_cell_13_biasadd_readvariableop_resource:	Р
identityИҐ#lstm_cell_13/BiasAdd/ReadVariableOpҐ"lstm_cell_13/MatMul/ReadVariableOpҐ$lstm_cell_13/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
:€€€€€€€€€dR
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
:€€€€€€€€€dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€dR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maskП
"lstm_cell_13/MatMul/ReadVariableOpReadVariableOp+lstm_cell_13_matmul_readvariableop_resource*
_output_shapes
:	dР*
dtype0Ц
lstm_cell_13/MatMulMatMulstrided_slice_2:output:0*lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РУ
$lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_13_matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0Р
lstm_cell_13/MatMul_1MatMulzeros:output:0,lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РМ
lstm_cell_13/addAddV2lstm_cell_13/MatMul:product:0lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РН
#lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_13_biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0Х
lstm_cell_13/BiasAddBiasAddlstm_cell_13/add:z:0+lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р^
lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_13/splitSplit%lstm_cell_13/split/split_dim:output:0lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitn
lstm_cell_13/SigmoidSigmoidlstm_cell_13/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell_13/Sigmoid_1Sigmoidlstm_cell_13/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dw
lstm_cell_13/mulMullstm_cell_13/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dh
lstm_cell_13/ReluRelulstm_cell_13/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dЖ
lstm_cell_13/mul_1Mullstm_cell_13/Sigmoid:y:0lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€d{
lstm_cell_13/add_1AddV2lstm_cell_13/mul:z:0lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell_13/Sigmoid_2Sigmoidlstm_cell_13/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€de
lstm_cell_13/Relu_1Relulstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dК
lstm_cell_13/mul_2Mullstm_cell_13/Sigmoid_2:y:0!lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : А
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_13_matmul_readvariableop_resource-lstm_cell_13_matmul_1_readvariableop_resource,lstm_cell_13_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_96220*
condR
while_cond_96219*K
output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€d*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dј
NoOpNoOp$^lstm_cell_13/BiasAdd/ReadVariableOp#^lstm_cell_13/MatMul/ReadVariableOp%^lstm_cell_13/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€d: : : 2J
#lstm_cell_13/BiasAdd/ReadVariableOp#lstm_cell_13/BiasAdd/ReadVariableOp2H
"lstm_cell_13/MatMul/ReadVariableOp"lstm_cell_13/MatMul/ReadVariableOp2L
$lstm_cell_13/MatMul_1/ReadVariableOp$lstm_cell_13/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
Й
в
%sequential_6_lstm_13_while_cond_94848F
Bsequential_6_lstm_13_while_sequential_6_lstm_13_while_loop_counterL
Hsequential_6_lstm_13_while_sequential_6_lstm_13_while_maximum_iterations*
&sequential_6_lstm_13_while_placeholder,
(sequential_6_lstm_13_while_placeholder_1,
(sequential_6_lstm_13_while_placeholder_2,
(sequential_6_lstm_13_while_placeholder_3H
Dsequential_6_lstm_13_while_less_sequential_6_lstm_13_strided_slice_1]
Ysequential_6_lstm_13_while_sequential_6_lstm_13_while_cond_94848___redundant_placeholder0]
Ysequential_6_lstm_13_while_sequential_6_lstm_13_while_cond_94848___redundant_placeholder1]
Ysequential_6_lstm_13_while_sequential_6_lstm_13_while_cond_94848___redundant_placeholder2]
Ysequential_6_lstm_13_while_sequential_6_lstm_13_while_cond_94848___redundant_placeholder3'
#sequential_6_lstm_13_while_identity
ґ
sequential_6/lstm_13/while/LessLess&sequential_6_lstm_13_while_placeholderDsequential_6_lstm_13_while_less_sequential_6_lstm_13_strided_slice_1*
T0*
_output_shapes
: u
#sequential_6/lstm_13/while/IdentityIdentity#sequential_6/lstm_13/while/Less:z:0*
T0
*
_output_shapes
: "S
#sequential_6_lstm_13_while_identity,sequential_6/lstm_13/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€d:€€€€€€€€€d: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:

_output_shapes
: :

_output_shapes
: :ea

_output_shapes
: 
G
_user_specified_name/-sequential_6/lstm_13/while/maximum_iterations:_ [

_output_shapes
: 
A
_user_specified_name)'sequential_6/lstm_13/while/loop_counter
Т	
Њ
while_cond_98402
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_98402___redundant_placeholder03
/while_while_cond_98402___redundant_placeholder13
/while_while_cond_98402___redundant_placeholder23
/while_while_cond_98402___redundant_placeholder3
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
@: : : : :€€€€€€€€€d:€€€€€€€€€d: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:
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
Т	
Њ
while_cond_95026
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_95026___redundant_placeholder03
/while_while_cond_95026___redundant_placeholder13
/while_while_cond_95026___redundant_placeholder23
/while_while_cond_95026___redundant_placeholder3
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
@: : : : :€€€€€€€€€d:€€€€€€€€€d: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:
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
ј
Х
(__inference_dense_12_layer_call_fn_98524

inputs
unknown:d
	unknown_0:
identityИҐStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_12_layer_call_and_return_conditional_losses_95984o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€d: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
х
і
'__inference_lstm_13_layer_call_fn_97908

inputs
unknown:	dР
	unknown_0:	dР
	unknown_1:	Р
identityИҐStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_13_layer_call_and_return_conditional_losses_96305o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
ЉJ
Ъ
B__inference_lstm_12_layer_call_and_return_conditional_losses_95799

inputs>
+lstm_cell_12_matmul_readvariableop_resource:	
Р@
-lstm_cell_12_matmul_1_readvariableop_resource:	dР;
,lstm_cell_12_biasadd_readvariableop_resource:	Р
identityИҐ#lstm_cell_12/BiasAdd/ReadVariableOpҐ"lstm_cell_12/MatMul/ReadVariableOpҐ$lstm_cell_12/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
:€€€€€€€€€dR
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
:€€€€€€€€€dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€
R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€
*
shrink_axis_maskП
"lstm_cell_12/MatMul/ReadVariableOpReadVariableOp+lstm_cell_12_matmul_readvariableop_resource*
_output_shapes
:	
Р*
dtype0Ц
lstm_cell_12/MatMulMatMulstrided_slice_2:output:0*lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РУ
$lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_12_matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0Р
lstm_cell_12/MatMul_1MatMulzeros:output:0,lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РМ
lstm_cell_12/addAddV2lstm_cell_12/MatMul:product:0lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РН
#lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_12_biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0Х
lstm_cell_12/BiasAddBiasAddlstm_cell_12/add:z:0+lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р^
lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_12/splitSplit%lstm_cell_12/split/split_dim:output:0lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitn
lstm_cell_12/SigmoidSigmoidlstm_cell_12/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell_12/Sigmoid_1Sigmoidlstm_cell_12/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dw
lstm_cell_12/mulMullstm_cell_12/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dh
lstm_cell_12/ReluRelulstm_cell_12/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dЖ
lstm_cell_12/mul_1Mullstm_cell_12/Sigmoid:y:0lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€d{
lstm_cell_12/add_1AddV2lstm_cell_12/mul:z:0lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell_12/Sigmoid_2Sigmoidlstm_cell_12/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€de
lstm_cell_12/Relu_1Relulstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dК
lstm_cell_12/mul_2Mullstm_cell_12/Sigmoid_2:y:0!lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : А
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_12_matmul_readvariableop_resource-lstm_cell_12_matmul_1_readvariableop_resource,lstm_cell_12_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_95715*
condR
while_cond_95714*K
output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ¬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€dј
NoOpNoOp$^lstm_cell_12/BiasAdd/ReadVariableOp#^lstm_cell_12/MatMul/ReadVariableOp%^lstm_cell_12/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€
: : : 2J
#lstm_cell_12/BiasAdd/ReadVariableOp#lstm_cell_12/BiasAdd/ReadVariableOp2H
"lstm_cell_12/MatMul/ReadVariableOp"lstm_cell_12/MatMul/ReadVariableOp2L
$lstm_cell_12/MatMul_1/ReadVariableOp$lstm_cell_12/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
й
х
,__inference_lstm_cell_13_layer_call_fn_98687

inputs
states_0
states_1
unknown:	dР
	unknown_0:	dР
	unknown_1:	Р
identity

identity_1

identity_2ИҐStatefulPartitionedCallІ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_lstm_cell_13_layer_call_and_return_conditional_losses_95510o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:QM
'
_output_shapes
:€€€€€€€€€d
"
_user_specified_name
states_1:QM
'
_output_shapes
:€€€€€€€€€d
"
_user_specified_name
states_0:O K
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
ґB
ѕ

lstm_12_while_body_97008,
(lstm_12_while_lstm_12_while_loop_counter2
.lstm_12_while_lstm_12_while_maximum_iterations
lstm_12_while_placeholder
lstm_12_while_placeholder_1
lstm_12_while_placeholder_2
lstm_12_while_placeholder_3+
'lstm_12_while_lstm_12_strided_slice_1_0g
clstm_12_while_tensorarrayv2read_tensorlistgetitem_lstm_12_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_12_while_lstm_cell_12_matmul_readvariableop_resource_0:	
РP
=lstm_12_while_lstm_cell_12_matmul_1_readvariableop_resource_0:	dРK
<lstm_12_while_lstm_cell_12_biasadd_readvariableop_resource_0:	Р
lstm_12_while_identity
lstm_12_while_identity_1
lstm_12_while_identity_2
lstm_12_while_identity_3
lstm_12_while_identity_4
lstm_12_while_identity_5)
%lstm_12_while_lstm_12_strided_slice_1e
alstm_12_while_tensorarrayv2read_tensorlistgetitem_lstm_12_tensorarrayunstack_tensorlistfromtensorL
9lstm_12_while_lstm_cell_12_matmul_readvariableop_resource:	
РN
;lstm_12_while_lstm_cell_12_matmul_1_readvariableop_resource:	dРI
:lstm_12_while_lstm_cell_12_biasadd_readvariableop_resource:	РИҐ1lstm_12/while/lstm_cell_12/BiasAdd/ReadVariableOpҐ0lstm_12/while/lstm_cell_12/MatMul/ReadVariableOpҐ2lstm_12/while/lstm_cell_12/MatMul_1/ReadVariableOpР
?lstm_12/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   ќ
1lstm_12/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_12_while_tensorarrayv2read_tensorlistgetitem_lstm_12_tensorarrayunstack_tensorlistfromtensor_0lstm_12_while_placeholderHlstm_12/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€
*
element_dtype0≠
0lstm_12/while/lstm_cell_12/MatMul/ReadVariableOpReadVariableOp;lstm_12_while_lstm_cell_12_matmul_readvariableop_resource_0*
_output_shapes
:	
Р*
dtype0“
!lstm_12/while/lstm_cell_12/MatMulMatMul8lstm_12/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_12/while/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р±
2lstm_12/while/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp=lstm_12_while_lstm_cell_12_matmul_1_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0є
#lstm_12/while/lstm_cell_12/MatMul_1MatMullstm_12_while_placeholder_2:lstm_12/while/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рґ
lstm_12/while/lstm_cell_12/addAddV2+lstm_12/while/lstm_cell_12/MatMul:product:0-lstm_12/while/lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РЂ
1lstm_12/while/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp<lstm_12_while_lstm_cell_12_biasadd_readvariableop_resource_0*
_output_shapes	
:Р*
dtype0њ
"lstm_12/while/lstm_cell_12/BiasAddBiasAdd"lstm_12/while/lstm_cell_12/add:z:09lstm_12/while/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рl
*lstm_12/while/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :З
 lstm_12/while/lstm_cell_12/splitSplit3lstm_12/while/lstm_cell_12/split/split_dim:output:0+lstm_12/while/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitК
"lstm_12/while/lstm_cell_12/SigmoidSigmoid)lstm_12/while/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€dМ
$lstm_12/while/lstm_cell_12/Sigmoid_1Sigmoid)lstm_12/while/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dЮ
lstm_12/while/lstm_cell_12/mulMul(lstm_12/while/lstm_cell_12/Sigmoid_1:y:0lstm_12_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€dД
lstm_12/while/lstm_cell_12/ReluRelu)lstm_12/while/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€d∞
 lstm_12/while/lstm_cell_12/mul_1Mul&lstm_12/while/lstm_cell_12/Sigmoid:y:0-lstm_12/while/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€d•
 lstm_12/while/lstm_cell_12/add_1AddV2"lstm_12/while/lstm_cell_12/mul:z:0$lstm_12/while/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dМ
$lstm_12/while/lstm_cell_12/Sigmoid_2Sigmoid)lstm_12/while/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€dБ
!lstm_12/while/lstm_cell_12/Relu_1Relu$lstm_12/while/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dі
 lstm_12/while/lstm_cell_12/mul_2Mul(lstm_12/while/lstm_cell_12/Sigmoid_2:y:0/lstm_12/while/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dе
2lstm_12/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_12_while_placeholder_1lstm_12_while_placeholder$lstm_12/while/lstm_cell_12/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“U
lstm_12/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_12/while/addAddV2lstm_12_while_placeholderlstm_12/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_12/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :З
lstm_12/while/add_1AddV2(lstm_12_while_lstm_12_while_loop_counterlstm_12/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_12/while/IdentityIdentitylstm_12/while/add_1:z:0^lstm_12/while/NoOp*
T0*
_output_shapes
: К
lstm_12/while/Identity_1Identity.lstm_12_while_lstm_12_while_maximum_iterations^lstm_12/while/NoOp*
T0*
_output_shapes
: q
lstm_12/while/Identity_2Identitylstm_12/while/add:z:0^lstm_12/while/NoOp*
T0*
_output_shapes
: Ю
lstm_12/while/Identity_3IdentityBlstm_12/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_12/while/NoOp*
T0*
_output_shapes
: С
lstm_12/while/Identity_4Identity$lstm_12/while/lstm_cell_12/mul_2:z:0^lstm_12/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dС
lstm_12/while/Identity_5Identity$lstm_12/while/lstm_cell_12/add_1:z:0^lstm_12/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dр
lstm_12/while/NoOpNoOp2^lstm_12/while/lstm_cell_12/BiasAdd/ReadVariableOp1^lstm_12/while/lstm_cell_12/MatMul/ReadVariableOp3^lstm_12/while/lstm_cell_12/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "=
lstm_12_while_identity_1!lstm_12/while/Identity_1:output:0"=
lstm_12_while_identity_2!lstm_12/while/Identity_2:output:0"=
lstm_12_while_identity_3!lstm_12/while/Identity_3:output:0"=
lstm_12_while_identity_4!lstm_12/while/Identity_4:output:0"=
lstm_12_while_identity_5!lstm_12/while/Identity_5:output:0"9
lstm_12_while_identitylstm_12/while/Identity:output:0"P
%lstm_12_while_lstm_12_strided_slice_1'lstm_12_while_lstm_12_strided_slice_1_0"z
:lstm_12_while_lstm_cell_12_biasadd_readvariableop_resource<lstm_12_while_lstm_cell_12_biasadd_readvariableop_resource_0"|
;lstm_12_while_lstm_cell_12_matmul_1_readvariableop_resource=lstm_12_while_lstm_cell_12_matmul_1_readvariableop_resource_0"x
9lstm_12_while_lstm_cell_12_matmul_readvariableop_resource;lstm_12_while_lstm_cell_12_matmul_readvariableop_resource_0"»
alstm_12_while_tensorarrayv2read_tensorlistgetitem_lstm_12_tensorarrayunstack_tensorlistfromtensorclstm_12_while_tensorarrayv2read_tensorlistgetitem_lstm_12_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : 2f
1lstm_12/while/lstm_cell_12/BiasAdd/ReadVariableOp1lstm_12/while/lstm_cell_12/BiasAdd/ReadVariableOp2d
0lstm_12/while/lstm_cell_12/MatMul/ReadVariableOp0lstm_12/while/lstm_cell_12/MatMul/ReadVariableOp2h
2lstm_12/while/lstm_cell_12/MatMul_1/ReadVariableOp2lstm_12/while/lstm_cell_12/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:
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
_user_specified_name" lstm_12/while/maximum_iterations:R N

_output_shapes
: 
4
_user_specified_namelstm_12/while/loop_counter
Ј#
№
while_body_95027
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_12_95051_0:	
Р-
while_lstm_cell_12_95053_0:	dР)
while_lstm_cell_12_95055_0:	Р
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_12_95051:	
Р+
while_lstm_cell_12_95053:	dР'
while_lstm_cell_12_95055:	РИҐ*while/lstm_cell_12/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€
*
element_dtype0ѓ
*while/lstm_cell_12/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_12_95051_0while_lstm_cell_12_95053_0while_lstm_cell_12_95055_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_lstm_cell_12_layer_call_and_return_conditional_losses_95013№
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_12/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Р
while/Identity_4Identity3while/lstm_cell_12/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dР
while/Identity_5Identity3while/lstm_cell_12/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dy

while/NoOpNoOp+^while/lstm_cell_12/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"6
while_lstm_cell_12_95051while_lstm_cell_12_95051_0"6
while_lstm_cell_12_95053while_lstm_cell_12_95053_0"6
while_lstm_cell_12_95055while_lstm_cell_12_95055_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : 2X
*while/lstm_cell_12/StatefulPartitionedCall*while/lstm_cell_12/StatefulPartitionedCall:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:
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
№
Е
G__inference_lstm_cell_13_layer_call_and_return_conditional_losses_98751

inputs
states_0
states_11
matmul_readvariableop_resource:	dР3
 matmul_1_readvariableop_resource:	dР.
biasadd_readvariableop_resource:	Р
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dР*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Рs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:QM
'
_output_shapes
:€€€€€€€€€d
"
_user_specified_name
states_1:QM
'
_output_shapes
:€€€€€€€€€d
"
_user_specified_name
states_0:O K
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
„
b
D__inference_dropout_6_layer_call_and_return_conditional_losses_98515

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€d[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€d"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€d:O K
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
п
b
)__inference_dropout_6_layer_call_fn_98493

inputs
identityИҐStatefulPartitionedCallњ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_95971o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€d22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
Г
ё
lstm_13_while_cond_97147,
(lstm_13_while_lstm_13_while_loop_counter2
.lstm_13_while_lstm_13_while_maximum_iterations
lstm_13_while_placeholder
lstm_13_while_placeholder_1
lstm_13_while_placeholder_2
lstm_13_while_placeholder_3.
*lstm_13_while_less_lstm_13_strided_slice_1C
?lstm_13_while_lstm_13_while_cond_97147___redundant_placeholder0C
?lstm_13_while_lstm_13_while_cond_97147___redundant_placeholder1C
?lstm_13_while_lstm_13_while_cond_97147___redundant_placeholder2C
?lstm_13_while_lstm_13_while_cond_97147___redundant_placeholder3
lstm_13_while_identity
В
lstm_13/while/LessLesslstm_13_while_placeholder*lstm_13_while_less_lstm_13_strided_slice_1*
T0*
_output_shapes
: [
lstm_13/while/IdentityIdentitylstm_13/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_13_while_identitylstm_13/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€d:€€€€€€€€€d: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:
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
_user_specified_name" lstm_13/while/maximum_iterations:R N

_output_shapes
: 
4
_user_specified_namelstm_13/while/loop_counter
‘
Г
G__inference_lstm_cell_13_layer_call_and_return_conditional_losses_95363

inputs

states
states_11
matmul_readvariableop_resource:	dР3
 matmul_1_readvariableop_resource:	dР.
biasadd_readvariableop_resource:	Р
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dР*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Рs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:OK
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_namestates:O K
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
¬K
Ъ
B__inference_lstm_13_layer_call_and_return_conditional_losses_98343

inputs>
+lstm_cell_13_matmul_readvariableop_resource:	dР@
-lstm_cell_13_matmul_1_readvariableop_resource:	dР;
,lstm_cell_13_biasadd_readvariableop_resource:	Р
identityИҐ#lstm_cell_13/BiasAdd/ReadVariableOpҐ"lstm_cell_13/MatMul/ReadVariableOpҐ$lstm_cell_13/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
:€€€€€€€€€dR
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
:€€€€€€€€€dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€dR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maskП
"lstm_cell_13/MatMul/ReadVariableOpReadVariableOp+lstm_cell_13_matmul_readvariableop_resource*
_output_shapes
:	dР*
dtype0Ц
lstm_cell_13/MatMulMatMulstrided_slice_2:output:0*lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РУ
$lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_13_matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0Р
lstm_cell_13/MatMul_1MatMulzeros:output:0,lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РМ
lstm_cell_13/addAddV2lstm_cell_13/MatMul:product:0lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РН
#lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_13_biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0Х
lstm_cell_13/BiasAddBiasAddlstm_cell_13/add:z:0+lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р^
lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_13/splitSplit%lstm_cell_13/split/split_dim:output:0lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitn
lstm_cell_13/SigmoidSigmoidlstm_cell_13/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell_13/Sigmoid_1Sigmoidlstm_cell_13/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dw
lstm_cell_13/mulMullstm_cell_13/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dh
lstm_cell_13/ReluRelulstm_cell_13/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dЖ
lstm_cell_13/mul_1Mullstm_cell_13/Sigmoid:y:0lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€d{
lstm_cell_13/add_1AddV2lstm_cell_13/mul:z:0lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell_13/Sigmoid_2Sigmoidlstm_cell_13/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€de
lstm_cell_13/Relu_1Relulstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dК
lstm_cell_13/mul_2Mullstm_cell_13/Sigmoid_2:y:0!lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : А
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_13_matmul_readvariableop_resource-lstm_cell_13_matmul_1_readvariableop_resource,lstm_cell_13_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_98258*
condR
while_cond_98257*K
output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€d*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dј
NoOpNoOp$^lstm_cell_13/BiasAdd/ReadVariableOp#^lstm_cell_13/MatMul/ReadVariableOp%^lstm_cell_13/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€d: : : 2J
#lstm_cell_13/BiasAdd/ReadVariableOp#lstm_cell_13/BiasAdd/ReadVariableOp2H
"lstm_cell_13/MatMul/ReadVariableOp"lstm_cell_13/MatMul/ReadVariableOp2L
$lstm_cell_13/MatMul_1/ReadVariableOp$lstm_cell_13/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
Т	
Њ
while_cond_97967
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_97967___redundant_placeholder03
/while_while_cond_97967___redundant_placeholder13
/while_while_cond_97967___redundant_placeholder23
/while_while_cond_97967___redundant_placeholder3
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
@: : : : :€€€€€€€€€d:€€€€€€€€€d: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:
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
Т	
Њ
while_cond_97493
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_97493___redundant_placeholder03
/while_while_cond_97493___redundant_placeholder13
/while_while_cond_97493___redundant_placeholder23
/while_while_cond_97493___redundant_placeholder3
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
@: : : : :€€€€€€€€€d:€€€€€€€€€d: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:
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
ЉJ
Ъ
B__inference_lstm_12_layer_call_and_return_conditional_losses_97721

inputs>
+lstm_cell_12_matmul_readvariableop_resource:	
Р@
-lstm_cell_12_matmul_1_readvariableop_resource:	dР;
,lstm_cell_12_biasadd_readvariableop_resource:	Р
identityИҐ#lstm_cell_12/BiasAdd/ReadVariableOpҐ"lstm_cell_12/MatMul/ReadVariableOpҐ$lstm_cell_12/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
:€€€€€€€€€dR
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
:€€€€€€€€€dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€
R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€
*
shrink_axis_maskП
"lstm_cell_12/MatMul/ReadVariableOpReadVariableOp+lstm_cell_12_matmul_readvariableop_resource*
_output_shapes
:	
Р*
dtype0Ц
lstm_cell_12/MatMulMatMulstrided_slice_2:output:0*lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РУ
$lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_12_matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0Р
lstm_cell_12/MatMul_1MatMulzeros:output:0,lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РМ
lstm_cell_12/addAddV2lstm_cell_12/MatMul:product:0lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РН
#lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_12_biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0Х
lstm_cell_12/BiasAddBiasAddlstm_cell_12/add:z:0+lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р^
lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_12/splitSplit%lstm_cell_12/split/split_dim:output:0lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitn
lstm_cell_12/SigmoidSigmoidlstm_cell_12/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell_12/Sigmoid_1Sigmoidlstm_cell_12/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dw
lstm_cell_12/mulMullstm_cell_12/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dh
lstm_cell_12/ReluRelulstm_cell_12/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dЖ
lstm_cell_12/mul_1Mullstm_cell_12/Sigmoid:y:0lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€d{
lstm_cell_12/add_1AddV2lstm_cell_12/mul:z:0lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell_12/Sigmoid_2Sigmoidlstm_cell_12/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€de
lstm_cell_12/Relu_1Relulstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dК
lstm_cell_12/mul_2Mullstm_cell_12/Sigmoid_2:y:0!lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : А
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_12_matmul_readvariableop_resource-lstm_cell_12_matmul_1_readvariableop_resource,lstm_cell_12_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_97637*
condR
while_cond_97636*K
output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ¬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€dј
NoOpNoOp$^lstm_cell_12/BiasAdd/ReadVariableOp#^lstm_cell_12/MatMul/ReadVariableOp%^lstm_cell_12/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€
: : : 2J
#lstm_cell_12/BiasAdd/ReadVariableOp#lstm_cell_12/BiasAdd/ReadVariableOp2H
"lstm_cell_12/MatMul/ReadVariableOp"lstm_cell_12/MatMul/ReadVariableOp2L
$lstm_cell_12/MatMul_1/ReadVariableOp$lstm_cell_12/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
ъJ
Ь
B__inference_lstm_12_layer_call_and_return_conditional_losses_97578
inputs_0>
+lstm_cell_12_matmul_readvariableop_resource:	
Р@
-lstm_cell_12_matmul_1_readvariableop_resource:	dР;
,lstm_cell_12_biasadd_readvariableop_resource:	Р
identityИҐ#lstm_cell_12/BiasAdd/ReadVariableOpҐ"lstm_cell_12/MatMul/ReadVariableOpҐ$lstm_cell_12/MatMul_1/ReadVariableOpҐwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
:€€€€€€€€€dR
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
:€€€€€€€€€dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€
*
shrink_axis_maskП
"lstm_cell_12/MatMul/ReadVariableOpReadVariableOp+lstm_cell_12_matmul_readvariableop_resource*
_output_shapes
:	
Р*
dtype0Ц
lstm_cell_12/MatMulMatMulstrided_slice_2:output:0*lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РУ
$lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_12_matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0Р
lstm_cell_12/MatMul_1MatMulzeros:output:0,lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РМ
lstm_cell_12/addAddV2lstm_cell_12/MatMul:product:0lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РН
#lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_12_biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0Х
lstm_cell_12/BiasAddBiasAddlstm_cell_12/add:z:0+lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р^
lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_12/splitSplit%lstm_cell_12/split/split_dim:output:0lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitn
lstm_cell_12/SigmoidSigmoidlstm_cell_12/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell_12/Sigmoid_1Sigmoidlstm_cell_12/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dw
lstm_cell_12/mulMullstm_cell_12/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dh
lstm_cell_12/ReluRelulstm_cell_12/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dЖ
lstm_cell_12/mul_1Mullstm_cell_12/Sigmoid:y:0lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€d{
lstm_cell_12/add_1AddV2lstm_cell_12/mul:z:0lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell_12/Sigmoid_2Sigmoidlstm_cell_12/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€de
lstm_cell_12/Relu_1Relulstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dК
lstm_cell_12/mul_2Mullstm_cell_12/Sigmoid_2:y:0!lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : А
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_12_matmul_readvariableop_resource-lstm_cell_12_matmul_1_readvariableop_resource,lstm_cell_12_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_97494*
condR
while_cond_97493*K
output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   Ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€dј
NoOpNoOp$^lstm_cell_12/BiasAdd/ReadVariableOp#^lstm_cell_12/MatMul/ReadVariableOp%^lstm_cell_12/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€
: : : 2J
#lstm_cell_12/BiasAdd/ReadVariableOp#lstm_cell_12/BiasAdd/ReadVariableOp2H
"lstm_cell_12/MatMul/ReadVariableOp"lstm_cell_12/MatMul/ReadVariableOp2L
$lstm_cell_12/MatMul_1/ReadVariableOp$lstm_cell_12/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€

"
_user_specified_name
inputs_0
П

щ
#__inference_signature_wrapper_96593
lstm_12_input
unknown:	
Р
	unknown_0:	dР
	unknown_1:	Р
	unknown_2:	dР
	unknown_3:	dР
	unknown_4:	Р
	unknown_5:d
	unknown_6:
	unknown_7:

	unknown_8:

identityИҐStatefulPartitionedCall§
StatefulPartitionedCallStatefulPartitionedCalllstm_12_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__wrapped_model_94949o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€
: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:€€€€€€€€€

'
_user_specified_namelstm_12_input
™S
р
%sequential_6_lstm_13_while_body_94849F
Bsequential_6_lstm_13_while_sequential_6_lstm_13_while_loop_counterL
Hsequential_6_lstm_13_while_sequential_6_lstm_13_while_maximum_iterations*
&sequential_6_lstm_13_while_placeholder,
(sequential_6_lstm_13_while_placeholder_1,
(sequential_6_lstm_13_while_placeholder_2,
(sequential_6_lstm_13_while_placeholder_3E
Asequential_6_lstm_13_while_sequential_6_lstm_13_strided_slice_1_0Б
}sequential_6_lstm_13_while_tensorarrayv2read_tensorlistgetitem_sequential_6_lstm_13_tensorarrayunstack_tensorlistfromtensor_0[
Hsequential_6_lstm_13_while_lstm_cell_13_matmul_readvariableop_resource_0:	dР]
Jsequential_6_lstm_13_while_lstm_cell_13_matmul_1_readvariableop_resource_0:	dРX
Isequential_6_lstm_13_while_lstm_cell_13_biasadd_readvariableop_resource_0:	Р'
#sequential_6_lstm_13_while_identity)
%sequential_6_lstm_13_while_identity_1)
%sequential_6_lstm_13_while_identity_2)
%sequential_6_lstm_13_while_identity_3)
%sequential_6_lstm_13_while_identity_4)
%sequential_6_lstm_13_while_identity_5C
?sequential_6_lstm_13_while_sequential_6_lstm_13_strided_slice_1
{sequential_6_lstm_13_while_tensorarrayv2read_tensorlistgetitem_sequential_6_lstm_13_tensorarrayunstack_tensorlistfromtensorY
Fsequential_6_lstm_13_while_lstm_cell_13_matmul_readvariableop_resource:	dР[
Hsequential_6_lstm_13_while_lstm_cell_13_matmul_1_readvariableop_resource:	dРV
Gsequential_6_lstm_13_while_lstm_cell_13_biasadd_readvariableop_resource:	РИҐ>sequential_6/lstm_13/while/lstm_cell_13/BiasAdd/ReadVariableOpҐ=sequential_6/lstm_13/while/lstm_cell_13/MatMul/ReadVariableOpҐ?sequential_6/lstm_13/while/lstm_cell_13/MatMul_1/ReadVariableOpЭ
Lsequential_6/lstm_13/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   П
>sequential_6/lstm_13/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}sequential_6_lstm_13_while_tensorarrayv2read_tensorlistgetitem_sequential_6_lstm_13_tensorarrayunstack_tensorlistfromtensor_0&sequential_6_lstm_13_while_placeholderUsequential_6/lstm_13/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€d*
element_dtype0«
=sequential_6/lstm_13/while/lstm_cell_13/MatMul/ReadVariableOpReadVariableOpHsequential_6_lstm_13_while_lstm_cell_13_matmul_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0щ
.sequential_6/lstm_13/while/lstm_cell_13/MatMulMatMulEsequential_6/lstm_13/while/TensorArrayV2Read/TensorListGetItem:item:0Esequential_6/lstm_13/while/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РЋ
?sequential_6/lstm_13/while/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOpJsequential_6_lstm_13_while_lstm_cell_13_matmul_1_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0а
0sequential_6/lstm_13/while/lstm_cell_13/MatMul_1MatMul(sequential_6_lstm_13_while_placeholder_2Gsequential_6/lstm_13/while/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РЁ
+sequential_6/lstm_13/while/lstm_cell_13/addAddV28sequential_6/lstm_13/while/lstm_cell_13/MatMul:product:0:sequential_6/lstm_13/while/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Р≈
>sequential_6/lstm_13/while/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOpIsequential_6_lstm_13_while_lstm_cell_13_biasadd_readvariableop_resource_0*
_output_shapes	
:Р*
dtype0ж
/sequential_6/lstm_13/while/lstm_cell_13/BiasAddBiasAdd/sequential_6/lstm_13/while/lstm_cell_13/add:z:0Fsequential_6/lstm_13/while/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рy
7sequential_6/lstm_13/while/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ѓ
-sequential_6/lstm_13/while/lstm_cell_13/splitSplit@sequential_6/lstm_13/while/lstm_cell_13/split/split_dim:output:08sequential_6/lstm_13/while/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_split§
/sequential_6/lstm_13/while/lstm_cell_13/SigmoidSigmoid6sequential_6/lstm_13/while/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€d¶
1sequential_6/lstm_13/while/lstm_cell_13/Sigmoid_1Sigmoid6sequential_6/lstm_13/while/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€d≈
+sequential_6/lstm_13/while/lstm_cell_13/mulMul5sequential_6/lstm_13/while/lstm_cell_13/Sigmoid_1:y:0(sequential_6_lstm_13_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€dЮ
,sequential_6/lstm_13/while/lstm_cell_13/ReluRelu6sequential_6/lstm_13/while/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€d„
-sequential_6/lstm_13/while/lstm_cell_13/mul_1Mul3sequential_6/lstm_13/while/lstm_cell_13/Sigmoid:y:0:sequential_6/lstm_13/while/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dћ
-sequential_6/lstm_13/while/lstm_cell_13/add_1AddV2/sequential_6/lstm_13/while/lstm_cell_13/mul:z:01sequential_6/lstm_13/while/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€d¶
1sequential_6/lstm_13/while/lstm_cell_13/Sigmoid_2Sigmoid6sequential_6/lstm_13/while/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€dЫ
.sequential_6/lstm_13/while/lstm_cell_13/Relu_1Relu1sequential_6/lstm_13/while/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dџ
-sequential_6/lstm_13/while/lstm_cell_13/mul_2Mul5sequential_6/lstm_13/while/lstm_cell_13/Sigmoid_2:y:0<sequential_6/lstm_13/while/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dЗ
Esequential_6/lstm_13/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Ѕ
?sequential_6/lstm_13/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(sequential_6_lstm_13_while_placeholder_1Nsequential_6/lstm_13/while/TensorArrayV2Write/TensorListSetItem/index:output:01sequential_6/lstm_13/while/lstm_cell_13/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“b
 sequential_6/lstm_13/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ы
sequential_6/lstm_13/while/addAddV2&sequential_6_lstm_13_while_placeholder)sequential_6/lstm_13/while/add/y:output:0*
T0*
_output_shapes
: d
"sequential_6/lstm_13/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :ї
 sequential_6/lstm_13/while/add_1AddV2Bsequential_6_lstm_13_while_sequential_6_lstm_13_while_loop_counter+sequential_6/lstm_13/while/add_1/y:output:0*
T0*
_output_shapes
: Ш
#sequential_6/lstm_13/while/IdentityIdentity$sequential_6/lstm_13/while/add_1:z:0 ^sequential_6/lstm_13/while/NoOp*
T0*
_output_shapes
: Њ
%sequential_6/lstm_13/while/Identity_1IdentityHsequential_6_lstm_13_while_sequential_6_lstm_13_while_maximum_iterations ^sequential_6/lstm_13/while/NoOp*
T0*
_output_shapes
: Ш
%sequential_6/lstm_13/while/Identity_2Identity"sequential_6/lstm_13/while/add:z:0 ^sequential_6/lstm_13/while/NoOp*
T0*
_output_shapes
: ≈
%sequential_6/lstm_13/while/Identity_3IdentityOsequential_6/lstm_13/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^sequential_6/lstm_13/while/NoOp*
T0*
_output_shapes
: Є
%sequential_6/lstm_13/while/Identity_4Identity1sequential_6/lstm_13/while/lstm_cell_13/mul_2:z:0 ^sequential_6/lstm_13/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dЄ
%sequential_6/lstm_13/while/Identity_5Identity1sequential_6/lstm_13/while/lstm_cell_13/add_1:z:0 ^sequential_6/lstm_13/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€d§
sequential_6/lstm_13/while/NoOpNoOp?^sequential_6/lstm_13/while/lstm_cell_13/BiasAdd/ReadVariableOp>^sequential_6/lstm_13/while/lstm_cell_13/MatMul/ReadVariableOp@^sequential_6/lstm_13/while/lstm_cell_13/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_6_lstm_13_while_identity_1.sequential_6/lstm_13/while/Identity_1:output:0"W
%sequential_6_lstm_13_while_identity_2.sequential_6/lstm_13/while/Identity_2:output:0"W
%sequential_6_lstm_13_while_identity_3.sequential_6/lstm_13/while/Identity_3:output:0"W
%sequential_6_lstm_13_while_identity_4.sequential_6/lstm_13/while/Identity_4:output:0"W
%sequential_6_lstm_13_while_identity_5.sequential_6/lstm_13/while/Identity_5:output:0"S
#sequential_6_lstm_13_while_identity,sequential_6/lstm_13/while/Identity:output:0"Ф
Gsequential_6_lstm_13_while_lstm_cell_13_biasadd_readvariableop_resourceIsequential_6_lstm_13_while_lstm_cell_13_biasadd_readvariableop_resource_0"Ц
Hsequential_6_lstm_13_while_lstm_cell_13_matmul_1_readvariableop_resourceJsequential_6_lstm_13_while_lstm_cell_13_matmul_1_readvariableop_resource_0"Т
Fsequential_6_lstm_13_while_lstm_cell_13_matmul_readvariableop_resourceHsequential_6_lstm_13_while_lstm_cell_13_matmul_readvariableop_resource_0"Д
?sequential_6_lstm_13_while_sequential_6_lstm_13_strided_slice_1Asequential_6_lstm_13_while_sequential_6_lstm_13_strided_slice_1_0"ь
{sequential_6_lstm_13_while_tensorarrayv2read_tensorlistgetitem_sequential_6_lstm_13_tensorarrayunstack_tensorlistfromtensor}sequential_6_lstm_13_while_tensorarrayv2read_tensorlistgetitem_sequential_6_lstm_13_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : 2А
>sequential_6/lstm_13/while/lstm_cell_13/BiasAdd/ReadVariableOp>sequential_6/lstm_13/while/lstm_cell_13/BiasAdd/ReadVariableOp2~
=sequential_6/lstm_13/while/lstm_cell_13/MatMul/ReadVariableOp=sequential_6/lstm_13/while/lstm_cell_13/MatMul/ReadVariableOp2В
?sequential_6/lstm_13/while/lstm_cell_13/MatMul_1/ReadVariableOp?sequential_6/lstm_13/while/lstm_cell_13/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:

_output_shapes
: :

_output_shapes
: :ea

_output_shapes
: 
G
_user_specified_name/-sequential_6/lstm_13/while/maximum_iterations:_ [

_output_shapes
: 
A
_user_specified_name)'sequential_6/lstm_13/while/loop_counter
”$
№
while_body_95525
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_13_95549_0:	dР-
while_lstm_cell_13_95551_0:	dР)
while_lstm_cell_13_95553_0:	Р
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_13_95549:	dР+
while_lstm_cell_13_95551:	dР'
while_lstm_cell_13_95553:	РИҐ*while/lstm_cell_13/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€d*
element_dtype0ѓ
*while/lstm_cell_13/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_13_95549_0while_lstm_cell_13_95551_0while_lstm_cell_13_95553_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_lstm_cell_13_layer_call_and_return_conditional_losses_95510r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Д
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:03while/lstm_cell_13/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Р
while/Identity_4Identity3while/lstm_cell_13/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dР
while/Identity_5Identity3while/lstm_cell_13/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dy

while/NoOpNoOp+^while/lstm_cell_13/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"6
while_lstm_cell_13_95549while_lstm_cell_13_95549_0"6
while_lstm_cell_13_95551while_lstm_cell_13_95551_0"6
while_lstm_cell_13_95553while_lstm_cell_13_95553_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : 2X
*while/lstm_cell_13/StatefulPartitionedCall*while/lstm_cell_13/StatefulPartitionedCall:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:
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
Т	
Њ
while_cond_98257
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_98257___redundant_placeholder03
/while_while_cond_98257___redundant_placeholder13
/while_while_cond_98257___redundant_placeholder23
/while_while_cond_98257___redundant_placeholder3
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
@: : : : :€€€€€€€€€d:€€€€€€€€€d: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:
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
™

ы
,__inference_sequential_6_layer_call_fn_96643

inputs
unknown:	
Р
	unknown_0:	dР
	unknown_1:	Р
	unknown_2:	dР
	unknown_3:	dР
	unknown_4:	Р
	unknown_5:d
	unknown_6:
	unknown_7:

	unknown_8:

identityИҐStatefulPartitionedCallƒ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_6_layer_call_and_return_conditional_losses_96416o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€
: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
Т	
Њ
while_cond_97350
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_97350___redundant_placeholder03
/while_while_cond_97350___redundant_placeholder13
/while_while_cond_97350___redundant_placeholder23
/while_while_cond_97350___redundant_placeholder3
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
@: : : : :€€€€€€€€€d:€€€€€€€€€d: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:
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
Т	
Њ
while_cond_96219
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_96219___redundant_placeholder03
/while_while_cond_96219___redundant_placeholder13
/while_while_cond_96219___redundant_placeholder23
/while_while_cond_96219___redundant_placeholder3
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
@: : : : :€€€€€€€€€d:€€€€€€€€€d: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:
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
У№
≤
 __inference__wrapped_model_94949
lstm_12_inputS
@sequential_6_lstm_12_lstm_cell_12_matmul_readvariableop_resource:	
РU
Bsequential_6_lstm_12_lstm_cell_12_matmul_1_readvariableop_resource:	dРP
Asequential_6_lstm_12_lstm_cell_12_biasadd_readvariableop_resource:	РS
@sequential_6_lstm_13_lstm_cell_13_matmul_readvariableop_resource:	dРU
Bsequential_6_lstm_13_lstm_cell_13_matmul_1_readvariableop_resource:	dРP
Asequential_6_lstm_13_lstm_cell_13_biasadd_readvariableop_resource:	РF
4sequential_6_dense_12_matmul_readvariableop_resource:dC
5sequential_6_dense_12_biasadd_readvariableop_resource:F
4sequential_6_dense_13_matmul_readvariableop_resource:
C
5sequential_6_dense_13_biasadd_readvariableop_resource:

identityИҐ,sequential_6/dense_12/BiasAdd/ReadVariableOpҐ+sequential_6/dense_12/MatMul/ReadVariableOpҐ,sequential_6/dense_13/BiasAdd/ReadVariableOpҐ+sequential_6/dense_13/MatMul/ReadVariableOpҐ8sequential_6/lstm_12/lstm_cell_12/BiasAdd/ReadVariableOpҐ7sequential_6/lstm_12/lstm_cell_12/MatMul/ReadVariableOpҐ9sequential_6/lstm_12/lstm_cell_12/MatMul_1/ReadVariableOpҐsequential_6/lstm_12/whileҐ8sequential_6/lstm_13/lstm_cell_13/BiasAdd/ReadVariableOpҐ7sequential_6/lstm_13/lstm_cell_13/MatMul/ReadVariableOpҐ9sequential_6/lstm_13/lstm_cell_13/MatMul_1/ReadVariableOpҐsequential_6/lstm_13/whilee
sequential_6/lstm_12/ShapeShapelstm_12_input*
T0*
_output_shapes
::нѕr
(sequential_6/lstm_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*sequential_6/lstm_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*sequential_6/lstm_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ї
"sequential_6/lstm_12/strided_sliceStridedSlice#sequential_6/lstm_12/Shape:output:01sequential_6/lstm_12/strided_slice/stack:output:03sequential_6/lstm_12/strided_slice/stack_1:output:03sequential_6/lstm_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#sequential_6/lstm_12/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d≤
!sequential_6/lstm_12/zeros/packedPack+sequential_6/lstm_12/strided_slice:output:0,sequential_6/lstm_12/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:e
 sequential_6/lstm_12/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ђ
sequential_6/lstm_12/zerosFill*sequential_6/lstm_12/zeros/packed:output:0)sequential_6/lstm_12/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dg
%sequential_6/lstm_12/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dґ
#sequential_6/lstm_12/zeros_1/packedPack+sequential_6/lstm_12/strided_slice:output:0.sequential_6/lstm_12/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_6/lstm_12/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ±
sequential_6/lstm_12/zeros_1Fill,sequential_6/lstm_12/zeros_1/packed:output:0+sequential_6/lstm_12/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dx
#sequential_6/lstm_12/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ю
sequential_6/lstm_12/transpose	Transposelstm_12_input,sequential_6/lstm_12/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€
|
sequential_6/lstm_12/Shape_1Shape"sequential_6/lstm_12/transpose:y:0*
T0*
_output_shapes
::нѕt
*sequential_6/lstm_12/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_6/lstm_12/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_6/lstm_12/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ƒ
$sequential_6/lstm_12/strided_slice_1StridedSlice%sequential_6/lstm_12/Shape_1:output:03sequential_6/lstm_12/strided_slice_1/stack:output:05sequential_6/lstm_12/strided_slice_1/stack_1:output:05sequential_6/lstm_12/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
0sequential_6/lstm_12/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€у
"sequential_6/lstm_12/TensorArrayV2TensorListReserve9sequential_6/lstm_12/TensorArrayV2/element_shape:output:0-sequential_6/lstm_12/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ы
Jsequential_6/lstm_12/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   Я
<sequential_6/lstm_12/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"sequential_6/lstm_12/transpose:y:0Ssequential_6/lstm_12/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“t
*sequential_6/lstm_12/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_6/lstm_12/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_6/lstm_12/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:“
$sequential_6/lstm_12/strided_slice_2StridedSlice"sequential_6/lstm_12/transpose:y:03sequential_6/lstm_12/strided_slice_2/stack:output:05sequential_6/lstm_12/strided_slice_2/stack_1:output:05sequential_6/lstm_12/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€
*
shrink_axis_maskє
7sequential_6/lstm_12/lstm_cell_12/MatMul/ReadVariableOpReadVariableOp@sequential_6_lstm_12_lstm_cell_12_matmul_readvariableop_resource*
_output_shapes
:	
Р*
dtype0’
(sequential_6/lstm_12/lstm_cell_12/MatMulMatMul-sequential_6/lstm_12/strided_slice_2:output:0?sequential_6/lstm_12/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рљ
9sequential_6/lstm_12/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOpBsequential_6_lstm_12_lstm_cell_12_matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0ѕ
*sequential_6/lstm_12/lstm_cell_12/MatMul_1MatMul#sequential_6/lstm_12/zeros:output:0Asequential_6/lstm_12/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РЋ
%sequential_6/lstm_12/lstm_cell_12/addAddV22sequential_6/lstm_12/lstm_cell_12/MatMul:product:04sequential_6/lstm_12/lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РЈ
8sequential_6/lstm_12/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOpAsequential_6_lstm_12_lstm_cell_12_biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0‘
)sequential_6/lstm_12/lstm_cell_12/BiasAddBiasAdd)sequential_6/lstm_12/lstm_cell_12/add:z:0@sequential_6/lstm_12/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рs
1sequential_6/lstm_12/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ь
'sequential_6/lstm_12/lstm_cell_12/splitSplit:sequential_6/lstm_12/lstm_cell_12/split/split_dim:output:02sequential_6/lstm_12/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitШ
)sequential_6/lstm_12/lstm_cell_12/SigmoidSigmoid0sequential_6/lstm_12/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€dЪ
+sequential_6/lstm_12/lstm_cell_12/Sigmoid_1Sigmoid0sequential_6/lstm_12/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dґ
%sequential_6/lstm_12/lstm_cell_12/mulMul/sequential_6/lstm_12/lstm_cell_12/Sigmoid_1:y:0%sequential_6/lstm_12/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dТ
&sequential_6/lstm_12/lstm_cell_12/ReluRelu0sequential_6/lstm_12/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€d≈
'sequential_6/lstm_12/lstm_cell_12/mul_1Mul-sequential_6/lstm_12/lstm_cell_12/Sigmoid:y:04sequential_6/lstm_12/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dЇ
'sequential_6/lstm_12/lstm_cell_12/add_1AddV2)sequential_6/lstm_12/lstm_cell_12/mul:z:0+sequential_6/lstm_12/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dЪ
+sequential_6/lstm_12/lstm_cell_12/Sigmoid_2Sigmoid0sequential_6/lstm_12/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€dП
(sequential_6/lstm_12/lstm_cell_12/Relu_1Relu+sequential_6/lstm_12/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€d…
'sequential_6/lstm_12/lstm_cell_12/mul_2Mul/sequential_6/lstm_12/lstm_cell_12/Sigmoid_2:y:06sequential_6/lstm_12/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dГ
2sequential_6/lstm_12/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ч
$sequential_6/lstm_12/TensorArrayV2_1TensorListReserve;sequential_6/lstm_12/TensorArrayV2_1/element_shape:output:0-sequential_6/lstm_12/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“[
sequential_6/lstm_12/timeConst*
_output_shapes
: *
dtype0*
value	B : x
-sequential_6/lstm_12/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€i
'sequential_6/lstm_12/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¶
sequential_6/lstm_12/whileWhile0sequential_6/lstm_12/while/loop_counter:output:06sequential_6/lstm_12/while/maximum_iterations:output:0"sequential_6/lstm_12/time:output:0-sequential_6/lstm_12/TensorArrayV2_1:handle:0#sequential_6/lstm_12/zeros:output:0%sequential_6/lstm_12/zeros_1:output:0-sequential_6/lstm_12/strided_slice_1:output:0Lsequential_6/lstm_12/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_6_lstm_12_lstm_cell_12_matmul_readvariableop_resourceBsequential_6_lstm_12_lstm_cell_12_matmul_1_readvariableop_resourceAsequential_6_lstm_12_lstm_cell_12_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *1
body)R'
%sequential_6_lstm_12_while_body_94709*1
cond)R'
%sequential_6_lstm_12_while_cond_94708*K
output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *
parallel_iterations Ц
Esequential_6/lstm_12/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   Б
7sequential_6/lstm_12/TensorArrayV2Stack/TensorListStackTensorListStack#sequential_6/lstm_12/while:output:3Nsequential_6/lstm_12/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€d*
element_dtype0}
*sequential_6/lstm_12/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€v
,sequential_6/lstm_12/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,sequential_6/lstm_12/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:р
$sequential_6/lstm_12/strided_slice_3StridedSlice@sequential_6/lstm_12/TensorArrayV2Stack/TensorListStack:tensor:03sequential_6/lstm_12/strided_slice_3/stack:output:05sequential_6/lstm_12/strided_slice_3/stack_1:output:05sequential_6/lstm_12/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maskz
%sequential_6/lstm_12/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ’
 sequential_6/lstm_12/transpose_1	Transpose@sequential_6/lstm_12/TensorArrayV2Stack/TensorListStack:tensor:0.sequential_6/lstm_12/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€dp
sequential_6/lstm_12/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    |
sequential_6/lstm_13/ShapeShape$sequential_6/lstm_12/transpose_1:y:0*
T0*
_output_shapes
::нѕr
(sequential_6/lstm_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*sequential_6/lstm_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*sequential_6/lstm_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ї
"sequential_6/lstm_13/strided_sliceStridedSlice#sequential_6/lstm_13/Shape:output:01sequential_6/lstm_13/strided_slice/stack:output:03sequential_6/lstm_13/strided_slice/stack_1:output:03sequential_6/lstm_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#sequential_6/lstm_13/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d≤
!sequential_6/lstm_13/zeros/packedPack+sequential_6/lstm_13/strided_slice:output:0,sequential_6/lstm_13/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:e
 sequential_6/lstm_13/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ђ
sequential_6/lstm_13/zerosFill*sequential_6/lstm_13/zeros/packed:output:0)sequential_6/lstm_13/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dg
%sequential_6/lstm_13/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dґ
#sequential_6/lstm_13/zeros_1/packedPack+sequential_6/lstm_13/strided_slice:output:0.sequential_6/lstm_13/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_6/lstm_13/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ±
sequential_6/lstm_13/zeros_1Fill,sequential_6/lstm_13/zeros_1/packed:output:0+sequential_6/lstm_13/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dx
#sequential_6/lstm_13/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          µ
sequential_6/lstm_13/transpose	Transpose$sequential_6/lstm_12/transpose_1:y:0,sequential_6/lstm_13/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€d|
sequential_6/lstm_13/Shape_1Shape"sequential_6/lstm_13/transpose:y:0*
T0*
_output_shapes
::нѕt
*sequential_6/lstm_13/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_6/lstm_13/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_6/lstm_13/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ƒ
$sequential_6/lstm_13/strided_slice_1StridedSlice%sequential_6/lstm_13/Shape_1:output:03sequential_6/lstm_13/strided_slice_1/stack:output:05sequential_6/lstm_13/strided_slice_1/stack_1:output:05sequential_6/lstm_13/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
0sequential_6/lstm_13/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€у
"sequential_6/lstm_13/TensorArrayV2TensorListReserve9sequential_6/lstm_13/TensorArrayV2/element_shape:output:0-sequential_6/lstm_13/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ы
Jsequential_6/lstm_13/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   Я
<sequential_6/lstm_13/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"sequential_6/lstm_13/transpose:y:0Ssequential_6/lstm_13/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“t
*sequential_6/lstm_13/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_6/lstm_13/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_6/lstm_13/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:“
$sequential_6/lstm_13/strided_slice_2StridedSlice"sequential_6/lstm_13/transpose:y:03sequential_6/lstm_13/strided_slice_2/stack:output:05sequential_6/lstm_13/strided_slice_2/stack_1:output:05sequential_6/lstm_13/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maskє
7sequential_6/lstm_13/lstm_cell_13/MatMul/ReadVariableOpReadVariableOp@sequential_6_lstm_13_lstm_cell_13_matmul_readvariableop_resource*
_output_shapes
:	dР*
dtype0’
(sequential_6/lstm_13/lstm_cell_13/MatMulMatMul-sequential_6/lstm_13/strided_slice_2:output:0?sequential_6/lstm_13/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рљ
9sequential_6/lstm_13/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOpBsequential_6_lstm_13_lstm_cell_13_matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0ѕ
*sequential_6/lstm_13/lstm_cell_13/MatMul_1MatMul#sequential_6/lstm_13/zeros:output:0Asequential_6/lstm_13/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РЋ
%sequential_6/lstm_13/lstm_cell_13/addAddV22sequential_6/lstm_13/lstm_cell_13/MatMul:product:04sequential_6/lstm_13/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РЈ
8sequential_6/lstm_13/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOpAsequential_6_lstm_13_lstm_cell_13_biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0‘
)sequential_6/lstm_13/lstm_cell_13/BiasAddBiasAdd)sequential_6/lstm_13/lstm_cell_13/add:z:0@sequential_6/lstm_13/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рs
1sequential_6/lstm_13/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ь
'sequential_6/lstm_13/lstm_cell_13/splitSplit:sequential_6/lstm_13/lstm_cell_13/split/split_dim:output:02sequential_6/lstm_13/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitШ
)sequential_6/lstm_13/lstm_cell_13/SigmoidSigmoid0sequential_6/lstm_13/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€dЪ
+sequential_6/lstm_13/lstm_cell_13/Sigmoid_1Sigmoid0sequential_6/lstm_13/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dґ
%sequential_6/lstm_13/lstm_cell_13/mulMul/sequential_6/lstm_13/lstm_cell_13/Sigmoid_1:y:0%sequential_6/lstm_13/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dТ
&sequential_6/lstm_13/lstm_cell_13/ReluRelu0sequential_6/lstm_13/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€d≈
'sequential_6/lstm_13/lstm_cell_13/mul_1Mul-sequential_6/lstm_13/lstm_cell_13/Sigmoid:y:04sequential_6/lstm_13/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dЇ
'sequential_6/lstm_13/lstm_cell_13/add_1AddV2)sequential_6/lstm_13/lstm_cell_13/mul:z:0+sequential_6/lstm_13/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dЪ
+sequential_6/lstm_13/lstm_cell_13/Sigmoid_2Sigmoid0sequential_6/lstm_13/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€dП
(sequential_6/lstm_13/lstm_cell_13/Relu_1Relu+sequential_6/lstm_13/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€d…
'sequential_6/lstm_13/lstm_cell_13/mul_2Mul/sequential_6/lstm_13/lstm_cell_13/Sigmoid_2:y:06sequential_6/lstm_13/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dГ
2sequential_6/lstm_13/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   s
1sequential_6/lstm_13/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Д
$sequential_6/lstm_13/TensorArrayV2_1TensorListReserve;sequential_6/lstm_13/TensorArrayV2_1/element_shape:output:0:sequential_6/lstm_13/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“[
sequential_6/lstm_13/timeConst*
_output_shapes
: *
dtype0*
value	B : x
-sequential_6/lstm_13/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€i
'sequential_6/lstm_13/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¶
sequential_6/lstm_13/whileWhile0sequential_6/lstm_13/while/loop_counter:output:06sequential_6/lstm_13/while/maximum_iterations:output:0"sequential_6/lstm_13/time:output:0-sequential_6/lstm_13/TensorArrayV2_1:handle:0#sequential_6/lstm_13/zeros:output:0%sequential_6/lstm_13/zeros_1:output:0-sequential_6/lstm_13/strided_slice_1:output:0Lsequential_6/lstm_13/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_6_lstm_13_lstm_cell_13_matmul_readvariableop_resourceBsequential_6_lstm_13_lstm_cell_13_matmul_1_readvariableop_resourceAsequential_6_lstm_13_lstm_cell_13_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *1
body)R'
%sequential_6_lstm_13_while_body_94849*1
cond)R'
%sequential_6_lstm_13_while_cond_94848*K
output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *
parallel_iterations Ц
Esequential_6/lstm_13/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   Х
7sequential_6/lstm_13/TensorArrayV2Stack/TensorListStackTensorListStack#sequential_6/lstm_13/while:output:3Nsequential_6/lstm_13/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€d*
element_dtype0*
num_elements}
*sequential_6/lstm_13/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€v
,sequential_6/lstm_13/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,sequential_6/lstm_13/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:р
$sequential_6/lstm_13/strided_slice_3StridedSlice@sequential_6/lstm_13/TensorArrayV2Stack/TensorListStack:tensor:03sequential_6/lstm_13/strided_slice_3/stack:output:05sequential_6/lstm_13/strided_slice_3/stack_1:output:05sequential_6/lstm_13/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maskz
%sequential_6/lstm_13/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ’
 sequential_6/lstm_13/transpose_1	Transpose@sequential_6/lstm_13/TensorArrayV2Stack/TensorListStack:tensor:0.sequential_6/lstm_13/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€dp
sequential_6/lstm_13/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    М
sequential_6/dropout_6/IdentityIdentity-sequential_6/lstm_13/strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€d†
+sequential_6/dense_12/MatMul/ReadVariableOpReadVariableOp4sequential_6_dense_12_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0Ј
sequential_6/dense_12/MatMulMatMul(sequential_6/dropout_6/Identity:output:03sequential_6/dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ю
,sequential_6/dense_12/BiasAdd/ReadVariableOpReadVariableOp5sequential_6_dense_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Є
sequential_6/dense_12/BiasAddBiasAdd&sequential_6/dense_12/MatMul:product:04sequential_6/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€|
sequential_6/dense_12/ReluRelu&sequential_6/dense_12/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€†
+sequential_6/dense_13/MatMul/ReadVariableOpReadVariableOp4sequential_6_dense_13_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0Ј
sequential_6/dense_13/MatMulMatMul(sequential_6/dense_12/Relu:activations:03sequential_6/dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
Ю
,sequential_6/dense_13/BiasAdd/ReadVariableOpReadVariableOp5sequential_6_dense_13_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0Є
sequential_6/dense_13/BiasAddBiasAdd&sequential_6/dense_13/MatMul:product:04sequential_6/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
В
sequential_6/dense_13/SoftmaxSoftmax&sequential_6/dense_13/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
v
IdentityIdentity'sequential_6/dense_13/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
Ь
NoOpNoOp-^sequential_6/dense_12/BiasAdd/ReadVariableOp,^sequential_6/dense_12/MatMul/ReadVariableOp-^sequential_6/dense_13/BiasAdd/ReadVariableOp,^sequential_6/dense_13/MatMul/ReadVariableOp9^sequential_6/lstm_12/lstm_cell_12/BiasAdd/ReadVariableOp8^sequential_6/lstm_12/lstm_cell_12/MatMul/ReadVariableOp:^sequential_6/lstm_12/lstm_cell_12/MatMul_1/ReadVariableOp^sequential_6/lstm_12/while9^sequential_6/lstm_13/lstm_cell_13/BiasAdd/ReadVariableOp8^sequential_6/lstm_13/lstm_cell_13/MatMul/ReadVariableOp:^sequential_6/lstm_13/lstm_cell_13/MatMul_1/ReadVariableOp^sequential_6/lstm_13/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€
: : : : : : : : : : 2\
,sequential_6/dense_12/BiasAdd/ReadVariableOp,sequential_6/dense_12/BiasAdd/ReadVariableOp2Z
+sequential_6/dense_12/MatMul/ReadVariableOp+sequential_6/dense_12/MatMul/ReadVariableOp2\
,sequential_6/dense_13/BiasAdd/ReadVariableOp,sequential_6/dense_13/BiasAdd/ReadVariableOp2Z
+sequential_6/dense_13/MatMul/ReadVariableOp+sequential_6/dense_13/MatMul/ReadVariableOp2t
8sequential_6/lstm_12/lstm_cell_12/BiasAdd/ReadVariableOp8sequential_6/lstm_12/lstm_cell_12/BiasAdd/ReadVariableOp2r
7sequential_6/lstm_12/lstm_cell_12/MatMul/ReadVariableOp7sequential_6/lstm_12/lstm_cell_12/MatMul/ReadVariableOp2v
9sequential_6/lstm_12/lstm_cell_12/MatMul_1/ReadVariableOp9sequential_6/lstm_12/lstm_cell_12/MatMul_1/ReadVariableOp28
sequential_6/lstm_12/whilesequential_6/lstm_12/while2t
8sequential_6/lstm_13/lstm_cell_13/BiasAdd/ReadVariableOp8sequential_6/lstm_13/lstm_cell_13/BiasAdd/ReadVariableOp2r
7sequential_6/lstm_13/lstm_cell_13/MatMul/ReadVariableOp7sequential_6/lstm_13/lstm_cell_13/MatMul/ReadVariableOp2v
9sequential_6/lstm_13/lstm_cell_13/MatMul_1/ReadVariableOp9sequential_6/lstm_13/lstm_cell_13/MatMul_1/ReadVariableOp28
sequential_6/lstm_13/whilesequential_6/lstm_13/while:Z V
+
_output_shapes
:€€€€€€€€€

'
_user_specified_namelstm_12_input
№
Е
G__inference_lstm_cell_13_layer_call_and_return_conditional_losses_98719

inputs
states_0
states_11
matmul_readvariableop_resource:	dР3
 matmul_1_readvariableop_resource:	dР.
biasadd_readvariableop_resource:	Р
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dР*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Рs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:QM
'
_output_shapes
:€€€€€€€€€d
"
_user_specified_name
states_1:QM
'
_output_shapes
:€€€€€€€€€d
"
_user_specified_name
states_0:O K
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
ї
Ў
G__inference_sequential_6_layer_call_and_return_conditional_losses_96362

inputs 
lstm_12_96336:	
Р 
lstm_12_96338:	dР
lstm_12_96340:	Р 
lstm_13_96343:	dР 
lstm_13_96345:	dР
lstm_13_96347:	Р 
dense_12_96351:d
dense_12_96353: 
dense_13_96356:

dense_13_96358:

identityИҐ dense_12/StatefulPartitionedCallҐ dense_13/StatefulPartitionedCallҐ!dropout_6/StatefulPartitionedCallҐlstm_12/StatefulPartitionedCallҐlstm_13/StatefulPartitionedCallю
lstm_12/StatefulPartitionedCallStatefulPartitionedCallinputslstm_12_96336lstm_12_96338lstm_12_96340*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_12_layer_call_and_return_conditional_losses_95799Ь
lstm_13/StatefulPartitionedCallStatefulPartitionedCall(lstm_12/StatefulPartitionedCall:output:0lstm_13_96343lstm_13_96345lstm_13_96347*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_13_layer_call_and_return_conditional_losses_95951л
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall(lstm_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_95971С
 dense_12/StatefulPartitionedCallStatefulPartitionedCall*dropout_6/StatefulPartitionedCall:output:0dense_12_96351dense_12_96353*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_12_layer_call_and_return_conditional_losses_95984Р
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_96356dense_13_96358*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_13_layer_call_and_return_conditional_losses_96001x
IdentityIdentity)dense_13/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
ф
NoOpNoOp!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall ^lstm_12/StatefulPartitionedCall ^lstm_13/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€
: : : : : : : : : : 2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall2B
lstm_12/StatefulPartitionedCalllstm_12/StatefulPartitionedCall2B
lstm_13/StatefulPartitionedCalllstm_13/StatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
ЏC
ѕ

lstm_13_while_body_97148,
(lstm_13_while_lstm_13_while_loop_counter2
.lstm_13_while_lstm_13_while_maximum_iterations
lstm_13_while_placeholder
lstm_13_while_placeholder_1
lstm_13_while_placeholder_2
lstm_13_while_placeholder_3+
'lstm_13_while_lstm_13_strided_slice_1_0g
clstm_13_while_tensorarrayv2read_tensorlistgetitem_lstm_13_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_13_while_lstm_cell_13_matmul_readvariableop_resource_0:	dРP
=lstm_13_while_lstm_cell_13_matmul_1_readvariableop_resource_0:	dРK
<lstm_13_while_lstm_cell_13_biasadd_readvariableop_resource_0:	Р
lstm_13_while_identity
lstm_13_while_identity_1
lstm_13_while_identity_2
lstm_13_while_identity_3
lstm_13_while_identity_4
lstm_13_while_identity_5)
%lstm_13_while_lstm_13_strided_slice_1e
alstm_13_while_tensorarrayv2read_tensorlistgetitem_lstm_13_tensorarrayunstack_tensorlistfromtensorL
9lstm_13_while_lstm_cell_13_matmul_readvariableop_resource:	dРN
;lstm_13_while_lstm_cell_13_matmul_1_readvariableop_resource:	dРI
:lstm_13_while_lstm_cell_13_biasadd_readvariableop_resource:	РИҐ1lstm_13/while/lstm_cell_13/BiasAdd/ReadVariableOpҐ0lstm_13/while/lstm_cell_13/MatMul/ReadVariableOpҐ2lstm_13/while/lstm_cell_13/MatMul_1/ReadVariableOpР
?lstm_13/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ќ
1lstm_13/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_13_while_tensorarrayv2read_tensorlistgetitem_lstm_13_tensorarrayunstack_tensorlistfromtensor_0lstm_13_while_placeholderHlstm_13/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€d*
element_dtype0≠
0lstm_13/while/lstm_cell_13/MatMul/ReadVariableOpReadVariableOp;lstm_13_while_lstm_cell_13_matmul_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0“
!lstm_13/while/lstm_cell_13/MatMulMatMul8lstm_13/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_13/while/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р±
2lstm_13/while/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp=lstm_13_while_lstm_cell_13_matmul_1_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0є
#lstm_13/while/lstm_cell_13/MatMul_1MatMullstm_13_while_placeholder_2:lstm_13/while/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рґ
lstm_13/while/lstm_cell_13/addAddV2+lstm_13/while/lstm_cell_13/MatMul:product:0-lstm_13/while/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РЂ
1lstm_13/while/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp<lstm_13_while_lstm_cell_13_biasadd_readvariableop_resource_0*
_output_shapes	
:Р*
dtype0њ
"lstm_13/while/lstm_cell_13/BiasAddBiasAdd"lstm_13/while/lstm_cell_13/add:z:09lstm_13/while/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рl
*lstm_13/while/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :З
 lstm_13/while/lstm_cell_13/splitSplit3lstm_13/while/lstm_cell_13/split/split_dim:output:0+lstm_13/while/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitК
"lstm_13/while/lstm_cell_13/SigmoidSigmoid)lstm_13/while/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€dМ
$lstm_13/while/lstm_cell_13/Sigmoid_1Sigmoid)lstm_13/while/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dЮ
lstm_13/while/lstm_cell_13/mulMul(lstm_13/while/lstm_cell_13/Sigmoid_1:y:0lstm_13_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€dД
lstm_13/while/lstm_cell_13/ReluRelu)lstm_13/while/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€d∞
 lstm_13/while/lstm_cell_13/mul_1Mul&lstm_13/while/lstm_cell_13/Sigmoid:y:0-lstm_13/while/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€d•
 lstm_13/while/lstm_cell_13/add_1AddV2"lstm_13/while/lstm_cell_13/mul:z:0$lstm_13/while/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dМ
$lstm_13/while/lstm_cell_13/Sigmoid_2Sigmoid)lstm_13/while/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€dБ
!lstm_13/while/lstm_cell_13/Relu_1Relu$lstm_13/while/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dі
 lstm_13/while/lstm_cell_13/mul_2Mul(lstm_13/while/lstm_cell_13/Sigmoid_2:y:0/lstm_13/while/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dz
8lstm_13/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Н
2lstm_13/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_13_while_placeholder_1Alstm_13/while/TensorArrayV2Write/TensorListSetItem/index:output:0$lstm_13/while/lstm_cell_13/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“U
lstm_13/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_13/while/addAddV2lstm_13_while_placeholderlstm_13/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_13/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :З
lstm_13/while/add_1AddV2(lstm_13_while_lstm_13_while_loop_counterlstm_13/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_13/while/IdentityIdentitylstm_13/while/add_1:z:0^lstm_13/while/NoOp*
T0*
_output_shapes
: К
lstm_13/while/Identity_1Identity.lstm_13_while_lstm_13_while_maximum_iterations^lstm_13/while/NoOp*
T0*
_output_shapes
: q
lstm_13/while/Identity_2Identitylstm_13/while/add:z:0^lstm_13/while/NoOp*
T0*
_output_shapes
: Ю
lstm_13/while/Identity_3IdentityBlstm_13/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_13/while/NoOp*
T0*
_output_shapes
: С
lstm_13/while/Identity_4Identity$lstm_13/while/lstm_cell_13/mul_2:z:0^lstm_13/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dС
lstm_13/while/Identity_5Identity$lstm_13/while/lstm_cell_13/add_1:z:0^lstm_13/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dр
lstm_13/while/NoOpNoOp2^lstm_13/while/lstm_cell_13/BiasAdd/ReadVariableOp1^lstm_13/while/lstm_cell_13/MatMul/ReadVariableOp3^lstm_13/while/lstm_cell_13/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "=
lstm_13_while_identity_1!lstm_13/while/Identity_1:output:0"=
lstm_13_while_identity_2!lstm_13/while/Identity_2:output:0"=
lstm_13_while_identity_3!lstm_13/while/Identity_3:output:0"=
lstm_13_while_identity_4!lstm_13/while/Identity_4:output:0"=
lstm_13_while_identity_5!lstm_13/while/Identity_5:output:0"9
lstm_13_while_identitylstm_13/while/Identity:output:0"P
%lstm_13_while_lstm_13_strided_slice_1'lstm_13_while_lstm_13_strided_slice_1_0"z
:lstm_13_while_lstm_cell_13_biasadd_readvariableop_resource<lstm_13_while_lstm_cell_13_biasadd_readvariableop_resource_0"|
;lstm_13_while_lstm_cell_13_matmul_1_readvariableop_resource=lstm_13_while_lstm_cell_13_matmul_1_readvariableop_resource_0"x
9lstm_13_while_lstm_cell_13_matmul_readvariableop_resource;lstm_13_while_lstm_cell_13_matmul_readvariableop_resource_0"»
alstm_13_while_tensorarrayv2read_tensorlistgetitem_lstm_13_tensorarrayunstack_tensorlistfromtensorclstm_13_while_tensorarrayv2read_tensorlistgetitem_lstm_13_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : 2f
1lstm_13/while/lstm_cell_13/BiasAdd/ReadVariableOp1lstm_13/while/lstm_cell_13/BiasAdd/ReadVariableOp2d
0lstm_13/while/lstm_cell_13/MatMul/ReadVariableOp0lstm_13/while/lstm_cell_13/MatMul/ReadVariableOp2h
2lstm_13/while/lstm_cell_13/MatMul_1/ReadVariableOp2lstm_13/while/lstm_cell_13/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:
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
_user_specified_name" lstm_13/while/maximum_iterations:R N

_output_shapes
: 
4
_user_specified_namelstm_13/while/loop_counter
Э
E
)__inference_dropout_6_layer_call_fn_98498

inputs
identityѓ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_96317`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€d:O K
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
Т	
Њ
while_cond_95171
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_95171___redundant_placeholder03
/while_while_cond_95171___redundant_placeholder13
/while_while_cond_95171___redundant_placeholder23
/while_while_cond_95171___redundant_placeholder3
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
@: : : : :€€€€€€€€€d:€€€€€€€€€d: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:
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
Й:
ѕ
while_body_97968
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_13_matmul_readvariableop_resource_0:	dРH
5while_lstm_cell_13_matmul_1_readvariableop_resource_0:	dРC
4while_lstm_cell_13_biasadd_readvariableop_resource_0:	Р
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_13_matmul_readvariableop_resource:	dРF
3while_lstm_cell_13_matmul_1_readvariableop_resource:	dРA
2while_lstm_cell_13_biasadd_readvariableop_resource:	РИҐ)while/lstm_cell_13/BiasAdd/ReadVariableOpҐ(while/lstm_cell_13/MatMul/ReadVariableOpҐ*while/lstm_cell_13/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€d*
element_dtype0Э
(while/lstm_cell_13/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_13_matmul_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0Ї
while/lstm_cell_13/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р°
*while/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_13_matmul_1_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0°
while/lstm_cell_13/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РЮ
while/lstm_cell_13/addAddV2#while/lstm_cell_13/MatMul:product:0%while/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РЫ
)while/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_13_biasadd_readvariableop_resource_0*
_output_shapes	
:Р*
dtype0І
while/lstm_cell_13/BiasAddBiasAddwhile/lstm_cell_13/add:z:01while/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рd
"while/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_13/splitSplit+while/lstm_cell_13/split/split_dim:output:0#while/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitz
while/lstm_cell_13/SigmoidSigmoid!while/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell_13/Sigmoid_1Sigmoid!while/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dЖ
while/lstm_cell_13/mulMul while/lstm_cell_13/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€dt
while/lstm_cell_13/ReluRelu!while/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dШ
while/lstm_cell_13/mul_1Mulwhile/lstm_cell_13/Sigmoid:y:0%while/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dН
while/lstm_cell_13/add_1AddV2while/lstm_cell_13/mul:z:0while/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell_13/Sigmoid_2Sigmoid!while/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€dq
while/lstm_cell_13/Relu_1Reluwhile/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dЬ
while/lstm_cell_13/mul_2Mul while/lstm_cell_13/Sigmoid_2:y:0'while/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : н
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_13/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_13/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dy
while/Identity_5Identitywhile/lstm_cell_13/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€d–

while/NoOpNoOp*^while/lstm_cell_13/BiasAdd/ReadVariableOp)^while/lstm_cell_13/MatMul/ReadVariableOp+^while/lstm_cell_13/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"j
2while_lstm_cell_13_biasadd_readvariableop_resource4while_lstm_cell_13_biasadd_readvariableop_resource_0"l
3while_lstm_cell_13_matmul_1_readvariableop_resource5while_lstm_cell_13_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_13_matmul_readvariableop_resource3while_lstm_cell_13_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : 2V
)while/lstm_cell_13/BiasAdd/ReadVariableOp)while/lstm_cell_13/BiasAdd/ReadVariableOp2T
(while/lstm_cell_13/MatMul/ReadVariableOp(while/lstm_cell_13/MatMul/ReadVariableOp2X
*while/lstm_cell_13/MatMul_1/ReadVariableOp*while/lstm_cell_13/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:
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
Т	
Њ
while_cond_97636
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_97636___redundant_placeholder03
/while_while_cond_97636___redundant_placeholder13
/while_while_cond_97636___redundant_placeholder23
/while_while_cond_97636___redundant_placeholder3
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
@: : : : :€€€€€€€€€d:€€€€€€€€€d: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:
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
н8
ѕ
while_body_97637
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_12_matmul_readvariableop_resource_0:	
РH
5while_lstm_cell_12_matmul_1_readvariableop_resource_0:	dРC
4while_lstm_cell_12_biasadd_readvariableop_resource_0:	Р
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_12_matmul_readvariableop_resource:	
РF
3while_lstm_cell_12_matmul_1_readvariableop_resource:	dРA
2while_lstm_cell_12_biasadd_readvariableop_resource:	РИҐ)while/lstm_cell_12/BiasAdd/ReadVariableOpҐ(while/lstm_cell_12/MatMul/ReadVariableOpҐ*while/lstm_cell_12/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€
*
element_dtype0Э
(while/lstm_cell_12/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_12_matmul_readvariableop_resource_0*
_output_shapes
:	
Р*
dtype0Ї
while/lstm_cell_12/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р°
*while/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_12_matmul_1_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0°
while/lstm_cell_12/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РЮ
while/lstm_cell_12/addAddV2#while/lstm_cell_12/MatMul:product:0%while/lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РЫ
)while/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_12_biasadd_readvariableop_resource_0*
_output_shapes	
:Р*
dtype0І
while/lstm_cell_12/BiasAddBiasAddwhile/lstm_cell_12/add:z:01while/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рd
"while/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_12/splitSplit+while/lstm_cell_12/split/split_dim:output:0#while/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitz
while/lstm_cell_12/SigmoidSigmoid!while/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell_12/Sigmoid_1Sigmoid!while/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dЖ
while/lstm_cell_12/mulMul while/lstm_cell_12/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€dt
while/lstm_cell_12/ReluRelu!while/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dШ
while/lstm_cell_12/mul_1Mulwhile/lstm_cell_12/Sigmoid:y:0%while/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dН
while/lstm_cell_12/add_1AddV2while/lstm_cell_12/mul:z:0while/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell_12/Sigmoid_2Sigmoid!while/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€dq
while/lstm_cell_12/Relu_1Reluwhile/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dЬ
while/lstm_cell_12/mul_2Mul while/lstm_cell_12/Sigmoid_2:y:0'while/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€d≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_12/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_12/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dy
while/Identity_5Identitywhile/lstm_cell_12/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€d–

while/NoOpNoOp*^while/lstm_cell_12/BiasAdd/ReadVariableOp)^while/lstm_cell_12/MatMul/ReadVariableOp+^while/lstm_cell_12/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"j
2while_lstm_cell_12_biasadd_readvariableop_resource4while_lstm_cell_12_biasadd_readvariableop_resource_0"l
3while_lstm_cell_12_matmul_1_readvariableop_resource5while_lstm_cell_12_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_12_matmul_readvariableop_resource3while_lstm_cell_12_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : 2V
)while/lstm_cell_12/BiasAdd/ReadVariableOp)while/lstm_cell_12/BiasAdd/ReadVariableOp2T
(while/lstm_cell_12/MatMul/ReadVariableOp(while/lstm_cell_12/MatMul/ReadVariableOp2X
*while/lstm_cell_12/MatMul_1/ReadVariableOp*while/lstm_cell_12/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:
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
І
ґ
'__inference_lstm_12_layer_call_fn_97270
inputs_0
unknown:	
Р
	unknown_0:	dР
	unknown_1:	Р
identityИҐStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_12_layer_call_and_return_conditional_losses_95241|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€

"
_user_specified_name
inputs_0
Т	
Њ
while_cond_96068
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_96068___redundant_placeholder03
/while_while_cond_96068___redundant_placeholder13
/while_while_cond_96068___redundant_placeholder23
/while_while_cond_96068___redundant_placeholder3
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
@: : : : :€€€€€€€€€d:€€€€€€€€€d: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:
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
‘
Г
G__inference_lstm_cell_12_layer_call_and_return_conditional_losses_95158

inputs

states
states_11
matmul_readvariableop_resource:	
Р3
 matmul_1_readvariableop_resource:	dР.
biasadd_readvariableop_resource:	Р
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
Р*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Рs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€
:€€€€€€€€€d:€€€€€€€€€d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:OK
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_namestates:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
н8
ѕ
while_body_97780
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_12_matmul_readvariableop_resource_0:	
РH
5while_lstm_cell_12_matmul_1_readvariableop_resource_0:	dРC
4while_lstm_cell_12_biasadd_readvariableop_resource_0:	Р
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_12_matmul_readvariableop_resource:	
РF
3while_lstm_cell_12_matmul_1_readvariableop_resource:	dРA
2while_lstm_cell_12_biasadd_readvariableop_resource:	РИҐ)while/lstm_cell_12/BiasAdd/ReadVariableOpҐ(while/lstm_cell_12/MatMul/ReadVariableOpҐ*while/lstm_cell_12/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€
*
element_dtype0Э
(while/lstm_cell_12/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_12_matmul_readvariableop_resource_0*
_output_shapes
:	
Р*
dtype0Ї
while/lstm_cell_12/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р°
*while/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_12_matmul_1_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0°
while/lstm_cell_12/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РЮ
while/lstm_cell_12/addAddV2#while/lstm_cell_12/MatMul:product:0%while/lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РЫ
)while/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_12_biasadd_readvariableop_resource_0*
_output_shapes	
:Р*
dtype0І
while/lstm_cell_12/BiasAddBiasAddwhile/lstm_cell_12/add:z:01while/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рd
"while/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_12/splitSplit+while/lstm_cell_12/split/split_dim:output:0#while/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitz
while/lstm_cell_12/SigmoidSigmoid!while/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell_12/Sigmoid_1Sigmoid!while/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dЖ
while/lstm_cell_12/mulMul while/lstm_cell_12/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€dt
while/lstm_cell_12/ReluRelu!while/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dШ
while/lstm_cell_12/mul_1Mulwhile/lstm_cell_12/Sigmoid:y:0%while/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dН
while/lstm_cell_12/add_1AddV2while/lstm_cell_12/mul:z:0while/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell_12/Sigmoid_2Sigmoid!while/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€dq
while/lstm_cell_12/Relu_1Reluwhile/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dЬ
while/lstm_cell_12/mul_2Mul while/lstm_cell_12/Sigmoid_2:y:0'while/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€d≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_12/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_12/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dy
while/Identity_5Identitywhile/lstm_cell_12/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€d–

while/NoOpNoOp*^while/lstm_cell_12/BiasAdd/ReadVariableOp)^while/lstm_cell_12/MatMul/ReadVariableOp+^while/lstm_cell_12/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"j
2while_lstm_cell_12_biasadd_readvariableop_resource4while_lstm_cell_12_biasadd_readvariableop_resource_0"l
3while_lstm_cell_12_matmul_1_readvariableop_resource5while_lstm_cell_12_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_12_matmul_readvariableop_resource3while_lstm_cell_12_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : 2V
)while/lstm_cell_12/BiasAdd/ReadVariableOp)while/lstm_cell_12/BiasAdd/ReadVariableOp2T
(while/lstm_cell_12/MatMul/ReadVariableOp(while/lstm_cell_12/MatMul/ReadVariableOp2X
*while/lstm_cell_12/MatMul_1/ReadVariableOp*while/lstm_cell_12/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:
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
ґB
ѕ

lstm_12_while_body_96702,
(lstm_12_while_lstm_12_while_loop_counter2
.lstm_12_while_lstm_12_while_maximum_iterations
lstm_12_while_placeholder
lstm_12_while_placeholder_1
lstm_12_while_placeholder_2
lstm_12_while_placeholder_3+
'lstm_12_while_lstm_12_strided_slice_1_0g
clstm_12_while_tensorarrayv2read_tensorlistgetitem_lstm_12_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_12_while_lstm_cell_12_matmul_readvariableop_resource_0:	
РP
=lstm_12_while_lstm_cell_12_matmul_1_readvariableop_resource_0:	dРK
<lstm_12_while_lstm_cell_12_biasadd_readvariableop_resource_0:	Р
lstm_12_while_identity
lstm_12_while_identity_1
lstm_12_while_identity_2
lstm_12_while_identity_3
lstm_12_while_identity_4
lstm_12_while_identity_5)
%lstm_12_while_lstm_12_strided_slice_1e
alstm_12_while_tensorarrayv2read_tensorlistgetitem_lstm_12_tensorarrayunstack_tensorlistfromtensorL
9lstm_12_while_lstm_cell_12_matmul_readvariableop_resource:	
РN
;lstm_12_while_lstm_cell_12_matmul_1_readvariableop_resource:	dРI
:lstm_12_while_lstm_cell_12_biasadd_readvariableop_resource:	РИҐ1lstm_12/while/lstm_cell_12/BiasAdd/ReadVariableOpҐ0lstm_12/while/lstm_cell_12/MatMul/ReadVariableOpҐ2lstm_12/while/lstm_cell_12/MatMul_1/ReadVariableOpР
?lstm_12/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   ќ
1lstm_12/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_12_while_tensorarrayv2read_tensorlistgetitem_lstm_12_tensorarrayunstack_tensorlistfromtensor_0lstm_12_while_placeholderHlstm_12/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€
*
element_dtype0≠
0lstm_12/while/lstm_cell_12/MatMul/ReadVariableOpReadVariableOp;lstm_12_while_lstm_cell_12_matmul_readvariableop_resource_0*
_output_shapes
:	
Р*
dtype0“
!lstm_12/while/lstm_cell_12/MatMulMatMul8lstm_12/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_12/while/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р±
2lstm_12/while/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp=lstm_12_while_lstm_cell_12_matmul_1_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0є
#lstm_12/while/lstm_cell_12/MatMul_1MatMullstm_12_while_placeholder_2:lstm_12/while/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рґ
lstm_12/while/lstm_cell_12/addAddV2+lstm_12/while/lstm_cell_12/MatMul:product:0-lstm_12/while/lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РЂ
1lstm_12/while/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp<lstm_12_while_lstm_cell_12_biasadd_readvariableop_resource_0*
_output_shapes	
:Р*
dtype0њ
"lstm_12/while/lstm_cell_12/BiasAddBiasAdd"lstm_12/while/lstm_cell_12/add:z:09lstm_12/while/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рl
*lstm_12/while/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :З
 lstm_12/while/lstm_cell_12/splitSplit3lstm_12/while/lstm_cell_12/split/split_dim:output:0+lstm_12/while/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitК
"lstm_12/while/lstm_cell_12/SigmoidSigmoid)lstm_12/while/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€dМ
$lstm_12/while/lstm_cell_12/Sigmoid_1Sigmoid)lstm_12/while/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dЮ
lstm_12/while/lstm_cell_12/mulMul(lstm_12/while/lstm_cell_12/Sigmoid_1:y:0lstm_12_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€dД
lstm_12/while/lstm_cell_12/ReluRelu)lstm_12/while/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€d∞
 lstm_12/while/lstm_cell_12/mul_1Mul&lstm_12/while/lstm_cell_12/Sigmoid:y:0-lstm_12/while/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€d•
 lstm_12/while/lstm_cell_12/add_1AddV2"lstm_12/while/lstm_cell_12/mul:z:0$lstm_12/while/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dМ
$lstm_12/while/lstm_cell_12/Sigmoid_2Sigmoid)lstm_12/while/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€dБ
!lstm_12/while/lstm_cell_12/Relu_1Relu$lstm_12/while/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dі
 lstm_12/while/lstm_cell_12/mul_2Mul(lstm_12/while/lstm_cell_12/Sigmoid_2:y:0/lstm_12/while/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dе
2lstm_12/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_12_while_placeholder_1lstm_12_while_placeholder$lstm_12/while/lstm_cell_12/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“U
lstm_12/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_12/while/addAddV2lstm_12_while_placeholderlstm_12/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_12/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :З
lstm_12/while/add_1AddV2(lstm_12_while_lstm_12_while_loop_counterlstm_12/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_12/while/IdentityIdentitylstm_12/while/add_1:z:0^lstm_12/while/NoOp*
T0*
_output_shapes
: К
lstm_12/while/Identity_1Identity.lstm_12_while_lstm_12_while_maximum_iterations^lstm_12/while/NoOp*
T0*
_output_shapes
: q
lstm_12/while/Identity_2Identitylstm_12/while/add:z:0^lstm_12/while/NoOp*
T0*
_output_shapes
: Ю
lstm_12/while/Identity_3IdentityBlstm_12/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_12/while/NoOp*
T0*
_output_shapes
: С
lstm_12/while/Identity_4Identity$lstm_12/while/lstm_cell_12/mul_2:z:0^lstm_12/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dС
lstm_12/while/Identity_5Identity$lstm_12/while/lstm_cell_12/add_1:z:0^lstm_12/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dр
lstm_12/while/NoOpNoOp2^lstm_12/while/lstm_cell_12/BiasAdd/ReadVariableOp1^lstm_12/while/lstm_cell_12/MatMul/ReadVariableOp3^lstm_12/while/lstm_cell_12/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "=
lstm_12_while_identity_1!lstm_12/while/Identity_1:output:0"=
lstm_12_while_identity_2!lstm_12/while/Identity_2:output:0"=
lstm_12_while_identity_3!lstm_12/while/Identity_3:output:0"=
lstm_12_while_identity_4!lstm_12/while/Identity_4:output:0"=
lstm_12_while_identity_5!lstm_12/while/Identity_5:output:0"9
lstm_12_while_identitylstm_12/while/Identity:output:0"P
%lstm_12_while_lstm_12_strided_slice_1'lstm_12_while_lstm_12_strided_slice_1_0"z
:lstm_12_while_lstm_cell_12_biasadd_readvariableop_resource<lstm_12_while_lstm_cell_12_biasadd_readvariableop_resource_0"|
;lstm_12_while_lstm_cell_12_matmul_1_readvariableop_resource=lstm_12_while_lstm_cell_12_matmul_1_readvariableop_resource_0"x
9lstm_12_while_lstm_cell_12_matmul_readvariableop_resource;lstm_12_while_lstm_cell_12_matmul_readvariableop_resource_0"»
alstm_12_while_tensorarrayv2read_tensorlistgetitem_lstm_12_tensorarrayunstack_tensorlistfromtensorclstm_12_while_tensorarrayv2read_tensorlistgetitem_lstm_12_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : 2f
1lstm_12/while/lstm_cell_12/BiasAdd/ReadVariableOp1lstm_12/while/lstm_cell_12/BiasAdd/ReadVariableOp2d
0lstm_12/while/lstm_cell_12/MatMul/ReadVariableOp0lstm_12/while/lstm_cell_12/MatMul/ReadVariableOp2h
2lstm_12/while/lstm_cell_12/MatMul_1/ReadVariableOp2lstm_12/while/lstm_cell_12/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:
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
_user_specified_name" lstm_12/while/maximum_iterations:R N

_output_shapes
: 
4
_user_specified_namelstm_12/while/loop_counter
ъJ
Ь
B__inference_lstm_12_layer_call_and_return_conditional_losses_97435
inputs_0>
+lstm_cell_12_matmul_readvariableop_resource:	
Р@
-lstm_cell_12_matmul_1_readvariableop_resource:	dР;
,lstm_cell_12_biasadd_readvariableop_resource:	Р
identityИҐ#lstm_cell_12/BiasAdd/ReadVariableOpҐ"lstm_cell_12/MatMul/ReadVariableOpҐ$lstm_cell_12/MatMul_1/ReadVariableOpҐwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
:€€€€€€€€€dR
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
:€€€€€€€€€dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€
*
shrink_axis_maskП
"lstm_cell_12/MatMul/ReadVariableOpReadVariableOp+lstm_cell_12_matmul_readvariableop_resource*
_output_shapes
:	
Р*
dtype0Ц
lstm_cell_12/MatMulMatMulstrided_slice_2:output:0*lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РУ
$lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_12_matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0Р
lstm_cell_12/MatMul_1MatMulzeros:output:0,lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РМ
lstm_cell_12/addAddV2lstm_cell_12/MatMul:product:0lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РН
#lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_12_biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0Х
lstm_cell_12/BiasAddBiasAddlstm_cell_12/add:z:0+lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р^
lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_12/splitSplit%lstm_cell_12/split/split_dim:output:0lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitn
lstm_cell_12/SigmoidSigmoidlstm_cell_12/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell_12/Sigmoid_1Sigmoidlstm_cell_12/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dw
lstm_cell_12/mulMullstm_cell_12/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dh
lstm_cell_12/ReluRelulstm_cell_12/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dЖ
lstm_cell_12/mul_1Mullstm_cell_12/Sigmoid:y:0lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€d{
lstm_cell_12/add_1AddV2lstm_cell_12/mul:z:0lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell_12/Sigmoid_2Sigmoidlstm_cell_12/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€de
lstm_cell_12/Relu_1Relulstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dК
lstm_cell_12/mul_2Mullstm_cell_12/Sigmoid_2:y:0!lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : А
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_12_matmul_readvariableop_resource-lstm_cell_12_matmul_1_readvariableop_resource,lstm_cell_12_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_97351*
condR
while_cond_97350*K
output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   Ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€dј
NoOpNoOp$^lstm_cell_12/BiasAdd/ReadVariableOp#^lstm_cell_12/MatMul/ReadVariableOp%^lstm_cell_12/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€
: : : 2J
#lstm_cell_12/BiasAdd/ReadVariableOp#lstm_cell_12/BiasAdd/ReadVariableOp2H
"lstm_cell_12/MatMul/ReadVariableOp"lstm_cell_12/MatMul/ReadVariableOp2L
$lstm_cell_12/MatMul_1/ReadVariableOp$lstm_cell_12/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€

"
_user_specified_name
inputs_0
Й:
ѕ
while_body_96220
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_13_matmul_readvariableop_resource_0:	dРH
5while_lstm_cell_13_matmul_1_readvariableop_resource_0:	dРC
4while_lstm_cell_13_biasadd_readvariableop_resource_0:	Р
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_13_matmul_readvariableop_resource:	dРF
3while_lstm_cell_13_matmul_1_readvariableop_resource:	dРA
2while_lstm_cell_13_biasadd_readvariableop_resource:	РИҐ)while/lstm_cell_13/BiasAdd/ReadVariableOpҐ(while/lstm_cell_13/MatMul/ReadVariableOpҐ*while/lstm_cell_13/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€d*
element_dtype0Э
(while/lstm_cell_13/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_13_matmul_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0Ї
while/lstm_cell_13/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р°
*while/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_13_matmul_1_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0°
while/lstm_cell_13/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РЮ
while/lstm_cell_13/addAddV2#while/lstm_cell_13/MatMul:product:0%while/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РЫ
)while/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_13_biasadd_readvariableop_resource_0*
_output_shapes	
:Р*
dtype0І
while/lstm_cell_13/BiasAddBiasAddwhile/lstm_cell_13/add:z:01while/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рd
"while/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_13/splitSplit+while/lstm_cell_13/split/split_dim:output:0#while/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitz
while/lstm_cell_13/SigmoidSigmoid!while/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell_13/Sigmoid_1Sigmoid!while/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dЖ
while/lstm_cell_13/mulMul while/lstm_cell_13/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€dt
while/lstm_cell_13/ReluRelu!while/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dШ
while/lstm_cell_13/mul_1Mulwhile/lstm_cell_13/Sigmoid:y:0%while/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dН
while/lstm_cell_13/add_1AddV2while/lstm_cell_13/mul:z:0while/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell_13/Sigmoid_2Sigmoid!while/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€dq
while/lstm_cell_13/Relu_1Reluwhile/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dЬ
while/lstm_cell_13/mul_2Mul while/lstm_cell_13/Sigmoid_2:y:0'while/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : н
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_13/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_13/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dy
while/Identity_5Identitywhile/lstm_cell_13/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€d–

while/NoOpNoOp*^while/lstm_cell_13/BiasAdd/ReadVariableOp)^while/lstm_cell_13/MatMul/ReadVariableOp+^while/lstm_cell_13/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"j
2while_lstm_cell_13_biasadd_readvariableop_resource4while_lstm_cell_13_biasadd_readvariableop_resource_0"l
3while_lstm_cell_13_matmul_1_readvariableop_resource5while_lstm_cell_13_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_13_matmul_readvariableop_resource3while_lstm_cell_13_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : 2V
)while/lstm_cell_13/BiasAdd/ReadVariableOp)while/lstm_cell_13/BiasAdd/ReadVariableOp2T
(while/lstm_cell_13/MatMul/ReadVariableOp(while/lstm_cell_13/MatMul/ReadVariableOp2X
*while/lstm_cell_13/MatMul_1/ReadVariableOp*while/lstm_cell_13/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:
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
Г
ё
lstm_12_while_cond_97007,
(lstm_12_while_lstm_12_while_loop_counter2
.lstm_12_while_lstm_12_while_maximum_iterations
lstm_12_while_placeholder
lstm_12_while_placeholder_1
lstm_12_while_placeholder_2
lstm_12_while_placeholder_3.
*lstm_12_while_less_lstm_12_strided_slice_1C
?lstm_12_while_lstm_12_while_cond_97007___redundant_placeholder0C
?lstm_12_while_lstm_12_while_cond_97007___redundant_placeholder1C
?lstm_12_while_lstm_12_while_cond_97007___redundant_placeholder2C
?lstm_12_while_lstm_12_while_cond_97007___redundant_placeholder3
lstm_12_while_identity
В
lstm_12/while/LessLesslstm_12_while_placeholder*lstm_12_while_less_lstm_12_strided_slice_1*
T0*
_output_shapes
: [
lstm_12/while/IdentityIdentitylstm_12/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_12_while_identitylstm_12/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€d:€€€€€€€€€d: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:
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
_user_specified_name" lstm_12/while/maximum_iterations:R N

_output_shapes
: 
4
_user_specified_namelstm_12/while/loop_counter
х
і
'__inference_lstm_13_layer_call_fn_97897

inputs
unknown:	dР
	unknown_0:	dР
	unknown_1:	Р
identityИҐStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_13_layer_call_and_return_conditional_losses_95951o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
н8
ѕ
while_body_95715
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_12_matmul_readvariableop_resource_0:	
РH
5while_lstm_cell_12_matmul_1_readvariableop_resource_0:	dРC
4while_lstm_cell_12_biasadd_readvariableop_resource_0:	Р
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_12_matmul_readvariableop_resource:	
РF
3while_lstm_cell_12_matmul_1_readvariableop_resource:	dРA
2while_lstm_cell_12_biasadd_readvariableop_resource:	РИҐ)while/lstm_cell_12/BiasAdd/ReadVariableOpҐ(while/lstm_cell_12/MatMul/ReadVariableOpҐ*while/lstm_cell_12/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€
*
element_dtype0Э
(while/lstm_cell_12/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_12_matmul_readvariableop_resource_0*
_output_shapes
:	
Р*
dtype0Ї
while/lstm_cell_12/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р°
*while/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_12_matmul_1_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0°
while/lstm_cell_12/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РЮ
while/lstm_cell_12/addAddV2#while/lstm_cell_12/MatMul:product:0%while/lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РЫ
)while/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_12_biasadd_readvariableop_resource_0*
_output_shapes	
:Р*
dtype0І
while/lstm_cell_12/BiasAddBiasAddwhile/lstm_cell_12/add:z:01while/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рd
"while/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_12/splitSplit+while/lstm_cell_12/split/split_dim:output:0#while/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitz
while/lstm_cell_12/SigmoidSigmoid!while/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell_12/Sigmoid_1Sigmoid!while/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dЖ
while/lstm_cell_12/mulMul while/lstm_cell_12/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€dt
while/lstm_cell_12/ReluRelu!while/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dШ
while/lstm_cell_12/mul_1Mulwhile/lstm_cell_12/Sigmoid:y:0%while/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dН
while/lstm_cell_12/add_1AddV2while/lstm_cell_12/mul:z:0while/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell_12/Sigmoid_2Sigmoid!while/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€dq
while/lstm_cell_12/Relu_1Reluwhile/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dЬ
while/lstm_cell_12/mul_2Mul while/lstm_cell_12/Sigmoid_2:y:0'while/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€d≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_12/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_12/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dy
while/Identity_5Identitywhile/lstm_cell_12/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€d–

while/NoOpNoOp*^while/lstm_cell_12/BiasAdd/ReadVariableOp)^while/lstm_cell_12/MatMul/ReadVariableOp+^while/lstm_cell_12/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"j
2while_lstm_cell_12_biasadd_readvariableop_resource4while_lstm_cell_12_biasadd_readvariableop_resource_0"l
3while_lstm_cell_12_matmul_1_readvariableop_resource5while_lstm_cell_12_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_12_matmul_readvariableop_resource3while_lstm_cell_12_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : 2V
)while/lstm_cell_12/BiasAdd/ReadVariableOp)while/lstm_cell_12/BiasAdd/ReadVariableOp2T
(while/lstm_cell_12/MatMul/ReadVariableOp(while/lstm_cell_12/MatMul/ReadVariableOp2X
*while/lstm_cell_12/MatMul_1/ReadVariableOp*while/lstm_cell_12/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:
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
¬K
Ъ
B__inference_lstm_13_layer_call_and_return_conditional_losses_98488

inputs>
+lstm_cell_13_matmul_readvariableop_resource:	dР@
-lstm_cell_13_matmul_1_readvariableop_resource:	dР;
,lstm_cell_13_biasadd_readvariableop_resource:	Р
identityИҐ#lstm_cell_13/BiasAdd/ReadVariableOpҐ"lstm_cell_13/MatMul/ReadVariableOpҐ$lstm_cell_13/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
:€€€€€€€€€dR
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
:€€€€€€€€€dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€dR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maskП
"lstm_cell_13/MatMul/ReadVariableOpReadVariableOp+lstm_cell_13_matmul_readvariableop_resource*
_output_shapes
:	dР*
dtype0Ц
lstm_cell_13/MatMulMatMulstrided_slice_2:output:0*lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РУ
$lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_13_matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0Р
lstm_cell_13/MatMul_1MatMulzeros:output:0,lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РМ
lstm_cell_13/addAddV2lstm_cell_13/MatMul:product:0lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РН
#lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_13_biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0Х
lstm_cell_13/BiasAddBiasAddlstm_cell_13/add:z:0+lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р^
lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_13/splitSplit%lstm_cell_13/split/split_dim:output:0lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitn
lstm_cell_13/SigmoidSigmoidlstm_cell_13/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell_13/Sigmoid_1Sigmoidlstm_cell_13/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dw
lstm_cell_13/mulMullstm_cell_13/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dh
lstm_cell_13/ReluRelulstm_cell_13/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dЖ
lstm_cell_13/mul_1Mullstm_cell_13/Sigmoid:y:0lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€d{
lstm_cell_13/add_1AddV2lstm_cell_13/mul:z:0lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell_13/Sigmoid_2Sigmoidlstm_cell_13/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€de
lstm_cell_13/Relu_1Relulstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dК
lstm_cell_13/mul_2Mullstm_cell_13/Sigmoid_2:y:0!lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : А
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_13_matmul_readvariableop_resource-lstm_cell_13_matmul_1_readvariableop_resource,lstm_cell_13_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_98403*
condR
while_cond_98402*K
output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€d*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dј
NoOpNoOp$^lstm_cell_13/BiasAdd/ReadVariableOp#^lstm_cell_13/MatMul/ReadVariableOp%^lstm_cell_13/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€d: : : 2J
#lstm_cell_13/BiasAdd/ReadVariableOp#lstm_cell_13/BiasAdd/ReadVariableOp2H
"lstm_cell_13/MatMul/ReadVariableOp"lstm_cell_13/MatMul/ReadVariableOp2L
$lstm_cell_13/MatMul_1/ReadVariableOp$lstm_cell_13/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
Й:
ѕ
while_body_98258
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_13_matmul_readvariableop_resource_0:	dРH
5while_lstm_cell_13_matmul_1_readvariableop_resource_0:	dРC
4while_lstm_cell_13_biasadd_readvariableop_resource_0:	Р
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_13_matmul_readvariableop_resource:	dРF
3while_lstm_cell_13_matmul_1_readvariableop_resource:	dРA
2while_lstm_cell_13_biasadd_readvariableop_resource:	РИҐ)while/lstm_cell_13/BiasAdd/ReadVariableOpҐ(while/lstm_cell_13/MatMul/ReadVariableOpҐ*while/lstm_cell_13/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€d*
element_dtype0Э
(while/lstm_cell_13/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_13_matmul_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0Ї
while/lstm_cell_13/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р°
*while/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_13_matmul_1_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0°
while/lstm_cell_13/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РЮ
while/lstm_cell_13/addAddV2#while/lstm_cell_13/MatMul:product:0%while/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РЫ
)while/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_13_biasadd_readvariableop_resource_0*
_output_shapes	
:Р*
dtype0І
while/lstm_cell_13/BiasAddBiasAddwhile/lstm_cell_13/add:z:01while/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рd
"while/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_13/splitSplit+while/lstm_cell_13/split/split_dim:output:0#while/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitz
while/lstm_cell_13/SigmoidSigmoid!while/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell_13/Sigmoid_1Sigmoid!while/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dЖ
while/lstm_cell_13/mulMul while/lstm_cell_13/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€dt
while/lstm_cell_13/ReluRelu!while/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dШ
while/lstm_cell_13/mul_1Mulwhile/lstm_cell_13/Sigmoid:y:0%while/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dН
while/lstm_cell_13/add_1AddV2while/lstm_cell_13/mul:z:0while/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell_13/Sigmoid_2Sigmoid!while/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€dq
while/lstm_cell_13/Relu_1Reluwhile/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dЬ
while/lstm_cell_13/mul_2Mul while/lstm_cell_13/Sigmoid_2:y:0'while/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : н
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_13/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_13/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dy
while/Identity_5Identitywhile/lstm_cell_13/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€d–

while/NoOpNoOp*^while/lstm_cell_13/BiasAdd/ReadVariableOp)^while/lstm_cell_13/MatMul/ReadVariableOp+^while/lstm_cell_13/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"j
2while_lstm_cell_13_biasadd_readvariableop_resource4while_lstm_cell_13_biasadd_readvariableop_resource_0"l
3while_lstm_cell_13_matmul_1_readvariableop_resource5while_lstm_cell_13_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_13_matmul_readvariableop_resource3while_lstm_cell_13_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : 2V
)while/lstm_cell_13/BiasAdd/ReadVariableOp)while/lstm_cell_13/BiasAdd/ReadVariableOp2T
(while/lstm_cell_13/MatMul/ReadVariableOp(while/lstm_cell_13/MatMul/ReadVariableOp2X
*while/lstm_cell_13/MatMul_1/ReadVariableOp*while/lstm_cell_13/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:
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
°8
Б
B__inference_lstm_12_layer_call_and_return_conditional_losses_95096

inputs%
lstm_cell_12_95014:	
Р%
lstm_cell_12_95016:	dР!
lstm_cell_12_95018:	Р
identityИҐ$lstm_cell_12/StatefulPartitionedCallҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
:€€€€€€€€€dR
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
:€€€€€€€€€dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€
*
shrink_axis_maskс
$lstm_cell_12/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_12_95014lstm_cell_12_95016lstm_cell_12_95018*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_lstm_cell_12_layer_call_and_return_conditional_losses_95013n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ≤
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_12_95014lstm_cell_12_95016lstm_cell_12_95018*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_95027*
condR
while_cond_95026*K
output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   Ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€du
NoOpNoOp%^lstm_cell_12/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€
: : : 2L
$lstm_cell_12/StatefulPartitionedCall$lstm_cell_12/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€

 
_user_specified_nameinputs
ј
Х
(__inference_dense_13_layer_call_fn_98544

inputs
unknown:

	unknown_0:

identityИҐStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_13_layer_call_and_return_conditional_losses_96001o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
№
Е
G__inference_lstm_cell_12_layer_call_and_return_conditional_losses_98621

inputs
states_0
states_11
matmul_readvariableop_resource:	
Р3
 matmul_1_readvariableop_resource:	dР.
biasadd_readvariableop_resource:	Р
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
Р*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Рs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€
:€€€€€€€€€d:€€€€€€€€€d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:QM
'
_output_shapes
:€€€€€€€€€d
"
_user_specified_name
states_1:QM
'
_output_shapes
:€€€€€€€€€d
"
_user_specified_name
states_0:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
шQ
р
%sequential_6_lstm_12_while_body_94709F
Bsequential_6_lstm_12_while_sequential_6_lstm_12_while_loop_counterL
Hsequential_6_lstm_12_while_sequential_6_lstm_12_while_maximum_iterations*
&sequential_6_lstm_12_while_placeholder,
(sequential_6_lstm_12_while_placeholder_1,
(sequential_6_lstm_12_while_placeholder_2,
(sequential_6_lstm_12_while_placeholder_3E
Asequential_6_lstm_12_while_sequential_6_lstm_12_strided_slice_1_0Б
}sequential_6_lstm_12_while_tensorarrayv2read_tensorlistgetitem_sequential_6_lstm_12_tensorarrayunstack_tensorlistfromtensor_0[
Hsequential_6_lstm_12_while_lstm_cell_12_matmul_readvariableop_resource_0:	
Р]
Jsequential_6_lstm_12_while_lstm_cell_12_matmul_1_readvariableop_resource_0:	dРX
Isequential_6_lstm_12_while_lstm_cell_12_biasadd_readvariableop_resource_0:	Р'
#sequential_6_lstm_12_while_identity)
%sequential_6_lstm_12_while_identity_1)
%sequential_6_lstm_12_while_identity_2)
%sequential_6_lstm_12_while_identity_3)
%sequential_6_lstm_12_while_identity_4)
%sequential_6_lstm_12_while_identity_5C
?sequential_6_lstm_12_while_sequential_6_lstm_12_strided_slice_1
{sequential_6_lstm_12_while_tensorarrayv2read_tensorlistgetitem_sequential_6_lstm_12_tensorarrayunstack_tensorlistfromtensorY
Fsequential_6_lstm_12_while_lstm_cell_12_matmul_readvariableop_resource:	
Р[
Hsequential_6_lstm_12_while_lstm_cell_12_matmul_1_readvariableop_resource:	dРV
Gsequential_6_lstm_12_while_lstm_cell_12_biasadd_readvariableop_resource:	РИҐ>sequential_6/lstm_12/while/lstm_cell_12/BiasAdd/ReadVariableOpҐ=sequential_6/lstm_12/while/lstm_cell_12/MatMul/ReadVariableOpҐ?sequential_6/lstm_12/while/lstm_cell_12/MatMul_1/ReadVariableOpЭ
Lsequential_6/lstm_12/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   П
>sequential_6/lstm_12/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}sequential_6_lstm_12_while_tensorarrayv2read_tensorlistgetitem_sequential_6_lstm_12_tensorarrayunstack_tensorlistfromtensor_0&sequential_6_lstm_12_while_placeholderUsequential_6/lstm_12/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€
*
element_dtype0«
=sequential_6/lstm_12/while/lstm_cell_12/MatMul/ReadVariableOpReadVariableOpHsequential_6_lstm_12_while_lstm_cell_12_matmul_readvariableop_resource_0*
_output_shapes
:	
Р*
dtype0щ
.sequential_6/lstm_12/while/lstm_cell_12/MatMulMatMulEsequential_6/lstm_12/while/TensorArrayV2Read/TensorListGetItem:item:0Esequential_6/lstm_12/while/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РЋ
?sequential_6/lstm_12/while/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOpJsequential_6_lstm_12_while_lstm_cell_12_matmul_1_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0а
0sequential_6/lstm_12/while/lstm_cell_12/MatMul_1MatMul(sequential_6_lstm_12_while_placeholder_2Gsequential_6/lstm_12/while/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РЁ
+sequential_6/lstm_12/while/lstm_cell_12/addAddV28sequential_6/lstm_12/while/lstm_cell_12/MatMul:product:0:sequential_6/lstm_12/while/lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Р≈
>sequential_6/lstm_12/while/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOpIsequential_6_lstm_12_while_lstm_cell_12_biasadd_readvariableop_resource_0*
_output_shapes	
:Р*
dtype0ж
/sequential_6/lstm_12/while/lstm_cell_12/BiasAddBiasAdd/sequential_6/lstm_12/while/lstm_cell_12/add:z:0Fsequential_6/lstm_12/while/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рy
7sequential_6/lstm_12/while/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ѓ
-sequential_6/lstm_12/while/lstm_cell_12/splitSplit@sequential_6/lstm_12/while/lstm_cell_12/split/split_dim:output:08sequential_6/lstm_12/while/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_split§
/sequential_6/lstm_12/while/lstm_cell_12/SigmoidSigmoid6sequential_6/lstm_12/while/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€d¶
1sequential_6/lstm_12/while/lstm_cell_12/Sigmoid_1Sigmoid6sequential_6/lstm_12/while/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€d≈
+sequential_6/lstm_12/while/lstm_cell_12/mulMul5sequential_6/lstm_12/while/lstm_cell_12/Sigmoid_1:y:0(sequential_6_lstm_12_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€dЮ
,sequential_6/lstm_12/while/lstm_cell_12/ReluRelu6sequential_6/lstm_12/while/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€d„
-sequential_6/lstm_12/while/lstm_cell_12/mul_1Mul3sequential_6/lstm_12/while/lstm_cell_12/Sigmoid:y:0:sequential_6/lstm_12/while/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dћ
-sequential_6/lstm_12/while/lstm_cell_12/add_1AddV2/sequential_6/lstm_12/while/lstm_cell_12/mul:z:01sequential_6/lstm_12/while/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€d¶
1sequential_6/lstm_12/while/lstm_cell_12/Sigmoid_2Sigmoid6sequential_6/lstm_12/while/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€dЫ
.sequential_6/lstm_12/while/lstm_cell_12/Relu_1Relu1sequential_6/lstm_12/while/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dџ
-sequential_6/lstm_12/while/lstm_cell_12/mul_2Mul5sequential_6/lstm_12/while/lstm_cell_12/Sigmoid_2:y:0<sequential_6/lstm_12/while/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dЩ
?sequential_6/lstm_12/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(sequential_6_lstm_12_while_placeholder_1&sequential_6_lstm_12_while_placeholder1sequential_6/lstm_12/while/lstm_cell_12/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“b
 sequential_6/lstm_12/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ы
sequential_6/lstm_12/while/addAddV2&sequential_6_lstm_12_while_placeholder)sequential_6/lstm_12/while/add/y:output:0*
T0*
_output_shapes
: d
"sequential_6/lstm_12/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :ї
 sequential_6/lstm_12/while/add_1AddV2Bsequential_6_lstm_12_while_sequential_6_lstm_12_while_loop_counter+sequential_6/lstm_12/while/add_1/y:output:0*
T0*
_output_shapes
: Ш
#sequential_6/lstm_12/while/IdentityIdentity$sequential_6/lstm_12/while/add_1:z:0 ^sequential_6/lstm_12/while/NoOp*
T0*
_output_shapes
: Њ
%sequential_6/lstm_12/while/Identity_1IdentityHsequential_6_lstm_12_while_sequential_6_lstm_12_while_maximum_iterations ^sequential_6/lstm_12/while/NoOp*
T0*
_output_shapes
: Ш
%sequential_6/lstm_12/while/Identity_2Identity"sequential_6/lstm_12/while/add:z:0 ^sequential_6/lstm_12/while/NoOp*
T0*
_output_shapes
: ≈
%sequential_6/lstm_12/while/Identity_3IdentityOsequential_6/lstm_12/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^sequential_6/lstm_12/while/NoOp*
T0*
_output_shapes
: Є
%sequential_6/lstm_12/while/Identity_4Identity1sequential_6/lstm_12/while/lstm_cell_12/mul_2:z:0 ^sequential_6/lstm_12/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dЄ
%sequential_6/lstm_12/while/Identity_5Identity1sequential_6/lstm_12/while/lstm_cell_12/add_1:z:0 ^sequential_6/lstm_12/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€d§
sequential_6/lstm_12/while/NoOpNoOp?^sequential_6/lstm_12/while/lstm_cell_12/BiasAdd/ReadVariableOp>^sequential_6/lstm_12/while/lstm_cell_12/MatMul/ReadVariableOp@^sequential_6/lstm_12/while/lstm_cell_12/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_6_lstm_12_while_identity_1.sequential_6/lstm_12/while/Identity_1:output:0"W
%sequential_6_lstm_12_while_identity_2.sequential_6/lstm_12/while/Identity_2:output:0"W
%sequential_6_lstm_12_while_identity_3.sequential_6/lstm_12/while/Identity_3:output:0"W
%sequential_6_lstm_12_while_identity_4.sequential_6/lstm_12/while/Identity_4:output:0"W
%sequential_6_lstm_12_while_identity_5.sequential_6/lstm_12/while/Identity_5:output:0"S
#sequential_6_lstm_12_while_identity,sequential_6/lstm_12/while/Identity:output:0"Ф
Gsequential_6_lstm_12_while_lstm_cell_12_biasadd_readvariableop_resourceIsequential_6_lstm_12_while_lstm_cell_12_biasadd_readvariableop_resource_0"Ц
Hsequential_6_lstm_12_while_lstm_cell_12_matmul_1_readvariableop_resourceJsequential_6_lstm_12_while_lstm_cell_12_matmul_1_readvariableop_resource_0"Т
Fsequential_6_lstm_12_while_lstm_cell_12_matmul_readvariableop_resourceHsequential_6_lstm_12_while_lstm_cell_12_matmul_readvariableop_resource_0"Д
?sequential_6_lstm_12_while_sequential_6_lstm_12_strided_slice_1Asequential_6_lstm_12_while_sequential_6_lstm_12_strided_slice_1_0"ь
{sequential_6_lstm_12_while_tensorarrayv2read_tensorlistgetitem_sequential_6_lstm_12_tensorarrayunstack_tensorlistfromtensor}sequential_6_lstm_12_while_tensorarrayv2read_tensorlistgetitem_sequential_6_lstm_12_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : 2А
>sequential_6/lstm_12/while/lstm_cell_12/BiasAdd/ReadVariableOp>sequential_6/lstm_12/while/lstm_cell_12/BiasAdd/ReadVariableOp2~
=sequential_6/lstm_12/while/lstm_cell_12/MatMul/ReadVariableOp=sequential_6/lstm_12/while/lstm_cell_12/MatMul/ReadVariableOp2В
?sequential_6/lstm_12/while/lstm_cell_12/MatMul_1/ReadVariableOp?sequential_6/lstm_12/while/lstm_cell_12/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:

_output_shapes
: :

_output_shapes
: :ea

_output_shapes
: 
G
_user_specified_name/-sequential_6/lstm_12/while/maximum_iterations:_ [

_output_shapes
: 
A
_user_specified_name)'sequential_6/lstm_12/while/loop_counter
Н
ґ
'__inference_lstm_13_layer_call_fn_97886
inputs_0
unknown:	dР
	unknown_0:	dР
	unknown_1:	Р
identityИҐStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_13_layer_call_and_return_conditional_losses_95595o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d
"
_user_specified_name
inputs_0
н8
ѕ
while_body_97351
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_12_matmul_readvariableop_resource_0:	
РH
5while_lstm_cell_12_matmul_1_readvariableop_resource_0:	dРC
4while_lstm_cell_12_biasadd_readvariableop_resource_0:	Р
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_12_matmul_readvariableop_resource:	
РF
3while_lstm_cell_12_matmul_1_readvariableop_resource:	dРA
2while_lstm_cell_12_biasadd_readvariableop_resource:	РИҐ)while/lstm_cell_12/BiasAdd/ReadVariableOpҐ(while/lstm_cell_12/MatMul/ReadVariableOpҐ*while/lstm_cell_12/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€
*
element_dtype0Э
(while/lstm_cell_12/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_12_matmul_readvariableop_resource_0*
_output_shapes
:	
Р*
dtype0Ї
while/lstm_cell_12/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р°
*while/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_12_matmul_1_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0°
while/lstm_cell_12/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РЮ
while/lstm_cell_12/addAddV2#while/lstm_cell_12/MatMul:product:0%while/lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РЫ
)while/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_12_biasadd_readvariableop_resource_0*
_output_shapes	
:Р*
dtype0І
while/lstm_cell_12/BiasAddBiasAddwhile/lstm_cell_12/add:z:01while/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рd
"while/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_12/splitSplit+while/lstm_cell_12/split/split_dim:output:0#while/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitz
while/lstm_cell_12/SigmoidSigmoid!while/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell_12/Sigmoid_1Sigmoid!while/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dЖ
while/lstm_cell_12/mulMul while/lstm_cell_12/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€dt
while/lstm_cell_12/ReluRelu!while/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dШ
while/lstm_cell_12/mul_1Mulwhile/lstm_cell_12/Sigmoid:y:0%while/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dН
while/lstm_cell_12/add_1AddV2while/lstm_cell_12/mul:z:0while/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell_12/Sigmoid_2Sigmoid!while/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€dq
while/lstm_cell_12/Relu_1Reluwhile/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dЬ
while/lstm_cell_12/mul_2Mul while/lstm_cell_12/Sigmoid_2:y:0'while/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€d≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_12/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_12/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dy
while/Identity_5Identitywhile/lstm_cell_12/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€d–

while/NoOpNoOp*^while/lstm_cell_12/BiasAdd/ReadVariableOp)^while/lstm_cell_12/MatMul/ReadVariableOp+^while/lstm_cell_12/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"j
2while_lstm_cell_12_biasadd_readvariableop_resource4while_lstm_cell_12_biasadd_readvariableop_resource_0"l
3while_lstm_cell_12_matmul_1_readvariableop_resource5while_lstm_cell_12_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_12_matmul_readvariableop_resource3while_lstm_cell_12_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : 2V
)while/lstm_cell_12/BiasAdd/ReadVariableOp)while/lstm_cell_12/BiasAdd/ReadVariableOp2T
(while/lstm_cell_12/MatMul/ReadVariableOp(while/lstm_cell_12/MatMul/ReadVariableOp2X
*while/lstm_cell_12/MatMul_1/ReadVariableOp*while/lstm_cell_12/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:
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
Г
ё
lstm_12_while_cond_96701,
(lstm_12_while_lstm_12_while_loop_counter2
.lstm_12_while_lstm_12_while_maximum_iterations
lstm_12_while_placeholder
lstm_12_while_placeholder_1
lstm_12_while_placeholder_2
lstm_12_while_placeholder_3.
*lstm_12_while_less_lstm_12_strided_slice_1C
?lstm_12_while_lstm_12_while_cond_96701___redundant_placeholder0C
?lstm_12_while_lstm_12_while_cond_96701___redundant_placeholder1C
?lstm_12_while_lstm_12_while_cond_96701___redundant_placeholder2C
?lstm_12_while_lstm_12_while_cond_96701___redundant_placeholder3
lstm_12_while_identity
В
lstm_12/while/LessLesslstm_12_while_placeholder*lstm_12_while_less_lstm_12_strided_slice_1*
T0*
_output_shapes
: [
lstm_12/while/IdentityIdentitylstm_12/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_12_while_identitylstm_12/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€d:€€€€€€€€€d: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:
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
_user_specified_name" lstm_12/while/maximum_iterations:R N

_output_shapes
: 
4
_user_specified_namelstm_12/while/loop_counter
±К
ё"
__inference__traced_save_98990
file_prefix8
&read_disablecopyonread_dense_12_kernel:d4
&read_1_disablecopyonread_dense_12_bias::
(read_2_disablecopyonread_dense_13_kernel:
4
&read_3_disablecopyonread_dense_13_bias:
G
4read_4_disablecopyonread_lstm_12_lstm_cell_12_kernel:	
РQ
>read_5_disablecopyonread_lstm_12_lstm_cell_12_recurrent_kernel:	dРA
2read_6_disablecopyonread_lstm_12_lstm_cell_12_bias:	РG
4read_7_disablecopyonread_lstm_13_lstm_cell_13_kernel:	dРQ
>read_8_disablecopyonread_lstm_13_lstm_cell_13_recurrent_kernel:	dРA
2read_9_disablecopyonread_lstm_13_lstm_cell_13_bias:	Р-
#read_10_disablecopyonread_iteration:	 1
'read_11_disablecopyonread_learning_rate: O
<read_12_disablecopyonread_adam_m_lstm_12_lstm_cell_12_kernel:	
РO
<read_13_disablecopyonread_adam_v_lstm_12_lstm_cell_12_kernel:	
РY
Fread_14_disablecopyonread_adam_m_lstm_12_lstm_cell_12_recurrent_kernel:	dРY
Fread_15_disablecopyonread_adam_v_lstm_12_lstm_cell_12_recurrent_kernel:	dРI
:read_16_disablecopyonread_adam_m_lstm_12_lstm_cell_12_bias:	РI
:read_17_disablecopyonread_adam_v_lstm_12_lstm_cell_12_bias:	РO
<read_18_disablecopyonread_adam_m_lstm_13_lstm_cell_13_kernel:	dРO
<read_19_disablecopyonread_adam_v_lstm_13_lstm_cell_13_kernel:	dРY
Fread_20_disablecopyonread_adam_m_lstm_13_lstm_cell_13_recurrent_kernel:	dРY
Fread_21_disablecopyonread_adam_v_lstm_13_lstm_cell_13_recurrent_kernel:	dРI
:read_22_disablecopyonread_adam_m_lstm_13_lstm_cell_13_bias:	РI
:read_23_disablecopyonread_adam_v_lstm_13_lstm_cell_13_bias:	РB
0read_24_disablecopyonread_adam_m_dense_12_kernel:dB
0read_25_disablecopyonread_adam_v_dense_12_kernel:d<
.read_26_disablecopyonread_adam_m_dense_12_bias:<
.read_27_disablecopyonread_adam_v_dense_12_bias:B
0read_28_disablecopyonread_adam_m_dense_13_kernel:
B
0read_29_disablecopyonread_adam_v_dense_13_kernel:
<
.read_30_disablecopyonread_adam_m_dense_13_bias:
<
.read_31_disablecopyonread_adam_v_dense_13_bias:
+
!read_32_disablecopyonread_total_1: +
!read_33_disablecopyonread_count_1: )
read_34_disablecopyonread_total: )
read_35_disablecopyonread_count: 
savev2_const
identity_73ИҐMergeV2CheckpointsҐRead/DisableCopyOnReadҐRead/ReadVariableOpҐRead_1/DisableCopyOnReadҐRead_1/ReadVariableOpҐRead_10/DisableCopyOnReadҐRead_10/ReadVariableOpҐRead_11/DisableCopyOnReadҐRead_11/ReadVariableOpҐRead_12/DisableCopyOnReadҐRead_12/ReadVariableOpҐRead_13/DisableCopyOnReadҐRead_13/ReadVariableOpҐRead_14/DisableCopyOnReadҐRead_14/ReadVariableOpҐRead_15/DisableCopyOnReadҐRead_15/ReadVariableOpҐRead_16/DisableCopyOnReadҐRead_16/ReadVariableOpҐRead_17/DisableCopyOnReadҐRead_17/ReadVariableOpҐRead_18/DisableCopyOnReadҐRead_18/ReadVariableOpҐRead_19/DisableCopyOnReadҐRead_19/ReadVariableOpҐRead_2/DisableCopyOnReadҐRead_2/ReadVariableOpҐRead_20/DisableCopyOnReadҐRead_20/ReadVariableOpҐRead_21/DisableCopyOnReadҐRead_21/ReadVariableOpҐRead_22/DisableCopyOnReadҐRead_22/ReadVariableOpҐRead_23/DisableCopyOnReadҐRead_23/ReadVariableOpҐRead_24/DisableCopyOnReadҐRead_24/ReadVariableOpҐRead_25/DisableCopyOnReadҐRead_25/ReadVariableOpҐRead_26/DisableCopyOnReadҐRead_26/ReadVariableOpҐRead_27/DisableCopyOnReadҐRead_27/ReadVariableOpҐRead_28/DisableCopyOnReadҐRead_28/ReadVariableOpҐRead_29/DisableCopyOnReadҐRead_29/ReadVariableOpҐRead_3/DisableCopyOnReadҐRead_3/ReadVariableOpҐRead_30/DisableCopyOnReadҐRead_30/ReadVariableOpҐRead_31/DisableCopyOnReadҐRead_31/ReadVariableOpҐRead_32/DisableCopyOnReadҐRead_32/ReadVariableOpҐRead_33/DisableCopyOnReadҐRead_33/ReadVariableOpҐRead_34/DisableCopyOnReadҐRead_34/ReadVariableOpҐRead_35/DisableCopyOnReadҐRead_35/ReadVariableOpҐRead_4/DisableCopyOnReadҐRead_4/ReadVariableOpҐRead_5/DisableCopyOnReadҐRead_5/ReadVariableOpҐRead_6/DisableCopyOnReadҐRead_6/ReadVariableOpҐRead_7/DisableCopyOnReadҐRead_7/ReadVariableOpҐRead_8/DisableCopyOnReadҐRead_8/ReadVariableOpҐRead_9/DisableCopyOnReadҐRead_9/ReadVariableOpw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: x
Read/DisableCopyOnReadDisableCopyOnRead&read_disablecopyonread_dense_12_kernel"/device:CPU:0*
_output_shapes
 Ґ
Read/ReadVariableOpReadVariableOp&read_disablecopyonread_dense_12_kernel^Read/DisableCopyOnRead"/device:CPU:0*
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
Read_1/DisableCopyOnReadDisableCopyOnRead&read_1_disablecopyonread_dense_12_bias"/device:CPU:0*
_output_shapes
 Ґ
Read_1/ReadVariableOpReadVariableOp&read_1_disablecopyonread_dense_12_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
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
Read_2/DisableCopyOnReadDisableCopyOnRead(read_2_disablecopyonread_dense_13_kernel"/device:CPU:0*
_output_shapes
 ®
Read_2/ReadVariableOpReadVariableOp(read_2_disablecopyonread_dense_13_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:
*
dtype0m

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:
c

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes

:
z
Read_3/DisableCopyOnReadDisableCopyOnRead&read_3_disablecopyonread_dense_13_bias"/device:CPU:0*
_output_shapes
 Ґ
Read_3/ReadVariableOpReadVariableOp&read_3_disablecopyonread_dense_13_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:
И
Read_4/DisableCopyOnReadDisableCopyOnRead4read_4_disablecopyonread_lstm_12_lstm_cell_12_kernel"/device:CPU:0*
_output_shapes
 µ
Read_4/ReadVariableOpReadVariableOp4read_4_disablecopyonread_lstm_12_lstm_cell_12_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	
Р*
dtype0n

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	
Рd

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:	
РТ
Read_5/DisableCopyOnReadDisableCopyOnRead>read_5_disablecopyonread_lstm_12_lstm_cell_12_recurrent_kernel"/device:CPU:0*
_output_shapes
 њ
Read_5/ReadVariableOpReadVariableOp>read_5_disablecopyonread_lstm_12_lstm_cell_12_recurrent_kernel^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	dР*
dtype0o
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	dРf
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:	dРЖ
Read_6/DisableCopyOnReadDisableCopyOnRead2read_6_disablecopyonread_lstm_12_lstm_cell_12_bias"/device:CPU:0*
_output_shapes
 ѓ
Read_6/ReadVariableOpReadVariableOp2read_6_disablecopyonread_lstm_12_lstm_cell_12_bias^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Р*
dtype0k
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Рb
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes	
:РИ
Read_7/DisableCopyOnReadDisableCopyOnRead4read_7_disablecopyonread_lstm_13_lstm_cell_13_kernel"/device:CPU:0*
_output_shapes
 µ
Read_7/ReadVariableOpReadVariableOp4read_7_disablecopyonread_lstm_13_lstm_cell_13_kernel^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	dР*
dtype0o
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	dРf
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:	dРТ
Read_8/DisableCopyOnReadDisableCopyOnRead>read_8_disablecopyonread_lstm_13_lstm_cell_13_recurrent_kernel"/device:CPU:0*
_output_shapes
 њ
Read_8/ReadVariableOpReadVariableOp>read_8_disablecopyonread_lstm_13_lstm_cell_13_recurrent_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	dР*
dtype0o
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	dРf
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:	dРЖ
Read_9/DisableCopyOnReadDisableCopyOnRead2read_9_disablecopyonread_lstm_13_lstm_cell_13_bias"/device:CPU:0*
_output_shapes
 ѓ
Read_9/ReadVariableOpReadVariableOp2read_9_disablecopyonread_lstm_13_lstm_cell_13_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Р*
dtype0k
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Рb
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes	
:Рx
Read_10/DisableCopyOnReadDisableCopyOnRead#read_10_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 Э
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
 °
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
: С
Read_12/DisableCopyOnReadDisableCopyOnRead<read_12_disablecopyonread_adam_m_lstm_12_lstm_cell_12_kernel"/device:CPU:0*
_output_shapes
 њ
Read_12/ReadVariableOpReadVariableOp<read_12_disablecopyonread_adam_m_lstm_12_lstm_cell_12_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	
Р*
dtype0p
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	
Рf
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
:	
РС
Read_13/DisableCopyOnReadDisableCopyOnRead<read_13_disablecopyonread_adam_v_lstm_12_lstm_cell_12_kernel"/device:CPU:0*
_output_shapes
 њ
Read_13/ReadVariableOpReadVariableOp<read_13_disablecopyonread_adam_v_lstm_12_lstm_cell_12_kernel^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	
Р*
dtype0p
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	
Рf
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:	
РЫ
Read_14/DisableCopyOnReadDisableCopyOnReadFread_14_disablecopyonread_adam_m_lstm_12_lstm_cell_12_recurrent_kernel"/device:CPU:0*
_output_shapes
 …
Read_14/ReadVariableOpReadVariableOpFread_14_disablecopyonread_adam_m_lstm_12_lstm_cell_12_recurrent_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	dР*
dtype0p
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	dРf
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
:	dРЫ
Read_15/DisableCopyOnReadDisableCopyOnReadFread_15_disablecopyonread_adam_v_lstm_12_lstm_cell_12_recurrent_kernel"/device:CPU:0*
_output_shapes
 …
Read_15/ReadVariableOpReadVariableOpFread_15_disablecopyonread_adam_v_lstm_12_lstm_cell_12_recurrent_kernel^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	dР*
dtype0p
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	dРf
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:	dРП
Read_16/DisableCopyOnReadDisableCopyOnRead:read_16_disablecopyonread_adam_m_lstm_12_lstm_cell_12_bias"/device:CPU:0*
_output_shapes
 є
Read_16/ReadVariableOpReadVariableOp:read_16_disablecopyonread_adam_m_lstm_12_lstm_cell_12_bias^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Р*
dtype0l
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Рb
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes	
:РП
Read_17/DisableCopyOnReadDisableCopyOnRead:read_17_disablecopyonread_adam_v_lstm_12_lstm_cell_12_bias"/device:CPU:0*
_output_shapes
 є
Read_17/ReadVariableOpReadVariableOp:read_17_disablecopyonread_adam_v_lstm_12_lstm_cell_12_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Р*
dtype0l
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Рb
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes	
:РС
Read_18/DisableCopyOnReadDisableCopyOnRead<read_18_disablecopyonread_adam_m_lstm_13_lstm_cell_13_kernel"/device:CPU:0*
_output_shapes
 њ
Read_18/ReadVariableOpReadVariableOp<read_18_disablecopyonread_adam_m_lstm_13_lstm_cell_13_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	dР*
dtype0p
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	dРf
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
:	dРС
Read_19/DisableCopyOnReadDisableCopyOnRead<read_19_disablecopyonread_adam_v_lstm_13_lstm_cell_13_kernel"/device:CPU:0*
_output_shapes
 њ
Read_19/ReadVariableOpReadVariableOp<read_19_disablecopyonread_adam_v_lstm_13_lstm_cell_13_kernel^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	dР*
dtype0p
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	dРf
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:	dРЫ
Read_20/DisableCopyOnReadDisableCopyOnReadFread_20_disablecopyonread_adam_m_lstm_13_lstm_cell_13_recurrent_kernel"/device:CPU:0*
_output_shapes
 …
Read_20/ReadVariableOpReadVariableOpFread_20_disablecopyonread_adam_m_lstm_13_lstm_cell_13_recurrent_kernel^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	dР*
dtype0p
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	dРf
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
:	dРЫ
Read_21/DisableCopyOnReadDisableCopyOnReadFread_21_disablecopyonread_adam_v_lstm_13_lstm_cell_13_recurrent_kernel"/device:CPU:0*
_output_shapes
 …
Read_21/ReadVariableOpReadVariableOpFread_21_disablecopyonread_adam_v_lstm_13_lstm_cell_13_recurrent_kernel^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	dР*
dtype0p
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	dРf
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:	dРП
Read_22/DisableCopyOnReadDisableCopyOnRead:read_22_disablecopyonread_adam_m_lstm_13_lstm_cell_13_bias"/device:CPU:0*
_output_shapes
 є
Read_22/ReadVariableOpReadVariableOp:read_22_disablecopyonread_adam_m_lstm_13_lstm_cell_13_bias^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Р*
dtype0l
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Рb
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes	
:РП
Read_23/DisableCopyOnReadDisableCopyOnRead:read_23_disablecopyonread_adam_v_lstm_13_lstm_cell_13_bias"/device:CPU:0*
_output_shapes
 є
Read_23/ReadVariableOpReadVariableOp:read_23_disablecopyonread_adam_v_lstm_13_lstm_cell_13_bias^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Р*
dtype0l
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Рb
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes	
:РЕ
Read_24/DisableCopyOnReadDisableCopyOnRead0read_24_disablecopyonread_adam_m_dense_12_kernel"/device:CPU:0*
_output_shapes
 ≤
Read_24/ReadVariableOpReadVariableOp0read_24_disablecopyonread_adam_m_dense_12_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*
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

:dЕ
Read_25/DisableCopyOnReadDisableCopyOnRead0read_25_disablecopyonread_adam_v_dense_12_kernel"/device:CPU:0*
_output_shapes
 ≤
Read_25/ReadVariableOpReadVariableOp0read_25_disablecopyonread_adam_v_dense_12_kernel^Read_25/DisableCopyOnRead"/device:CPU:0*
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

:dГ
Read_26/DisableCopyOnReadDisableCopyOnRead.read_26_disablecopyonread_adam_m_dense_12_bias"/device:CPU:0*
_output_shapes
 ђ
Read_26/ReadVariableOpReadVariableOp.read_26_disablecopyonread_adam_m_dense_12_bias^Read_26/DisableCopyOnRead"/device:CPU:0*
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
:Г
Read_27/DisableCopyOnReadDisableCopyOnRead.read_27_disablecopyonread_adam_v_dense_12_bias"/device:CPU:0*
_output_shapes
 ђ
Read_27/ReadVariableOpReadVariableOp.read_27_disablecopyonread_adam_v_dense_12_bias^Read_27/DisableCopyOnRead"/device:CPU:0*
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
:Е
Read_28/DisableCopyOnReadDisableCopyOnRead0read_28_disablecopyonread_adam_m_dense_13_kernel"/device:CPU:0*
_output_shapes
 ≤
Read_28/ReadVariableOpReadVariableOp0read_28_disablecopyonread_adam_m_dense_13_kernel^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:
*
dtype0o
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:
e
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes

:
Е
Read_29/DisableCopyOnReadDisableCopyOnRead0read_29_disablecopyonread_adam_v_dense_13_kernel"/device:CPU:0*
_output_shapes
 ≤
Read_29/ReadVariableOpReadVariableOp0read_29_disablecopyonread_adam_v_dense_13_kernel^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:
*
dtype0o
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:
e
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes

:
Г
Read_30/DisableCopyOnReadDisableCopyOnRead.read_30_disablecopyonread_adam_m_dense_13_bias"/device:CPU:0*
_output_shapes
 ђ
Read_30/ReadVariableOpReadVariableOp.read_30_disablecopyonread_adam_m_dense_13_bias^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0k
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
a
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes
:
Г
Read_31/DisableCopyOnReadDisableCopyOnRead.read_31_disablecopyonread_adam_v_dense_13_bias"/device:CPU:0*
_output_shapes
 ђ
Read_31/ReadVariableOpReadVariableOp.read_31_disablecopyonread_adam_v_dense_13_bias^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0k
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
a
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
:
v
Read_32/DisableCopyOnReadDisableCopyOnRead!read_32_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 Ы
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
 Ы
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
 Щ
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
 Щ
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
: Ь
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*≈
valueїBЄ%B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЈ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B П
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *3
dtypes)
'2%	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:≥
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
: Ј
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
њ

В
,__inference_sequential_6_layer_call_fn_96385
lstm_12_input
unknown:	
Р
	unknown_0:	dР
	unknown_1:	Р
	unknown_2:	dР
	unknown_3:	dР
	unknown_4:	Р
	unknown_5:d
	unknown_6:
	unknown_7:

	unknown_8:

identityИҐStatefulPartitionedCallЋ
StatefulPartitionedCallStatefulPartitionedCalllstm_12_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_6_layer_call_and_return_conditional_losses_96362o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€
: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:€€€€€€€€€

'
_user_specified_namelstm_12_input
Т	
Њ
while_cond_95377
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_95377___redundant_placeholder03
/while_while_cond_95377___redundant_placeholder13
/while_while_cond_95377___redundant_placeholder23
/while_while_cond_95377___redundant_placeholder3
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
@: : : : :€€€€€€€€€d:€€€€€€€€€d: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:
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
®
ї
G__inference_sequential_6_layer_call_and_return_conditional_losses_96330
lstm_12_input 
lstm_12_96154:	
Р 
lstm_12_96156:	dР
lstm_12_96158:	Р 
lstm_13_96306:	dР 
lstm_13_96308:	dР
lstm_13_96310:	Р 
dense_12_96319:d
dense_12_96321: 
dense_13_96324:

dense_13_96326:

identityИҐ dense_12/StatefulPartitionedCallҐ dense_13/StatefulPartitionedCallҐlstm_12/StatefulPartitionedCallҐlstm_13/StatefulPartitionedCallЕ
lstm_12/StatefulPartitionedCallStatefulPartitionedCalllstm_12_inputlstm_12_96154lstm_12_96156lstm_12_96158*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_12_layer_call_and_return_conditional_losses_96153Ь
lstm_13/StatefulPartitionedCallStatefulPartitionedCall(lstm_12/StatefulPartitionedCall:output:0lstm_13_96306lstm_13_96308lstm_13_96310*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_13_layer_call_and_return_conditional_losses_96305џ
dropout_6/PartitionedCallPartitionedCall(lstm_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_96317Й
 dense_12/StatefulPartitionedCallStatefulPartitionedCall"dropout_6/PartitionedCall:output:0dense_12_96319dense_12_96321*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_12_layer_call_and_return_conditional_losses_95984Р
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_96324dense_13_96326*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_13_layer_call_and_return_conditional_losses_96001x
IdentityIdentity)dense_13/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
–
NoOpNoOp!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall ^lstm_12/StatefulPartitionedCall ^lstm_13/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€
: : : : : : : : : : 2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2B
lstm_12/StatefulPartitionedCalllstm_12/StatefulPartitionedCall2B
lstm_13/StatefulPartitionedCalllstm_13/StatefulPartitionedCall:Z V
+
_output_shapes
:€€€€€€€€€

'
_user_specified_namelstm_12_input
Єњ
і	
G__inference_sequential_6_layer_call_and_return_conditional_losses_96949

inputsF
3lstm_12_lstm_cell_12_matmul_readvariableop_resource:	
РH
5lstm_12_lstm_cell_12_matmul_1_readvariableop_resource:	dРC
4lstm_12_lstm_cell_12_biasadd_readvariableop_resource:	РF
3lstm_13_lstm_cell_13_matmul_readvariableop_resource:	dРH
5lstm_13_lstm_cell_13_matmul_1_readvariableop_resource:	dРC
4lstm_13_lstm_cell_13_biasadd_readvariableop_resource:	Р9
'dense_12_matmul_readvariableop_resource:d6
(dense_12_biasadd_readvariableop_resource:9
'dense_13_matmul_readvariableop_resource:
6
(dense_13_biasadd_readvariableop_resource:

identityИҐdense_12/BiasAdd/ReadVariableOpҐdense_12/MatMul/ReadVariableOpҐdense_13/BiasAdd/ReadVariableOpҐdense_13/MatMul/ReadVariableOpҐ+lstm_12/lstm_cell_12/BiasAdd/ReadVariableOpҐ*lstm_12/lstm_cell_12/MatMul/ReadVariableOpҐ,lstm_12/lstm_cell_12/MatMul_1/ReadVariableOpҐlstm_12/whileҐ+lstm_13/lstm_cell_13/BiasAdd/ReadVariableOpҐ*lstm_13/lstm_cell_13/MatMul/ReadVariableOpҐ,lstm_13/lstm_cell_13/MatMul_1/ReadVariableOpҐlstm_13/whileQ
lstm_12/ShapeShapeinputs*
T0*
_output_shapes
::нѕe
lstm_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
lstm_12/strided_sliceStridedSlicelstm_12/Shape:output:0$lstm_12/strided_slice/stack:output:0&lstm_12/strided_slice/stack_1:output:0&lstm_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_12/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dЛ
lstm_12/zeros/packedPacklstm_12/strided_slice:output:0lstm_12/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_12/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Д
lstm_12/zerosFilllstm_12/zeros/packed:output:0lstm_12/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dZ
lstm_12/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dП
lstm_12/zeros_1/packedPacklstm_12/strided_slice:output:0!lstm_12/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_12/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    К
lstm_12/zeros_1Filllstm_12/zeros_1/packed:output:0lstm_12/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dk
lstm_12/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_12/transpose	Transposeinputslstm_12/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€
b
lstm_12/Shape_1Shapelstm_12/transpose:y:0*
T0*
_output_shapes
::нѕg
lstm_12/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_12/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_12/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Г
lstm_12/strided_slice_1StridedSlicelstm_12/Shape_1:output:0&lstm_12/strided_slice_1/stack:output:0(lstm_12/strided_slice_1/stack_1:output:0(lstm_12/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_12/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€ћ
lstm_12/TensorArrayV2TensorListReserve,lstm_12/TensorArrayV2/element_shape:output:0 lstm_12/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“О
=lstm_12/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   ш
/lstm_12/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_12/transpose:y:0Flstm_12/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“g
lstm_12/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_12/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_12/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:С
lstm_12/strided_slice_2StridedSlicelstm_12/transpose:y:0&lstm_12/strided_slice_2/stack:output:0(lstm_12/strided_slice_2/stack_1:output:0(lstm_12/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€
*
shrink_axis_maskЯ
*lstm_12/lstm_cell_12/MatMul/ReadVariableOpReadVariableOp3lstm_12_lstm_cell_12_matmul_readvariableop_resource*
_output_shapes
:	
Р*
dtype0Ѓ
lstm_12/lstm_cell_12/MatMulMatMul lstm_12/strided_slice_2:output:02lstm_12/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р£
,lstm_12/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp5lstm_12_lstm_cell_12_matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0®
lstm_12/lstm_cell_12/MatMul_1MatMullstm_12/zeros:output:04lstm_12/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р§
lstm_12/lstm_cell_12/addAddV2%lstm_12/lstm_cell_12/MatMul:product:0'lstm_12/lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РЭ
+lstm_12/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp4lstm_12_lstm_cell_12_biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0≠
lstm_12/lstm_cell_12/BiasAddBiasAddlstm_12/lstm_cell_12/add:z:03lstm_12/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рf
$lstm_12/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :х
lstm_12/lstm_cell_12/splitSplit-lstm_12/lstm_cell_12/split/split_dim:output:0%lstm_12/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_split~
lstm_12/lstm_cell_12/SigmoidSigmoid#lstm_12/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€dА
lstm_12/lstm_cell_12/Sigmoid_1Sigmoid#lstm_12/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dП
lstm_12/lstm_cell_12/mulMul"lstm_12/lstm_cell_12/Sigmoid_1:y:0lstm_12/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dx
lstm_12/lstm_cell_12/ReluRelu#lstm_12/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dЮ
lstm_12/lstm_cell_12/mul_1Mul lstm_12/lstm_cell_12/Sigmoid:y:0'lstm_12/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dУ
lstm_12/lstm_cell_12/add_1AddV2lstm_12/lstm_cell_12/mul:z:0lstm_12/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dА
lstm_12/lstm_cell_12/Sigmoid_2Sigmoid#lstm_12/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€du
lstm_12/lstm_cell_12/Relu_1Relulstm_12/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dҐ
lstm_12/lstm_cell_12/mul_2Mul"lstm_12/lstm_cell_12/Sigmoid_2:y:0)lstm_12/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dv
%lstm_12/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   –
lstm_12/TensorArrayV2_1TensorListReserve.lstm_12/TensorArrayV2_1/element_shape:output:0 lstm_12/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“N
lstm_12/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_12/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€\
lstm_12/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : р
lstm_12/whileWhile#lstm_12/while/loop_counter:output:0)lstm_12/while/maximum_iterations:output:0lstm_12/time:output:0 lstm_12/TensorArrayV2_1:handle:0lstm_12/zeros:output:0lstm_12/zeros_1:output:0 lstm_12/strided_slice_1:output:0?lstm_12/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_12_lstm_cell_12_matmul_readvariableop_resource5lstm_12_lstm_cell_12_matmul_1_readvariableop_resource4lstm_12_lstm_cell_12_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_12_while_body_96702*$
condR
lstm_12_while_cond_96701*K
output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *
parallel_iterations Й
8lstm_12/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   Џ
*lstm_12/TensorArrayV2Stack/TensorListStackTensorListStacklstm_12/while:output:3Alstm_12/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€d*
element_dtype0p
lstm_12/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€i
lstm_12/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_12/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѓ
lstm_12/strided_slice_3StridedSlice3lstm_12/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_12/strided_slice_3/stack:output:0(lstm_12/strided_slice_3/stack_1:output:0(lstm_12/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maskm
lstm_12/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ѓ
lstm_12/transpose_1	Transpose3lstm_12/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_12/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€dc
lstm_12/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
lstm_13/ShapeShapelstm_12/transpose_1:y:0*
T0*
_output_shapes
::нѕe
lstm_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
lstm_13/strided_sliceStridedSlicelstm_13/Shape:output:0$lstm_13/strided_slice/stack:output:0&lstm_13/strided_slice/stack_1:output:0&lstm_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_13/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dЛ
lstm_13/zeros/packedPacklstm_13/strided_slice:output:0lstm_13/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_13/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Д
lstm_13/zerosFilllstm_13/zeros/packed:output:0lstm_13/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dZ
lstm_13/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dП
lstm_13/zeros_1/packedPacklstm_13/strided_slice:output:0!lstm_13/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_13/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    К
lstm_13/zeros_1Filllstm_13/zeros_1/packed:output:0lstm_13/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dk
lstm_13/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          О
lstm_13/transpose	Transposelstm_12/transpose_1:y:0lstm_13/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€db
lstm_13/Shape_1Shapelstm_13/transpose:y:0*
T0*
_output_shapes
::нѕg
lstm_13/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_13/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_13/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Г
lstm_13/strided_slice_1StridedSlicelstm_13/Shape_1:output:0&lstm_13/strided_slice_1/stack:output:0(lstm_13/strided_slice_1/stack_1:output:0(lstm_13/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_13/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€ћ
lstm_13/TensorArrayV2TensorListReserve,lstm_13/TensorArrayV2/element_shape:output:0 lstm_13/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“О
=lstm_13/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ш
/lstm_13/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_13/transpose:y:0Flstm_13/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“g
lstm_13/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_13/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_13/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:С
lstm_13/strided_slice_2StridedSlicelstm_13/transpose:y:0&lstm_13/strided_slice_2/stack:output:0(lstm_13/strided_slice_2/stack_1:output:0(lstm_13/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maskЯ
*lstm_13/lstm_cell_13/MatMul/ReadVariableOpReadVariableOp3lstm_13_lstm_cell_13_matmul_readvariableop_resource*
_output_shapes
:	dР*
dtype0Ѓ
lstm_13/lstm_cell_13/MatMulMatMul lstm_13/strided_slice_2:output:02lstm_13/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р£
,lstm_13/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp5lstm_13_lstm_cell_13_matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0®
lstm_13/lstm_cell_13/MatMul_1MatMullstm_13/zeros:output:04lstm_13/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р§
lstm_13/lstm_cell_13/addAddV2%lstm_13/lstm_cell_13/MatMul:product:0'lstm_13/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РЭ
+lstm_13/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp4lstm_13_lstm_cell_13_biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0≠
lstm_13/lstm_cell_13/BiasAddBiasAddlstm_13/lstm_cell_13/add:z:03lstm_13/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рf
$lstm_13/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :х
lstm_13/lstm_cell_13/splitSplit-lstm_13/lstm_cell_13/split/split_dim:output:0%lstm_13/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_split~
lstm_13/lstm_cell_13/SigmoidSigmoid#lstm_13/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€dА
lstm_13/lstm_cell_13/Sigmoid_1Sigmoid#lstm_13/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dП
lstm_13/lstm_cell_13/mulMul"lstm_13/lstm_cell_13/Sigmoid_1:y:0lstm_13/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dx
lstm_13/lstm_cell_13/ReluRelu#lstm_13/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dЮ
lstm_13/lstm_cell_13/mul_1Mul lstm_13/lstm_cell_13/Sigmoid:y:0'lstm_13/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dУ
lstm_13/lstm_cell_13/add_1AddV2lstm_13/lstm_cell_13/mul:z:0lstm_13/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dА
lstm_13/lstm_cell_13/Sigmoid_2Sigmoid#lstm_13/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€du
lstm_13/lstm_cell_13/Relu_1Relulstm_13/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dҐ
lstm_13/lstm_cell_13/mul_2Mul"lstm_13/lstm_cell_13/Sigmoid_2:y:0)lstm_13/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dv
%lstm_13/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   f
$lstm_13/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_13/TensorArrayV2_1TensorListReserve.lstm_13/TensorArrayV2_1/element_shape:output:0-lstm_13/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“N
lstm_13/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_13/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€\
lstm_13/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : р
lstm_13/whileWhile#lstm_13/while/loop_counter:output:0)lstm_13/while/maximum_iterations:output:0lstm_13/time:output:0 lstm_13/TensorArrayV2_1:handle:0lstm_13/zeros:output:0lstm_13/zeros_1:output:0 lstm_13/strided_slice_1:output:0?lstm_13/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_13_lstm_cell_13_matmul_readvariableop_resource5lstm_13_lstm_cell_13_matmul_1_readvariableop_resource4lstm_13_lstm_cell_13_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_13_while_body_96842*$
condR
lstm_13_while_cond_96841*K
output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *
parallel_iterations Й
8lstm_13/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   о
*lstm_13/TensorArrayV2Stack/TensorListStackTensorListStacklstm_13/while:output:3Alstm_13/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€d*
element_dtype0*
num_elementsp
lstm_13/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€i
lstm_13/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_13/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѓ
lstm_13/strided_slice_3StridedSlice3lstm_13/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_13/strided_slice_3/stack:output:0(lstm_13/strided_slice_3/stack_1:output:0(lstm_13/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maskm
lstm_13/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ѓ
lstm_13/transpose_1	Transpose3lstm_13/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_13/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€dc
lstm_13/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    \
dropout_6/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @Т
dropout_6/dropout/MulMul lstm_13/strided_slice_3:output:0 dropout_6/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€du
dropout_6/dropout/ShapeShape lstm_13/strided_slice_3:output:0*
T0*
_output_shapes
::нѕ†
.dropout_6/dropout/random_uniform/RandomUniformRandomUniform dropout_6/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€d*
dtype0e
 dropout_6/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ƒ
dropout_6/dropout/GreaterEqualGreaterEqual7dropout_6/dropout/random_uniform/RandomUniform:output:0)dropout_6/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€d^
dropout_6/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ї
dropout_6/dropout/SelectV2SelectV2"dropout_6/dropout/GreaterEqual:z:0dropout_6/dropout/Mul:z:0"dropout_6/dropout/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dЖ
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0Ш
dense_12/MatMulMatMul#dropout_6/dropout/SelectV2:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Д
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€b
dense_12/ReluReludense_12/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ж
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0Р
dense_13/MatMulMatMuldense_12/Relu:activations:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
Д
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0С
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
h
dense_13/SoftmaxSoftmaxdense_13/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
i
IdentityIdentitydense_13/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
А
NoOpNoOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp,^lstm_12/lstm_cell_12/BiasAdd/ReadVariableOp+^lstm_12/lstm_cell_12/MatMul/ReadVariableOp-^lstm_12/lstm_cell_12/MatMul_1/ReadVariableOp^lstm_12/while,^lstm_13/lstm_cell_13/BiasAdd/ReadVariableOp+^lstm_13/lstm_cell_13/MatMul/ReadVariableOp-^lstm_13/lstm_cell_13/MatMul_1/ReadVariableOp^lstm_13/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€
: : : : : : : : : : 2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2Z
+lstm_12/lstm_cell_12/BiasAdd/ReadVariableOp+lstm_12/lstm_cell_12/BiasAdd/ReadVariableOp2X
*lstm_12/lstm_cell_12/MatMul/ReadVariableOp*lstm_12/lstm_cell_12/MatMul/ReadVariableOp2\
,lstm_12/lstm_cell_12/MatMul_1/ReadVariableOp,lstm_12/lstm_cell_12/MatMul_1/ReadVariableOp2
lstm_12/whilelstm_12/while2Z
+lstm_13/lstm_cell_13/BiasAdd/ReadVariableOp+lstm_13/lstm_cell_13/BiasAdd/ReadVariableOp2X
*lstm_13/lstm_cell_13/MatMul/ReadVariableOp*lstm_13/lstm_cell_13/MatMul/ReadVariableOp2\
,lstm_13/lstm_cell_13/MatMul_1/ReadVariableOp,lstm_13/lstm_cell_13/MatMul_1/ReadVariableOp2
lstm_13/whilelstm_13/while:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
њ

В
,__inference_sequential_6_layer_call_fn_96439
lstm_12_input
unknown:	
Р
	unknown_0:	dР
	unknown_1:	Р
	unknown_2:	dР
	unknown_3:	dР
	unknown_4:	Р
	unknown_5:d
	unknown_6:
	unknown_7:

	unknown_8:

identityИҐStatefulPartitionedCallЋ
StatefulPartitionedCallStatefulPartitionedCalllstm_12_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_6_layer_call_and_return_conditional_losses_96416o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€
: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:€€€€€€€€€

'
_user_specified_namelstm_12_input
Я

ф
C__inference_dense_13_layer_call_and_return_conditional_losses_98555

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:

identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Й:
ѕ
while_body_98403
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_13_matmul_readvariableop_resource_0:	dРH
5while_lstm_cell_13_matmul_1_readvariableop_resource_0:	dРC
4while_lstm_cell_13_biasadd_readvariableop_resource_0:	Р
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_13_matmul_readvariableop_resource:	dРF
3while_lstm_cell_13_matmul_1_readvariableop_resource:	dРA
2while_lstm_cell_13_biasadd_readvariableop_resource:	РИҐ)while/lstm_cell_13/BiasAdd/ReadVariableOpҐ(while/lstm_cell_13/MatMul/ReadVariableOpҐ*while/lstm_cell_13/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€d*
element_dtype0Э
(while/lstm_cell_13/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_13_matmul_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0Ї
while/lstm_cell_13/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р°
*while/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_13_matmul_1_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0°
while/lstm_cell_13/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РЮ
while/lstm_cell_13/addAddV2#while/lstm_cell_13/MatMul:product:0%while/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РЫ
)while/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_13_biasadd_readvariableop_resource_0*
_output_shapes	
:Р*
dtype0І
while/lstm_cell_13/BiasAddBiasAddwhile/lstm_cell_13/add:z:01while/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рd
"while/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_13/splitSplit+while/lstm_cell_13/split/split_dim:output:0#while/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitz
while/lstm_cell_13/SigmoidSigmoid!while/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell_13/Sigmoid_1Sigmoid!while/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dЖ
while/lstm_cell_13/mulMul while/lstm_cell_13/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€dt
while/lstm_cell_13/ReluRelu!while/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dШ
while/lstm_cell_13/mul_1Mulwhile/lstm_cell_13/Sigmoid:y:0%while/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dН
while/lstm_cell_13/add_1AddV2while/lstm_cell_13/mul:z:0while/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell_13/Sigmoid_2Sigmoid!while/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€dq
while/lstm_cell_13/Relu_1Reluwhile/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dЬ
while/lstm_cell_13/mul_2Mul while/lstm_cell_13/Sigmoid_2:y:0'while/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : н
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_13/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_13/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dy
while/Identity_5Identitywhile/lstm_cell_13/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€d–

while/NoOpNoOp*^while/lstm_cell_13/BiasAdd/ReadVariableOp)^while/lstm_cell_13/MatMul/ReadVariableOp+^while/lstm_cell_13/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"j
2while_lstm_cell_13_biasadd_readvariableop_resource4while_lstm_cell_13_biasadd_readvariableop_resource_0"l
3while_lstm_cell_13_matmul_1_readvariableop_resource5while_lstm_cell_13_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_13_matmul_readvariableop_resource3while_lstm_cell_13_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : 2V
)while/lstm_cell_13/BiasAdd/ReadVariableOp)while/lstm_cell_13/BiasAdd/ReadVariableOp2T
(while/lstm_cell_13/MatMul/ReadVariableOp(while/lstm_cell_13/MatMul/ReadVariableOp2X
*while/lstm_cell_13/MatMul_1/ReadVariableOp*while/lstm_cell_13/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:
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
н8
ѕ
while_body_96069
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_12_matmul_readvariableop_resource_0:	
РH
5while_lstm_cell_12_matmul_1_readvariableop_resource_0:	dРC
4while_lstm_cell_12_biasadd_readvariableop_resource_0:	Р
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_12_matmul_readvariableop_resource:	
РF
3while_lstm_cell_12_matmul_1_readvariableop_resource:	dРA
2while_lstm_cell_12_biasadd_readvariableop_resource:	РИҐ)while/lstm_cell_12/BiasAdd/ReadVariableOpҐ(while/lstm_cell_12/MatMul/ReadVariableOpҐ*while/lstm_cell_12/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€
*
element_dtype0Э
(while/lstm_cell_12/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_12_matmul_readvariableop_resource_0*
_output_shapes
:	
Р*
dtype0Ї
while/lstm_cell_12/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р°
*while/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_12_matmul_1_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0°
while/lstm_cell_12/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РЮ
while/lstm_cell_12/addAddV2#while/lstm_cell_12/MatMul:product:0%while/lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РЫ
)while/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_12_biasadd_readvariableop_resource_0*
_output_shapes	
:Р*
dtype0І
while/lstm_cell_12/BiasAddBiasAddwhile/lstm_cell_12/add:z:01while/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рd
"while/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_12/splitSplit+while/lstm_cell_12/split/split_dim:output:0#while/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitz
while/lstm_cell_12/SigmoidSigmoid!while/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell_12/Sigmoid_1Sigmoid!while/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dЖ
while/lstm_cell_12/mulMul while/lstm_cell_12/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€dt
while/lstm_cell_12/ReluRelu!while/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dШ
while/lstm_cell_12/mul_1Mulwhile/lstm_cell_12/Sigmoid:y:0%while/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dН
while/lstm_cell_12/add_1AddV2while/lstm_cell_12/mul:z:0while/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell_12/Sigmoid_2Sigmoid!while/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€dq
while/lstm_cell_12/Relu_1Reluwhile/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dЬ
while/lstm_cell_12/mul_2Mul while/lstm_cell_12/Sigmoid_2:y:0'while/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€d≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_12/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_12/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dy
while/Identity_5Identitywhile/lstm_cell_12/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€d–

while/NoOpNoOp*^while/lstm_cell_12/BiasAdd/ReadVariableOp)^while/lstm_cell_12/MatMul/ReadVariableOp+^while/lstm_cell_12/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"j
2while_lstm_cell_12_biasadd_readvariableop_resource4while_lstm_cell_12_biasadd_readvariableop_resource_0"l
3while_lstm_cell_12_matmul_1_readvariableop_resource5while_lstm_cell_12_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_12_matmul_readvariableop_resource3while_lstm_cell_12_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : 2V
)while/lstm_cell_12/BiasAdd/ReadVariableOp)while/lstm_cell_12/BiasAdd/ReadVariableOp2T
(while/lstm_cell_12/MatMul/ReadVariableOp(while/lstm_cell_12/MatMul/ReadVariableOp2X
*while/lstm_cell_12/MatMul_1/ReadVariableOp*while/lstm_cell_12/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:
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
”$
№
while_body_95378
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_13_95402_0:	dР-
while_lstm_cell_13_95404_0:	dР)
while_lstm_cell_13_95406_0:	Р
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_13_95402:	dР+
while_lstm_cell_13_95404:	dР'
while_lstm_cell_13_95406:	РИҐ*while/lstm_cell_13/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€d*
element_dtype0ѓ
*while/lstm_cell_13/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_13_95402_0while_lstm_cell_13_95404_0while_lstm_cell_13_95406_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_lstm_cell_13_layer_call_and_return_conditional_losses_95363r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Д
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:03while/lstm_cell_13/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Р
while/Identity_4Identity3while/lstm_cell_13/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dР
while/Identity_5Identity3while/lstm_cell_13/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dy

while/NoOpNoOp+^while/lstm_cell_13/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"6
while_lstm_cell_13_95402while_lstm_cell_13_95402_0"6
while_lstm_cell_13_95404while_lstm_cell_13_95404_0"6
while_lstm_cell_13_95406while_lstm_cell_13_95406_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : 2X
*while/lstm_cell_13/StatefulPartitionedCall*while/lstm_cell_13/StatefulPartitionedCall:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:
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
М9
Б
B__inference_lstm_13_layer_call_and_return_conditional_losses_95595

inputs%
lstm_cell_13_95511:	dР%
lstm_cell_13_95513:	dР!
lstm_cell_13_95515:	Р
identityИҐ$lstm_cell_13/StatefulPartitionedCallҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
:€€€€€€€€€dR
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
:€€€€€€€€€dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€dR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maskс
$lstm_cell_13/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_13_95511lstm_cell_13_95513lstm_cell_13_95515*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_lstm_cell_13_layer_call_and_return_conditional_losses_95510n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ≤
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_13_95511lstm_cell_13_95513lstm_cell_13_95515*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_95525*
condR
while_cond_95524*K
output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€d*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€du
NoOpNoOp%^lstm_cell_13/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€d: : : 2L
$lstm_cell_13/StatefulPartitionedCall$lstm_cell_13/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d
 
_user_specified_nameinputs
Т	
Њ
while_cond_95524
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_95524___redundant_placeholder03
/while_while_cond_95524___redundant_placeholder13
/while_while_cond_95524___redundant_placeholder23
/while_while_cond_95524___redundant_placeholder3
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
@: : : : :€€€€€€€€€d:€€€€€€€€€d: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:
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
ЉJ
Ъ
B__inference_lstm_12_layer_call_and_return_conditional_losses_97864

inputs>
+lstm_cell_12_matmul_readvariableop_resource:	
Р@
-lstm_cell_12_matmul_1_readvariableop_resource:	dР;
,lstm_cell_12_biasadd_readvariableop_resource:	Р
identityИҐ#lstm_cell_12/BiasAdd/ReadVariableOpҐ"lstm_cell_12/MatMul/ReadVariableOpҐ$lstm_cell_12/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
:€€€€€€€€€dR
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
:€€€€€€€€€dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€
R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€
*
shrink_axis_maskП
"lstm_cell_12/MatMul/ReadVariableOpReadVariableOp+lstm_cell_12_matmul_readvariableop_resource*
_output_shapes
:	
Р*
dtype0Ц
lstm_cell_12/MatMulMatMulstrided_slice_2:output:0*lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РУ
$lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_12_matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0Р
lstm_cell_12/MatMul_1MatMulzeros:output:0,lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РМ
lstm_cell_12/addAddV2lstm_cell_12/MatMul:product:0lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РН
#lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_12_biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0Х
lstm_cell_12/BiasAddBiasAddlstm_cell_12/add:z:0+lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р^
lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_12/splitSplit%lstm_cell_12/split/split_dim:output:0lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitn
lstm_cell_12/SigmoidSigmoidlstm_cell_12/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell_12/Sigmoid_1Sigmoidlstm_cell_12/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dw
lstm_cell_12/mulMullstm_cell_12/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dh
lstm_cell_12/ReluRelulstm_cell_12/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dЖ
lstm_cell_12/mul_1Mullstm_cell_12/Sigmoid:y:0lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€d{
lstm_cell_12/add_1AddV2lstm_cell_12/mul:z:0lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell_12/Sigmoid_2Sigmoidlstm_cell_12/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€de
lstm_cell_12/Relu_1Relulstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dК
lstm_cell_12/mul_2Mullstm_cell_12/Sigmoid_2:y:0!lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : А
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_12_matmul_readvariableop_resource-lstm_cell_12_matmul_1_readvariableop_resource,lstm_cell_12_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_97780*
condR
while_cond_97779*K
output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ¬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€dј
NoOpNoOp$^lstm_cell_12/BiasAdd/ReadVariableOp#^lstm_cell_12/MatMul/ReadVariableOp%^lstm_cell_12/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€
: : : 2J
#lstm_cell_12/BiasAdd/ReadVariableOp#lstm_cell_12/BiasAdd/ReadVariableOp2H
"lstm_cell_12/MatMul/ReadVariableOp"lstm_cell_12/MatMul/ReadVariableOp2L
$lstm_cell_12/MatMul_1/ReadVariableOp$lstm_cell_12/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
Т	
Њ
while_cond_98112
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_98112___redundant_placeholder03
/while_while_cond_98112___redundant_placeholder13
/while_while_cond_98112___redundant_placeholder23
/while_while_cond_98112___redundant_placeholder3
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
@: : : : :€€€€€€€€€d:€€€€€€€€€d: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:
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
Т	
Њ
while_cond_97779
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_97779___redundant_placeholder03
/while_while_cond_97779___redundant_placeholder13
/while_while_cond_97779___redundant_placeholder23
/while_while_cond_97779___redundant_placeholder3
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
@: : : : :€€€€€€€€€d:€€€€€€€€€d: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:
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
У
і
G__inference_sequential_6_layer_call_and_return_conditional_losses_96416

inputs 
lstm_12_96390:	
Р 
lstm_12_96392:	dР
lstm_12_96394:	Р 
lstm_13_96397:	dР 
lstm_13_96399:	dР
lstm_13_96401:	Р 
dense_12_96405:d
dense_12_96407: 
dense_13_96410:

dense_13_96412:

identityИҐ dense_12/StatefulPartitionedCallҐ dense_13/StatefulPartitionedCallҐlstm_12/StatefulPartitionedCallҐlstm_13/StatefulPartitionedCallю
lstm_12/StatefulPartitionedCallStatefulPartitionedCallinputslstm_12_96390lstm_12_96392lstm_12_96394*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_12_layer_call_and_return_conditional_losses_96153Ь
lstm_13/StatefulPartitionedCallStatefulPartitionedCall(lstm_12/StatefulPartitionedCall:output:0lstm_13_96397lstm_13_96399lstm_13_96401*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_13_layer_call_and_return_conditional_losses_96305џ
dropout_6/PartitionedCallPartitionedCall(lstm_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_96317Й
 dense_12/StatefulPartitionedCallStatefulPartitionedCall"dropout_6/PartitionedCall:output:0dense_12_96405dense_12_96407*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_12_layer_call_and_return_conditional_losses_95984Р
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_96410dense_13_96412*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_13_layer_call_and_return_conditional_losses_96001x
IdentityIdentity)dense_13/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
–
NoOpNoOp!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall ^lstm_12/StatefulPartitionedCall ^lstm_13/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€
: : : : : : : : : : 2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2B
lstm_12/StatefulPartitionedCalllstm_12/StatefulPartitionedCall2B
lstm_13/StatefulPartitionedCalllstm_13/StatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
й
х
,__inference_lstm_cell_12_layer_call_fn_98589

inputs
states_0
states_1
unknown:	
Р
	unknown_0:	dР
	unknown_1:	Р
identity

identity_1

identity_2ИҐStatefulPartitionedCallІ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_lstm_cell_12_layer_call_and_return_conditional_losses_95158o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€
:€€€€€€€€€d:€€€€€€€€€d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:QM
'
_output_shapes
:€€€€€€€€€d
"
_user_specified_name
states_1:QM
'
_output_shapes
:€€€€€€€€€d
"
_user_specified_name
states_0:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
ЉJ
Ъ
B__inference_lstm_12_layer_call_and_return_conditional_losses_96153

inputs>
+lstm_cell_12_matmul_readvariableop_resource:	
Р@
-lstm_cell_12_matmul_1_readvariableop_resource:	dР;
,lstm_cell_12_biasadd_readvariableop_resource:	Р
identityИҐ#lstm_cell_12/BiasAdd/ReadVariableOpҐ"lstm_cell_12/MatMul/ReadVariableOpҐ$lstm_cell_12/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
:€€€€€€€€€dR
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
:€€€€€€€€€dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€
R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€
*
shrink_axis_maskП
"lstm_cell_12/MatMul/ReadVariableOpReadVariableOp+lstm_cell_12_matmul_readvariableop_resource*
_output_shapes
:	
Р*
dtype0Ц
lstm_cell_12/MatMulMatMulstrided_slice_2:output:0*lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РУ
$lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_12_matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0Р
lstm_cell_12/MatMul_1MatMulzeros:output:0,lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РМ
lstm_cell_12/addAddV2lstm_cell_12/MatMul:product:0lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РН
#lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_12_biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0Х
lstm_cell_12/BiasAddBiasAddlstm_cell_12/add:z:0+lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р^
lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_12/splitSplit%lstm_cell_12/split/split_dim:output:0lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitn
lstm_cell_12/SigmoidSigmoidlstm_cell_12/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell_12/Sigmoid_1Sigmoidlstm_cell_12/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dw
lstm_cell_12/mulMullstm_cell_12/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dh
lstm_cell_12/ReluRelulstm_cell_12/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dЖ
lstm_cell_12/mul_1Mullstm_cell_12/Sigmoid:y:0lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€d{
lstm_cell_12/add_1AddV2lstm_cell_12/mul:z:0lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell_12/Sigmoid_2Sigmoidlstm_cell_12/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€de
lstm_cell_12/Relu_1Relulstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dК
lstm_cell_12/mul_2Mullstm_cell_12/Sigmoid_2:y:0!lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : А
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_12_matmul_readvariableop_resource-lstm_cell_12_matmul_1_readvariableop_resource,lstm_cell_12_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_96069*
condR
while_cond_96068*K
output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ¬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€dј
NoOpNoOp$^lstm_cell_12/BiasAdd/ReadVariableOp#^lstm_cell_12/MatMul/ReadVariableOp%^lstm_cell_12/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€
: : : 2J
#lstm_cell_12/BiasAdd/ReadVariableOp#lstm_cell_12/BiasAdd/ReadVariableOp2H
"lstm_cell_12/MatMul/ReadVariableOp"lstm_cell_12/MatMul/ReadVariableOp2L
$lstm_cell_12/MatMul_1/ReadVariableOp$lstm_cell_12/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
Ш

c
D__inference_dropout_6_layer_call_and_return_conditional_losses_98510

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕМ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€d*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¶
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€dT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€da
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€d:O K
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
й
х
,__inference_lstm_cell_13_layer_call_fn_98670

inputs
states_0
states_1
unknown:	dР
	unknown_0:	dР
	unknown_1:	Р
identity

identity_1

identity_2ИҐStatefulPartitionedCallІ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_lstm_cell_13_layer_call_and_return_conditional_losses_95363o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:QM
'
_output_shapes
:€€€€€€€€€d
"
_user_specified_name
states_1:QM
'
_output_shapes
:€€€€€€€€€d
"
_user_specified_name
states_0:O K
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
™

ы
,__inference_sequential_6_layer_call_fn_96618

inputs
unknown:	
Р
	unknown_0:	dР
	unknown_1:	Р
	unknown_2:	dР
	unknown_3:	dР
	unknown_4:	Р
	unknown_5:d
	unknown_6:
	unknown_7:

	unknown_8:

identityИҐStatefulPartitionedCallƒ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_6_layer_call_and_return_conditional_losses_96362o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€
: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
еK
Ь
B__inference_lstm_13_layer_call_and_return_conditional_losses_98053
inputs_0>
+lstm_cell_13_matmul_readvariableop_resource:	dР@
-lstm_cell_13_matmul_1_readvariableop_resource:	dР;
,lstm_cell_13_biasadd_readvariableop_resource:	Р
identityИҐ#lstm_cell_13/BiasAdd/ReadVariableOpҐ"lstm_cell_13/MatMul/ReadVariableOpҐ$lstm_cell_13/MatMul_1/ReadVariableOpҐwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
:€€€€€€€€€dR
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
:€€€€€€€€€dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€dR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maskП
"lstm_cell_13/MatMul/ReadVariableOpReadVariableOp+lstm_cell_13_matmul_readvariableop_resource*
_output_shapes
:	dР*
dtype0Ц
lstm_cell_13/MatMulMatMulstrided_slice_2:output:0*lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РУ
$lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_13_matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0Р
lstm_cell_13/MatMul_1MatMulzeros:output:0,lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РМ
lstm_cell_13/addAddV2lstm_cell_13/MatMul:product:0lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РН
#lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_13_biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0Х
lstm_cell_13/BiasAddBiasAddlstm_cell_13/add:z:0+lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р^
lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_13/splitSplit%lstm_cell_13/split/split_dim:output:0lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitn
lstm_cell_13/SigmoidSigmoidlstm_cell_13/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell_13/Sigmoid_1Sigmoidlstm_cell_13/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dw
lstm_cell_13/mulMullstm_cell_13/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dh
lstm_cell_13/ReluRelulstm_cell_13/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dЖ
lstm_cell_13/mul_1Mullstm_cell_13/Sigmoid:y:0lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€d{
lstm_cell_13/add_1AddV2lstm_cell_13/mul:z:0lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell_13/Sigmoid_2Sigmoidlstm_cell_13/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€de
lstm_cell_13/Relu_1Relulstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dК
lstm_cell_13/mul_2Mullstm_cell_13/Sigmoid_2:y:0!lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : А
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_13_matmul_readvariableop_resource-lstm_cell_13_matmul_1_readvariableop_resource,lstm_cell_13_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_97968*
condR
while_cond_97967*K
output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€d*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dј
NoOpNoOp$^lstm_cell_13/BiasAdd/ReadVariableOp#^lstm_cell_13/MatMul/ReadVariableOp%^lstm_cell_13/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€d: : : 2J
#lstm_cell_13/BiasAdd/ReadVariableOp#lstm_cell_13/BiasAdd/ReadVariableOp2H
"lstm_cell_13/MatMul/ReadVariableOp"lstm_cell_13/MatMul/ReadVariableOp2L
$lstm_cell_13/MatMul_1/ReadVariableOp$lstm_cell_13/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d
"
_user_specified_name
inputs_0
Т	
Њ
while_cond_95865
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_95865___redundant_placeholder03
/while_while_cond_95865___redundant_placeholder13
/while_while_cond_95865___redundant_placeholder23
/while_while_cond_95865___redundant_placeholder3
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
@: : : : :€€€€€€€€€d:€€€€€€€€€d: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:
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
Т	
Њ
while_cond_95714
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_95714___redundant_placeholder03
/while_while_cond_95714___redundant_placeholder13
/while_while_cond_95714___redundant_placeholder23
/while_while_cond_95714___redundant_placeholder3
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
@: : : : :€€€€€€€€€d:€€€€€€€€€d: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:
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
ЏC
ѕ

lstm_13_while_body_96842,
(lstm_13_while_lstm_13_while_loop_counter2
.lstm_13_while_lstm_13_while_maximum_iterations
lstm_13_while_placeholder
lstm_13_while_placeholder_1
lstm_13_while_placeholder_2
lstm_13_while_placeholder_3+
'lstm_13_while_lstm_13_strided_slice_1_0g
clstm_13_while_tensorarrayv2read_tensorlistgetitem_lstm_13_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_13_while_lstm_cell_13_matmul_readvariableop_resource_0:	dРP
=lstm_13_while_lstm_cell_13_matmul_1_readvariableop_resource_0:	dРK
<lstm_13_while_lstm_cell_13_biasadd_readvariableop_resource_0:	Р
lstm_13_while_identity
lstm_13_while_identity_1
lstm_13_while_identity_2
lstm_13_while_identity_3
lstm_13_while_identity_4
lstm_13_while_identity_5)
%lstm_13_while_lstm_13_strided_slice_1e
alstm_13_while_tensorarrayv2read_tensorlistgetitem_lstm_13_tensorarrayunstack_tensorlistfromtensorL
9lstm_13_while_lstm_cell_13_matmul_readvariableop_resource:	dРN
;lstm_13_while_lstm_cell_13_matmul_1_readvariableop_resource:	dРI
:lstm_13_while_lstm_cell_13_biasadd_readvariableop_resource:	РИҐ1lstm_13/while/lstm_cell_13/BiasAdd/ReadVariableOpҐ0lstm_13/while/lstm_cell_13/MatMul/ReadVariableOpҐ2lstm_13/while/lstm_cell_13/MatMul_1/ReadVariableOpР
?lstm_13/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ќ
1lstm_13/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_13_while_tensorarrayv2read_tensorlistgetitem_lstm_13_tensorarrayunstack_tensorlistfromtensor_0lstm_13_while_placeholderHlstm_13/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€d*
element_dtype0≠
0lstm_13/while/lstm_cell_13/MatMul/ReadVariableOpReadVariableOp;lstm_13_while_lstm_cell_13_matmul_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0“
!lstm_13/while/lstm_cell_13/MatMulMatMul8lstm_13/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_13/while/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р±
2lstm_13/while/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp=lstm_13_while_lstm_cell_13_matmul_1_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0є
#lstm_13/while/lstm_cell_13/MatMul_1MatMullstm_13_while_placeholder_2:lstm_13/while/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рґ
lstm_13/while/lstm_cell_13/addAddV2+lstm_13/while/lstm_cell_13/MatMul:product:0-lstm_13/while/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РЂ
1lstm_13/while/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp<lstm_13_while_lstm_cell_13_biasadd_readvariableop_resource_0*
_output_shapes	
:Р*
dtype0њ
"lstm_13/while/lstm_cell_13/BiasAddBiasAdd"lstm_13/while/lstm_cell_13/add:z:09lstm_13/while/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рl
*lstm_13/while/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :З
 lstm_13/while/lstm_cell_13/splitSplit3lstm_13/while/lstm_cell_13/split/split_dim:output:0+lstm_13/while/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitК
"lstm_13/while/lstm_cell_13/SigmoidSigmoid)lstm_13/while/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€dМ
$lstm_13/while/lstm_cell_13/Sigmoid_1Sigmoid)lstm_13/while/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dЮ
lstm_13/while/lstm_cell_13/mulMul(lstm_13/while/lstm_cell_13/Sigmoid_1:y:0lstm_13_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€dД
lstm_13/while/lstm_cell_13/ReluRelu)lstm_13/while/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€d∞
 lstm_13/while/lstm_cell_13/mul_1Mul&lstm_13/while/lstm_cell_13/Sigmoid:y:0-lstm_13/while/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€d•
 lstm_13/while/lstm_cell_13/add_1AddV2"lstm_13/while/lstm_cell_13/mul:z:0$lstm_13/while/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dМ
$lstm_13/while/lstm_cell_13/Sigmoid_2Sigmoid)lstm_13/while/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€dБ
!lstm_13/while/lstm_cell_13/Relu_1Relu$lstm_13/while/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dі
 lstm_13/while/lstm_cell_13/mul_2Mul(lstm_13/while/lstm_cell_13/Sigmoid_2:y:0/lstm_13/while/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dz
8lstm_13/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Н
2lstm_13/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_13_while_placeholder_1Alstm_13/while/TensorArrayV2Write/TensorListSetItem/index:output:0$lstm_13/while/lstm_cell_13/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“U
lstm_13/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_13/while/addAddV2lstm_13_while_placeholderlstm_13/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_13/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :З
lstm_13/while/add_1AddV2(lstm_13_while_lstm_13_while_loop_counterlstm_13/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_13/while/IdentityIdentitylstm_13/while/add_1:z:0^lstm_13/while/NoOp*
T0*
_output_shapes
: К
lstm_13/while/Identity_1Identity.lstm_13_while_lstm_13_while_maximum_iterations^lstm_13/while/NoOp*
T0*
_output_shapes
: q
lstm_13/while/Identity_2Identitylstm_13/while/add:z:0^lstm_13/while/NoOp*
T0*
_output_shapes
: Ю
lstm_13/while/Identity_3IdentityBlstm_13/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_13/while/NoOp*
T0*
_output_shapes
: С
lstm_13/while/Identity_4Identity$lstm_13/while/lstm_cell_13/mul_2:z:0^lstm_13/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dС
lstm_13/while/Identity_5Identity$lstm_13/while/lstm_cell_13/add_1:z:0^lstm_13/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dр
lstm_13/while/NoOpNoOp2^lstm_13/while/lstm_cell_13/BiasAdd/ReadVariableOp1^lstm_13/while/lstm_cell_13/MatMul/ReadVariableOp3^lstm_13/while/lstm_cell_13/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "=
lstm_13_while_identity_1!lstm_13/while/Identity_1:output:0"=
lstm_13_while_identity_2!lstm_13/while/Identity_2:output:0"=
lstm_13_while_identity_3!lstm_13/while/Identity_3:output:0"=
lstm_13_while_identity_4!lstm_13/while/Identity_4:output:0"=
lstm_13_while_identity_5!lstm_13/while/Identity_5:output:0"9
lstm_13_while_identitylstm_13/while/Identity:output:0"P
%lstm_13_while_lstm_13_strided_slice_1'lstm_13_while_lstm_13_strided_slice_1_0"z
:lstm_13_while_lstm_cell_13_biasadd_readvariableop_resource<lstm_13_while_lstm_cell_13_biasadd_readvariableop_resource_0"|
;lstm_13_while_lstm_cell_13_matmul_1_readvariableop_resource=lstm_13_while_lstm_cell_13_matmul_1_readvariableop_resource_0"x
9lstm_13_while_lstm_cell_13_matmul_readvariableop_resource;lstm_13_while_lstm_cell_13_matmul_readvariableop_resource_0"»
alstm_13_while_tensorarrayv2read_tensorlistgetitem_lstm_13_tensorarrayunstack_tensorlistfromtensorclstm_13_while_tensorarrayv2read_tensorlistgetitem_lstm_13_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : 2f
1lstm_13/while/lstm_cell_13/BiasAdd/ReadVariableOp1lstm_13/while/lstm_cell_13/BiasAdd/ReadVariableOp2d
0lstm_13/while/lstm_cell_13/MatMul/ReadVariableOp0lstm_13/while/lstm_cell_13/MatMul/ReadVariableOp2h
2lstm_13/while/lstm_cell_13/MatMul_1/ReadVariableOp2lstm_13/while/lstm_cell_13/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:
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
_user_specified_name" lstm_13/while/maximum_iterations:R N

_output_shapes
: 
4
_user_specified_namelstm_13/while/loop_counter
Я

ф
C__inference_dense_13_layer_call_and_return_conditional_losses_96001

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:

identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ъ

ф
C__inference_dense_12_layer_call_and_return_conditional_losses_95984

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
–
я
G__inference_sequential_6_layer_call_and_return_conditional_losses_96008
lstm_12_input 
lstm_12_95800:	
Р 
lstm_12_95802:	dР
lstm_12_95804:	Р 
lstm_13_95952:	dР 
lstm_13_95954:	dР
lstm_13_95956:	Р 
dense_12_95985:d
dense_12_95987: 
dense_13_96002:

dense_13_96004:

identityИҐ dense_12/StatefulPartitionedCallҐ dense_13/StatefulPartitionedCallҐ!dropout_6/StatefulPartitionedCallҐlstm_12/StatefulPartitionedCallҐlstm_13/StatefulPartitionedCallЕ
lstm_12/StatefulPartitionedCallStatefulPartitionedCalllstm_12_inputlstm_12_95800lstm_12_95802lstm_12_95804*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_12_layer_call_and_return_conditional_losses_95799Ь
lstm_13/StatefulPartitionedCallStatefulPartitionedCall(lstm_12/StatefulPartitionedCall:output:0lstm_13_95952lstm_13_95954lstm_13_95956*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_13_layer_call_and_return_conditional_losses_95951л
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall(lstm_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_95971С
 dense_12/StatefulPartitionedCallStatefulPartitionedCall*dropout_6/StatefulPartitionedCall:output:0dense_12_95985dense_12_95987*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_12_layer_call_and_return_conditional_losses_95984Р
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_96002dense_13_96004*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_13_layer_call_and_return_conditional_losses_96001x
IdentityIdentity)dense_13/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
ф
NoOpNoOp!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall ^lstm_12/StatefulPartitionedCall ^lstm_13/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€
: : : : : : : : : : 2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall2B
lstm_12/StatefulPartitionedCalllstm_12/StatefulPartitionedCall2B
lstm_13/StatefulPartitionedCalllstm_13/StatefulPartitionedCall:Z V
+
_output_shapes
:€€€€€€€€€

'
_user_specified_namelstm_12_input
Ъ

ф
C__inference_dense_12_layer_call_and_return_conditional_losses_98535

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
№
Е
G__inference_lstm_cell_12_layer_call_and_return_conditional_losses_98653

inputs
states_0
states_11
matmul_readvariableop_resource:	
Р3
 matmul_1_readvariableop_resource:	dР.
biasadd_readvariableop_resource:	Р
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
Р*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Рs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€
:€€€€€€€€€d:€€€€€€€€€d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:QM
'
_output_shapes
:€€€€€€€€€d
"
_user_specified_name
states_1:QM
'
_output_shapes
:€€€€€€€€€d
"
_user_specified_name
states_0:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
‘
Г
G__inference_lstm_cell_13_layer_call_and_return_conditional_losses_95510

inputs

states
states_11
matmul_readvariableop_resource:	dР3
 matmul_1_readvariableop_resource:	dР.
biasadd_readvariableop_resource:	Р
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dР*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Рs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:OK
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_namestates:O K
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
‘
Г
G__inference_lstm_cell_12_layer_call_and_return_conditional_losses_95013

inputs

states
states_11
matmul_readvariableop_resource:	
Р3
 matmul_1_readvariableop_resource:	dР.
biasadd_readvariableop_resource:	Р
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
Р*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Рs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€
:€€€€€€€€€d:€€€€€€€€€d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:OK
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_namestates:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
й
х
,__inference_lstm_cell_12_layer_call_fn_98572

inputs
states_0
states_1
unknown:	
Р
	unknown_0:	dР
	unknown_1:	Р
identity

identity_1

identity_2ИҐStatefulPartitionedCallІ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_lstm_cell_12_layer_call_and_return_conditional_losses_95013o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€
:€€€€€€€€€d:€€€€€€€€€d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:QM
'
_output_shapes
:€€€€€€€€€d
"
_user_specified_name
states_1:QM
'
_output_shapes
:€€€€€€€€€d
"
_user_specified_name
states_0:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
н8
ѕ
while_body_97494
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_12_matmul_readvariableop_resource_0:	
РH
5while_lstm_cell_12_matmul_1_readvariableop_resource_0:	dРC
4while_lstm_cell_12_biasadd_readvariableop_resource_0:	Р
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_12_matmul_readvariableop_resource:	
РF
3while_lstm_cell_12_matmul_1_readvariableop_resource:	dРA
2while_lstm_cell_12_biasadd_readvariableop_resource:	РИҐ)while/lstm_cell_12/BiasAdd/ReadVariableOpҐ(while/lstm_cell_12/MatMul/ReadVariableOpҐ*while/lstm_cell_12/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€
*
element_dtype0Э
(while/lstm_cell_12/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_12_matmul_readvariableop_resource_0*
_output_shapes
:	
Р*
dtype0Ї
while/lstm_cell_12/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р°
*while/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_12_matmul_1_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0°
while/lstm_cell_12/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РЮ
while/lstm_cell_12/addAddV2#while/lstm_cell_12/MatMul:product:0%while/lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РЫ
)while/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_12_biasadd_readvariableop_resource_0*
_output_shapes	
:Р*
dtype0І
while/lstm_cell_12/BiasAddBiasAddwhile/lstm_cell_12/add:z:01while/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рd
"while/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_12/splitSplit+while/lstm_cell_12/split/split_dim:output:0#while/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitz
while/lstm_cell_12/SigmoidSigmoid!while/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell_12/Sigmoid_1Sigmoid!while/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dЖ
while/lstm_cell_12/mulMul while/lstm_cell_12/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€dt
while/lstm_cell_12/ReluRelu!while/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dШ
while/lstm_cell_12/mul_1Mulwhile/lstm_cell_12/Sigmoid:y:0%while/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dН
while/lstm_cell_12/add_1AddV2while/lstm_cell_12/mul:z:0while/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell_12/Sigmoid_2Sigmoid!while/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€dq
while/lstm_cell_12/Relu_1Reluwhile/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dЬ
while/lstm_cell_12/mul_2Mul while/lstm_cell_12/Sigmoid_2:y:0'while/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€d≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_12/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_12/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dy
while/Identity_5Identitywhile/lstm_cell_12/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€d–

while/NoOpNoOp*^while/lstm_cell_12/BiasAdd/ReadVariableOp)^while/lstm_cell_12/MatMul/ReadVariableOp+^while/lstm_cell_12/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"j
2while_lstm_cell_12_biasadd_readvariableop_resource4while_lstm_cell_12_biasadd_readvariableop_resource_0"l
3while_lstm_cell_12_matmul_1_readvariableop_resource5while_lstm_cell_12_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_12_matmul_readvariableop_resource3while_lstm_cell_12_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : 2V
)while/lstm_cell_12/BiasAdd/ReadVariableOp)while/lstm_cell_12/BiasAdd/ReadVariableOp2T
(while/lstm_cell_12/MatMul/ReadVariableOp(while/lstm_cell_12/MatMul/ReadVariableOp2X
*while/lstm_cell_12/MatMul_1/ReadVariableOp*while/lstm_cell_12/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:
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
Ј#
№
while_body_95172
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_12_95196_0:	
Р-
while_lstm_cell_12_95198_0:	dР)
while_lstm_cell_12_95200_0:	Р
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_12_95196:	
Р+
while_lstm_cell_12_95198:	dР'
while_lstm_cell_12_95200:	РИҐ*while/lstm_cell_12/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€
*
element_dtype0ѓ
*while/lstm_cell_12/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_12_95196_0while_lstm_cell_12_95198_0while_lstm_cell_12_95200_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_lstm_cell_12_layer_call_and_return_conditional_losses_95158№
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_12/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Р
while/Identity_4Identity3while/lstm_cell_12/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dР
while/Identity_5Identity3while/lstm_cell_12/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dy

while/NoOpNoOp+^while/lstm_cell_12/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"6
while_lstm_cell_12_95196while_lstm_cell_12_95196_0"6
while_lstm_cell_12_95198while_lstm_cell_12_95198_0"6
while_lstm_cell_12_95200while_lstm_cell_12_95200_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : 2X
*while/lstm_cell_12/StatefulPartitionedCall*while/lstm_cell_12/StatefulPartitionedCall:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:
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
Й
в
%sequential_6_lstm_12_while_cond_94708F
Bsequential_6_lstm_12_while_sequential_6_lstm_12_while_loop_counterL
Hsequential_6_lstm_12_while_sequential_6_lstm_12_while_maximum_iterations*
&sequential_6_lstm_12_while_placeholder,
(sequential_6_lstm_12_while_placeholder_1,
(sequential_6_lstm_12_while_placeholder_2,
(sequential_6_lstm_12_while_placeholder_3H
Dsequential_6_lstm_12_while_less_sequential_6_lstm_12_strided_slice_1]
Ysequential_6_lstm_12_while_sequential_6_lstm_12_while_cond_94708___redundant_placeholder0]
Ysequential_6_lstm_12_while_sequential_6_lstm_12_while_cond_94708___redundant_placeholder1]
Ysequential_6_lstm_12_while_sequential_6_lstm_12_while_cond_94708___redundant_placeholder2]
Ysequential_6_lstm_12_while_sequential_6_lstm_12_while_cond_94708___redundant_placeholder3'
#sequential_6_lstm_12_while_identity
ґ
sequential_6/lstm_12/while/LessLess&sequential_6_lstm_12_while_placeholderDsequential_6_lstm_12_while_less_sequential_6_lstm_12_strided_slice_1*
T0*
_output_shapes
: u
#sequential_6/lstm_12/while/IdentityIdentity#sequential_6/lstm_12/while/Less:z:0*
T0
*
_output_shapes
: "S
#sequential_6_lstm_12_while_identity,sequential_6/lstm_12/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€d:€€€€€€€€€d: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:

_output_shapes
: :

_output_shapes
: :ea

_output_shapes
: 
G
_user_specified_name/-sequential_6/lstm_12/while/maximum_iterations:_ [

_output_shapes
: 
A
_user_specified_name)'sequential_6/lstm_12/while/loop_counter
э
і
'__inference_lstm_12_layer_call_fn_97281

inputs
unknown:	
Р
	unknown_0:	dР
	unknown_1:	Р
identityИҐStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_12_layer_call_and_return_conditional_losses_95799s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
І
ґ
'__inference_lstm_12_layer_call_fn_97259
inputs_0
unknown:	
Р
	unknown_0:	dР
	unknown_1:	Р
identityИҐStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_12_layer_call_and_return_conditional_losses_95096|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€

"
_user_specified_name
inputs_0
…Ы
Т
!__inference__traced_restore_99108
file_prefix2
 assignvariableop_dense_12_kernel:d.
 assignvariableop_1_dense_12_bias:4
"assignvariableop_2_dense_13_kernel:
.
 assignvariableop_3_dense_13_bias:
A
.assignvariableop_4_lstm_12_lstm_cell_12_kernel:	
РK
8assignvariableop_5_lstm_12_lstm_cell_12_recurrent_kernel:	dР;
,assignvariableop_6_lstm_12_lstm_cell_12_bias:	РA
.assignvariableop_7_lstm_13_lstm_cell_13_kernel:	dРK
8assignvariableop_8_lstm_13_lstm_cell_13_recurrent_kernel:	dР;
,assignvariableop_9_lstm_13_lstm_cell_13_bias:	Р'
assignvariableop_10_iteration:	 +
!assignvariableop_11_learning_rate: I
6assignvariableop_12_adam_m_lstm_12_lstm_cell_12_kernel:	
РI
6assignvariableop_13_adam_v_lstm_12_lstm_cell_12_kernel:	
РS
@assignvariableop_14_adam_m_lstm_12_lstm_cell_12_recurrent_kernel:	dРS
@assignvariableop_15_adam_v_lstm_12_lstm_cell_12_recurrent_kernel:	dРC
4assignvariableop_16_adam_m_lstm_12_lstm_cell_12_bias:	РC
4assignvariableop_17_adam_v_lstm_12_lstm_cell_12_bias:	РI
6assignvariableop_18_adam_m_lstm_13_lstm_cell_13_kernel:	dРI
6assignvariableop_19_adam_v_lstm_13_lstm_cell_13_kernel:	dРS
@assignvariableop_20_adam_m_lstm_13_lstm_cell_13_recurrent_kernel:	dРS
@assignvariableop_21_adam_v_lstm_13_lstm_cell_13_recurrent_kernel:	dРC
4assignvariableop_22_adam_m_lstm_13_lstm_cell_13_bias:	РC
4assignvariableop_23_adam_v_lstm_13_lstm_cell_13_bias:	Р<
*assignvariableop_24_adam_m_dense_12_kernel:d<
*assignvariableop_25_adam_v_dense_12_kernel:d6
(assignvariableop_26_adam_m_dense_12_bias:6
(assignvariableop_27_adam_v_dense_12_bias:<
*assignvariableop_28_adam_m_dense_13_kernel:
<
*assignvariableop_29_adam_v_dense_13_kernel:
6
(assignvariableop_30_adam_m_dense_13_bias:
6
(assignvariableop_31_adam_v_dense_13_bias:
%
assignvariableop_32_total_1: %
assignvariableop_33_count_1: #
assignvariableop_34_total: #
assignvariableop_35_count: 
identity_37ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_4ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9Я
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*≈
valueїBЄ%B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЇ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Џ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*™
_output_shapesЧ
Ф:::::::::::::::::::::::::::::::::::::*3
dtypes)
'2%	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:≥
AssignVariableOpAssignVariableOp assignvariableop_dense_12_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_12_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_13_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_13_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:≈
AssignVariableOp_4AssignVariableOp.assignvariableop_4_lstm_12_lstm_cell_12_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:ѕ
AssignVariableOp_5AssignVariableOp8assignvariableop_5_lstm_12_lstm_cell_12_recurrent_kernelIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_6AssignVariableOp,assignvariableop_6_lstm_12_lstm_cell_12_biasIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:≈
AssignVariableOp_7AssignVariableOp.assignvariableop_7_lstm_13_lstm_cell_13_kernelIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:ѕ
AssignVariableOp_8AssignVariableOp8assignvariableop_8_lstm_13_lstm_cell_13_recurrent_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_9AssignVariableOp,assignvariableop_9_lstm_13_lstm_cell_13_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:ґ
AssignVariableOp_10AssignVariableOpassignvariableop_10_iterationIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_11AssignVariableOp!assignvariableop_11_learning_rateIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:ѕ
AssignVariableOp_12AssignVariableOp6assignvariableop_12_adam_m_lstm_12_lstm_cell_12_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:ѕ
AssignVariableOp_13AssignVariableOp6assignvariableop_13_adam_v_lstm_12_lstm_cell_12_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_14AssignVariableOp@assignvariableop_14_adam_m_lstm_12_lstm_cell_12_recurrent_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_15AssignVariableOp@assignvariableop_15_adam_v_lstm_12_lstm_cell_12_recurrent_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_16AssignVariableOp4assignvariableop_16_adam_m_lstm_12_lstm_cell_12_biasIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_17AssignVariableOp4assignvariableop_17_adam_v_lstm_12_lstm_cell_12_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:ѕ
AssignVariableOp_18AssignVariableOp6assignvariableop_18_adam_m_lstm_13_lstm_cell_13_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:ѕ
AssignVariableOp_19AssignVariableOp6assignvariableop_19_adam_v_lstm_13_lstm_cell_13_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_20AssignVariableOp@assignvariableop_20_adam_m_lstm_13_lstm_cell_13_recurrent_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_21AssignVariableOp@assignvariableop_21_adam_v_lstm_13_lstm_cell_13_recurrent_kernelIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_22AssignVariableOp4assignvariableop_22_adam_m_lstm_13_lstm_cell_13_biasIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_23AssignVariableOp4assignvariableop_23_adam_v_lstm_13_lstm_cell_13_biasIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_m_dense_12_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_v_dense_12_kernelIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_m_dense_12_biasIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_27AssignVariableOp(assignvariableop_27_adam_v_dense_12_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_28AssignVariableOp*assignvariableop_28_adam_m_dense_13_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_v_dense_13_kernelIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_m_dense_13_biasIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_31AssignVariableOp(assignvariableop_31_adam_v_dense_13_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_32AssignVariableOpassignvariableop_32_total_1Identity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_33AssignVariableOpassignvariableop_33_count_1Identity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_34AssignVariableOpassignvariableop_34_totalIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_35AssignVariableOpassignvariableop_35_countIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 з
Identity_36Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_37IdentityIdentity_36:output:0^NoOp_1*
T0*
_output_shapes
: ‘
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
Й:
ѕ
while_body_98113
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_13_matmul_readvariableop_resource_0:	dРH
5while_lstm_cell_13_matmul_1_readvariableop_resource_0:	dРC
4while_lstm_cell_13_biasadd_readvariableop_resource_0:	Р
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_13_matmul_readvariableop_resource:	dРF
3while_lstm_cell_13_matmul_1_readvariableop_resource:	dРA
2while_lstm_cell_13_biasadd_readvariableop_resource:	РИҐ)while/lstm_cell_13/BiasAdd/ReadVariableOpҐ(while/lstm_cell_13/MatMul/ReadVariableOpҐ*while/lstm_cell_13/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€d*
element_dtype0Э
(while/lstm_cell_13/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_13_matmul_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0Ї
while/lstm_cell_13/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р°
*while/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_13_matmul_1_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0°
while/lstm_cell_13/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РЮ
while/lstm_cell_13/addAddV2#while/lstm_cell_13/MatMul:product:0%while/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РЫ
)while/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_13_biasadd_readvariableop_resource_0*
_output_shapes	
:Р*
dtype0І
while/lstm_cell_13/BiasAddBiasAddwhile/lstm_cell_13/add:z:01while/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рd
"while/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_13/splitSplit+while/lstm_cell_13/split/split_dim:output:0#while/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitz
while/lstm_cell_13/SigmoidSigmoid!while/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell_13/Sigmoid_1Sigmoid!while/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dЖ
while/lstm_cell_13/mulMul while/lstm_cell_13/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€dt
while/lstm_cell_13/ReluRelu!while/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dШ
while/lstm_cell_13/mul_1Mulwhile/lstm_cell_13/Sigmoid:y:0%while/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dН
while/lstm_cell_13/add_1AddV2while/lstm_cell_13/mul:z:0while/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell_13/Sigmoid_2Sigmoid!while/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€dq
while/lstm_cell_13/Relu_1Reluwhile/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dЬ
while/lstm_cell_13/mul_2Mul while/lstm_cell_13/Sigmoid_2:y:0'while/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : н
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_13/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_13/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dy
while/Identity_5Identitywhile/lstm_cell_13/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€d–

while/NoOpNoOp*^while/lstm_cell_13/BiasAdd/ReadVariableOp)^while/lstm_cell_13/MatMul/ReadVariableOp+^while/lstm_cell_13/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"j
2while_lstm_cell_13_biasadd_readvariableop_resource4while_lstm_cell_13_biasadd_readvariableop_resource_0"l
3while_lstm_cell_13_matmul_1_readvariableop_resource5while_lstm_cell_13_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_13_matmul_readvariableop_resource3while_lstm_cell_13_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : 2V
)while/lstm_cell_13/BiasAdd/ReadVariableOp)while/lstm_cell_13/BiasAdd/ReadVariableOp2T
(while/lstm_cell_13/MatMul/ReadVariableOp(while/lstm_cell_13/MatMul/ReadVariableOp2X
*while/lstm_cell_13/MatMul_1/ReadVariableOp*while/lstm_cell_13/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:
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
¬K
Ъ
B__inference_lstm_13_layer_call_and_return_conditional_losses_95951

inputs>
+lstm_cell_13_matmul_readvariableop_resource:	dР@
-lstm_cell_13_matmul_1_readvariableop_resource:	dР;
,lstm_cell_13_biasadd_readvariableop_resource:	Р
identityИҐ#lstm_cell_13/BiasAdd/ReadVariableOpҐ"lstm_cell_13/MatMul/ReadVariableOpҐ$lstm_cell_13/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
:€€€€€€€€€dR
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
:€€€€€€€€€dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€dR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maskП
"lstm_cell_13/MatMul/ReadVariableOpReadVariableOp+lstm_cell_13_matmul_readvariableop_resource*
_output_shapes
:	dР*
dtype0Ц
lstm_cell_13/MatMulMatMulstrided_slice_2:output:0*lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РУ
$lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_13_matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0Р
lstm_cell_13/MatMul_1MatMulzeros:output:0,lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РМ
lstm_cell_13/addAddV2lstm_cell_13/MatMul:product:0lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РН
#lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_13_biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0Х
lstm_cell_13/BiasAddBiasAddlstm_cell_13/add:z:0+lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р^
lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_13/splitSplit%lstm_cell_13/split/split_dim:output:0lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitn
lstm_cell_13/SigmoidSigmoidlstm_cell_13/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell_13/Sigmoid_1Sigmoidlstm_cell_13/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dw
lstm_cell_13/mulMullstm_cell_13/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dh
lstm_cell_13/ReluRelulstm_cell_13/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dЖ
lstm_cell_13/mul_1Mullstm_cell_13/Sigmoid:y:0lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€d{
lstm_cell_13/add_1AddV2lstm_cell_13/mul:z:0lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell_13/Sigmoid_2Sigmoidlstm_cell_13/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€de
lstm_cell_13/Relu_1Relulstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dК
lstm_cell_13/mul_2Mullstm_cell_13/Sigmoid_2:y:0!lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : А
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_13_matmul_readvariableop_resource-lstm_cell_13_matmul_1_readvariableop_resource,lstm_cell_13_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_95866*
condR
while_cond_95865*K
output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€d*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dј
NoOpNoOp$^lstm_cell_13/BiasAdd/ReadVariableOp#^lstm_cell_13/MatMul/ReadVariableOp%^lstm_cell_13/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€d: : : 2J
#lstm_cell_13/BiasAdd/ReadVariableOp#lstm_cell_13/BiasAdd/ReadVariableOp2H
"lstm_cell_13/MatMul/ReadVariableOp"lstm_cell_13/MatMul/ReadVariableOp2L
$lstm_cell_13/MatMul_1/ReadVariableOp$lstm_cell_13/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
М9
Б
B__inference_lstm_13_layer_call_and_return_conditional_losses_95448

inputs%
lstm_cell_13_95364:	dР%
lstm_cell_13_95366:	dР!
lstm_cell_13_95368:	Р
identityИҐ$lstm_cell_13/StatefulPartitionedCallҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
:€€€€€€€€€dR
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
:€€€€€€€€€dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€dR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maskс
$lstm_cell_13/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_13_95364lstm_cell_13_95366lstm_cell_13_95368*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_lstm_cell_13_layer_call_and_return_conditional_losses_95363n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ≤
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_13_95364lstm_cell_13_95366lstm_cell_13_95368*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_95378*
condR
while_cond_95377*K
output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€d*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€du
NoOpNoOp%^lstm_cell_13/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€d: : : 2L
$lstm_cell_13/StatefulPartitionedCall$lstm_cell_13/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d
 
_user_specified_nameinputs
еK
Ь
B__inference_lstm_13_layer_call_and_return_conditional_losses_98198
inputs_0>
+lstm_cell_13_matmul_readvariableop_resource:	dР@
-lstm_cell_13_matmul_1_readvariableop_resource:	dР;
,lstm_cell_13_biasadd_readvariableop_resource:	Р
identityИҐ#lstm_cell_13/BiasAdd/ReadVariableOpҐ"lstm_cell_13/MatMul/ReadVariableOpҐ$lstm_cell_13/MatMul_1/ReadVariableOpҐwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
:€€€€€€€€€dR
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
:€€€€€€€€€dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€dR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maskП
"lstm_cell_13/MatMul/ReadVariableOpReadVariableOp+lstm_cell_13_matmul_readvariableop_resource*
_output_shapes
:	dР*
dtype0Ц
lstm_cell_13/MatMulMatMulstrided_slice_2:output:0*lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РУ
$lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_13_matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0Р
lstm_cell_13/MatMul_1MatMulzeros:output:0,lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РМ
lstm_cell_13/addAddV2lstm_cell_13/MatMul:product:0lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РН
#lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_13_biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0Х
lstm_cell_13/BiasAddBiasAddlstm_cell_13/add:z:0+lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р^
lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_13/splitSplit%lstm_cell_13/split/split_dim:output:0lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitn
lstm_cell_13/SigmoidSigmoidlstm_cell_13/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell_13/Sigmoid_1Sigmoidlstm_cell_13/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dw
lstm_cell_13/mulMullstm_cell_13/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dh
lstm_cell_13/ReluRelulstm_cell_13/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dЖ
lstm_cell_13/mul_1Mullstm_cell_13/Sigmoid:y:0lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€d{
lstm_cell_13/add_1AddV2lstm_cell_13/mul:z:0lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell_13/Sigmoid_2Sigmoidlstm_cell_13/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€de
lstm_cell_13/Relu_1Relulstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dК
lstm_cell_13/mul_2Mullstm_cell_13/Sigmoid_2:y:0!lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : А
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_13_matmul_readvariableop_resource-lstm_cell_13_matmul_1_readvariableop_resource,lstm_cell_13_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_98113*
condR
while_cond_98112*K
output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€d*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dј
NoOpNoOp$^lstm_cell_13/BiasAdd/ReadVariableOp#^lstm_cell_13/MatMul/ReadVariableOp%^lstm_cell_13/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€d: : : 2J
#lstm_cell_13/BiasAdd/ReadVariableOp#lstm_cell_13/BiasAdd/ReadVariableOp2H
"lstm_cell_13/MatMul/ReadVariableOp"lstm_cell_13/MatMul/ReadVariableOp2L
$lstm_cell_13/MatMul_1/ReadVariableOp$lstm_cell_13/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d
"
_user_specified_name
inputs_0
Н
ґ
'__inference_lstm_13_layer_call_fn_97875
inputs_0
unknown:	dР
	unknown_0:	dР
	unknown_1:	Р
identityИҐStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_13_layer_call_and_return_conditional_losses_95448o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d
"
_user_specified_name
inputs_0"у
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ї
serving_defaultІ
K
lstm_12_input:
serving_default_lstm_12_input:0€€€€€€€€€
<
dense_130
StatefulPartitionedCall:0€€€€€€€€€
tensorflow/serving/predict:ЊЪ
П
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
Џ
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
Џ
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
Љ
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses
'_random_generator"
_tf_keras_layer
ї
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses

.kernel
/bias"
_tf_keras_layer
ї
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
 
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
џ
Ctrace_0
Dtrace_1
Etrace_2
Ftrace_32р
,__inference_sequential_6_layer_call_fn_96385
,__inference_sequential_6_layer_call_fn_96439
,__inference_sequential_6_layer_call_fn_96618
,__inference_sequential_6_layer_call_fn_96643µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zCtrace_0zDtrace_1zEtrace_2zFtrace_3
«
Gtrace_0
Htrace_1
Itrace_2
Jtrace_32№
G__inference_sequential_6_layer_call_and_return_conditional_losses_96008
G__inference_sequential_6_layer_call_and_return_conditional_losses_96330
G__inference_sequential_6_layer_call_and_return_conditional_losses_96949
G__inference_sequential_6_layer_call_and_return_conditional_losses_97248µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zGtrace_0zHtrace_1zItrace_2zJtrace_3
—Bќ
 __inference__wrapped_model_94949lstm_12_input"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ь
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
є

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
№
Ytrace_0
Ztrace_1
[trace_2
\trace_32с
'__inference_lstm_12_layer_call_fn_97259
'__inference_lstm_12_layer_call_fn_97270
'__inference_lstm_12_layer_call_fn_97281
'__inference_lstm_12_layer_call_fn_97292 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zYtrace_0zZtrace_1z[trace_2z\trace_3
»
]trace_0
^trace_1
_trace_2
`trace_32Ё
B__inference_lstm_12_layer_call_and_return_conditional_losses_97435
B__inference_lstm_12_layer_call_and_return_conditional_losses_97578
B__inference_lstm_12_layer_call_and_return_conditional_losses_97721
B__inference_lstm_12_layer_call_and_return_conditional_losses_97864 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z]trace_0z^trace_1z_trace_2z`trace_3
"
_generic_user_object
ш
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
є

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
№
otrace_0
ptrace_1
qtrace_2
rtrace_32с
'__inference_lstm_13_layer_call_fn_97875
'__inference_lstm_13_layer_call_fn_97886
'__inference_lstm_13_layer_call_fn_97897
'__inference_lstm_13_layer_call_fn_97908 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zotrace_0zptrace_1zqtrace_2zrtrace_3
»
strace_0
ttrace_1
utrace_2
vtrace_32Ё
B__inference_lstm_13_layer_call_and_return_conditional_losses_98053
B__inference_lstm_13_layer_call_and_return_conditional_losses_98198
B__inference_lstm_13_layer_call_and_return_conditional_losses_98343
B__inference_lstm_13_layer_call_and_return_conditional_losses_98488 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zstrace_0zttrace_1zutrace_2zvtrace_3
"
_generic_user_object
ш
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
±
non_trainable_variables
Аlayers
Бmetrics
 Вlayer_regularization_losses
Гlayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
љ
Дtrace_0
Еtrace_12В
)__inference_dropout_6_layer_call_fn_98493
)__inference_dropout_6_layer_call_fn_98498©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zДtrace_0zЕtrace_1
у
Жtrace_0
Зtrace_12Є
D__inference_dropout_6_layer_call_and_return_conditional_losses_98510
D__inference_dropout_6_layer_call_and_return_conditional_losses_98515©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЖtrace_0zЗtrace_1
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
≤
Иnon_trainable_variables
Йlayers
Кmetrics
 Лlayer_regularization_losses
Мlayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
д
Нtrace_02≈
(__inference_dense_12_layer_call_fn_98524Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zНtrace_0
€
Оtrace_02а
C__inference_dense_12_layer_call_and_return_conditional_losses_98535Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zОtrace_0
!:d2dense_12/kernel
:2dense_12/bias
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
≤
Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
д
Фtrace_02≈
(__inference_dense_13_layer_call_fn_98544Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zФtrace_0
€
Хtrace_02а
C__inference_dense_13_layer_call_and_return_conditional_losses_98555Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zХtrace_0
!:
2dense_13/kernel
:
2dense_13/bias
.:,	
Р2lstm_12/lstm_cell_12/kernel
8:6	dР2%lstm_12/lstm_cell_12/recurrent_kernel
(:&Р2lstm_12/lstm_cell_12/bias
.:,	dР2lstm_13/lstm_cell_13/kernel
8:6	dР2%lstm_13/lstm_cell_13/recurrent_kernel
(:&Р2lstm_13/lstm_cell_13/bias
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
Ц0
Ч1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ъBч
,__inference_sequential_6_layer_call_fn_96385lstm_12_input"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ъBч
,__inference_sequential_6_layer_call_fn_96439lstm_12_input"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
уBр
,__inference_sequential_6_layer_call_fn_96618inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
уBр
,__inference_sequential_6_layer_call_fn_96643inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ХBТ
G__inference_sequential_6_layer_call_and_return_conditional_losses_96008lstm_12_input"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ХBТ
G__inference_sequential_6_layer_call_and_return_conditional_losses_96330lstm_12_input"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ОBЛ
G__inference_sequential_6_layer_call_and_return_conditional_losses_96949inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ОBЛ
G__inference_sequential_6_layer_call_and_return_conditional_losses_97248inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
“
L0
Ш1
Щ2
Ъ3
Ы4
Ь5
Э6
Ю7
Я8
†9
°10
Ґ11
£12
§13
•14
¶15
І16
®17
©18
™19
Ђ20"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
p
Ш0
Ъ1
Ь2
Ю3
†4
Ґ5
§6
¶7
®8
™9"
trackable_list_wrapper
p
Щ0
Ы1
Э2
Я3
°4
£5
•6
І7
©8
Ђ9"
trackable_list_wrapper
µ2≤ѓ
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
–BЌ
#__inference_signature_wrapper_96593lstm_12_input"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
ЕBВ
'__inference_lstm_12_layer_call_fn_97259inputs_0" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЕBВ
'__inference_lstm_12_layer_call_fn_97270inputs_0" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ГBА
'__inference_lstm_12_layer_call_fn_97281inputs" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ГBА
'__inference_lstm_12_layer_call_fn_97292inputs" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
†BЭ
B__inference_lstm_12_layer_call_and_return_conditional_losses_97435inputs_0" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
†BЭ
B__inference_lstm_12_layer_call_and_return_conditional_losses_97578inputs_0" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЮBЫ
B__inference_lstm_12_layer_call_and_return_conditional_losses_97721inputs" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЮBЫ
B__inference_lstm_12_layer_call_and_return_conditional_losses_97864inputs" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
≤
ђnon_trainable_variables
≠layers
Ѓmetrics
 ѓlayer_regularization_losses
∞layer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
Ќ
±trace_0
≤trace_12Т
,__inference_lstm_cell_12_layer_call_fn_98572
,__inference_lstm_cell_12_layer_call_fn_98589≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z±trace_0z≤trace_1
Г
≥trace_0
іtrace_12»
G__inference_lstm_cell_12_layer_call_and_return_conditional_losses_98621
G__inference_lstm_cell_12_layer_call_and_return_conditional_losses_98653≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z≥trace_0zіtrace_1
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
ЕBВ
'__inference_lstm_13_layer_call_fn_97875inputs_0" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЕBВ
'__inference_lstm_13_layer_call_fn_97886inputs_0" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ГBА
'__inference_lstm_13_layer_call_fn_97897inputs" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ГBА
'__inference_lstm_13_layer_call_fn_97908inputs" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
†BЭ
B__inference_lstm_13_layer_call_and_return_conditional_losses_98053inputs_0" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
†BЭ
B__inference_lstm_13_layer_call_and_return_conditional_losses_98198inputs_0" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЮBЫ
B__inference_lstm_13_layer_call_and_return_conditional_losses_98343inputs" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЮBЫ
B__inference_lstm_13_layer_call_and_return_conditional_losses_98488inputs" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
≤
µnon_trainable_variables
ґlayers
Јmetrics
 Єlayer_regularization_losses
єlayer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
Ќ
Їtrace_0
їtrace_12Т
,__inference_lstm_cell_13_layer_call_fn_98670
,__inference_lstm_cell_13_layer_call_fn_98687≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЇtrace_0zїtrace_1
Г
Љtrace_0
љtrace_12»
G__inference_lstm_cell_13_layer_call_and_return_conditional_losses_98719
G__inference_lstm_cell_13_layer_call_and_return_conditional_losses_98751≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЉtrace_0zљtrace_1
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
дBб
)__inference_dropout_6_layer_call_fn_98493inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
дBб
)__inference_dropout_6_layer_call_fn_98498inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
D__inference_dropout_6_layer_call_and_return_conditional_losses_98510inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
D__inference_dropout_6_layer_call_and_return_conditional_losses_98515inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
“Bѕ
(__inference_dense_12_layer_call_fn_98524inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
нBк
C__inference_dense_12_layer_call_and_return_conditional_losses_98535inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
“Bѕ
(__inference_dense_13_layer_call_fn_98544inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
нBк
C__inference_dense_13_layer_call_and_return_conditional_losses_98555inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
R
Њ	variables
њ	keras_api

јtotal

Ѕcount"
_tf_keras_metric
c
¬	variables
√	keras_api

ƒtotal

≈count
∆
_fn_kwargs"
_tf_keras_metric
3:1	
Р2"Adam/m/lstm_12/lstm_cell_12/kernel
3:1	
Р2"Adam/v/lstm_12/lstm_cell_12/kernel
=:;	dР2,Adam/m/lstm_12/lstm_cell_12/recurrent_kernel
=:;	dР2,Adam/v/lstm_12/lstm_cell_12/recurrent_kernel
-:+Р2 Adam/m/lstm_12/lstm_cell_12/bias
-:+Р2 Adam/v/lstm_12/lstm_cell_12/bias
3:1	dР2"Adam/m/lstm_13/lstm_cell_13/kernel
3:1	dР2"Adam/v/lstm_13/lstm_cell_13/kernel
=:;	dР2,Adam/m/lstm_13/lstm_cell_13/recurrent_kernel
=:;	dР2,Adam/v/lstm_13/lstm_cell_13/recurrent_kernel
-:+Р2 Adam/m/lstm_13/lstm_cell_13/bias
-:+Р2 Adam/v/lstm_13/lstm_cell_13/bias
&:$d2Adam/m/dense_12/kernel
&:$d2Adam/v/dense_12/kernel
 :2Adam/m/dense_12/bias
 :2Adam/v/dense_12/bias
&:$
2Adam/m/dense_13/kernel
&:$
2Adam/v/dense_13/kernel
 :
2Adam/m/dense_13/bias
 :
2Adam/v/dense_13/bias
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
ЕBВ
,__inference_lstm_cell_12_layer_call_fn_98572inputsstates_0states_1"≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЕBВ
,__inference_lstm_cell_12_layer_call_fn_98589inputsstates_0states_1"≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
†BЭ
G__inference_lstm_cell_12_layer_call_and_return_conditional_losses_98621inputsstates_0states_1"≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
†BЭ
G__inference_lstm_cell_12_layer_call_and_return_conditional_losses_98653inputsstates_0states_1"≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
ЕBВ
,__inference_lstm_cell_13_layer_call_fn_98670inputsstates_0states_1"≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЕBВ
,__inference_lstm_cell_13_layer_call_fn_98687inputsstates_0states_1"≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
†BЭ
G__inference_lstm_cell_13_layer_call_and_return_conditional_losses_98719inputsstates_0states_1"≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
†BЭ
G__inference_lstm_cell_13_layer_call_and_return_conditional_losses_98751inputsstates_0states_1"≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
0
ј0
Ѕ1"
trackable_list_wrapper
.
Њ	variables"
_generic_user_object
:  (2total
:  (2count
0
ƒ0
≈1"
trackable_list_wrapper
.
¬	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper°
 __inference__wrapped_model_94949}
89:;<=./67:Ґ7
0Ґ-
+К(
lstm_12_input€€€€€€€€€

™ "3™0
.
dense_13"К
dense_13€€€€€€€€€
™
C__inference_dense_12_layer_call_and_return_conditional_losses_98535c.//Ґ,
%Ґ"
 К
inputs€€€€€€€€€d
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Д
(__inference_dense_12_layer_call_fn_98524X.//Ґ,
%Ґ"
 К
inputs€€€€€€€€€d
™ "!К
unknown€€€€€€€€€™
C__inference_dense_13_layer_call_and_return_conditional_losses_98555c67/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ ",Ґ)
"К
tensor_0€€€€€€€€€

Ъ Д
(__inference_dense_13_layer_call_fn_98544X67/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "!К
unknown€€€€€€€€€
Ђ
D__inference_dropout_6_layer_call_and_return_conditional_losses_98510c3Ґ0
)Ґ&
 К
inputs€€€€€€€€€d
p
™ ",Ґ)
"К
tensor_0€€€€€€€€€d
Ъ Ђ
D__inference_dropout_6_layer_call_and_return_conditional_losses_98515c3Ґ0
)Ґ&
 К
inputs€€€€€€€€€d
p 
™ ",Ґ)
"К
tensor_0€€€€€€€€€d
Ъ Е
)__inference_dropout_6_layer_call_fn_98493X3Ґ0
)Ґ&
 К
inputs€€€€€€€€€d
p
™ "!К
unknown€€€€€€€€€dЕ
)__inference_dropout_6_layer_call_fn_98498X3Ґ0
)Ґ&
 К
inputs€€€€€€€€€d
p 
™ "!К
unknown€€€€€€€€€dЎ
B__inference_lstm_12_layer_call_and_return_conditional_losses_97435С89:OҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€


 
p

 
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€d
Ъ Ў
B__inference_lstm_12_layer_call_and_return_conditional_losses_97578С89:OҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€


 
p 

 
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€d
Ъ Њ
B__inference_lstm_12_layer_call_and_return_conditional_losses_97721x89:?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€


 
p

 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€d
Ъ Њ
B__inference_lstm_12_layer_call_and_return_conditional_losses_97864x89:?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€


 
p 

 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€d
Ъ ≤
'__inference_lstm_12_layer_call_fn_97259Ж89:OҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€


 
p

 
™ ".К+
unknown€€€€€€€€€€€€€€€€€€d≤
'__inference_lstm_12_layer_call_fn_97270Ж89:OҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€


 
p 

 
™ ".К+
unknown€€€€€€€€€€€€€€€€€€dШ
'__inference_lstm_12_layer_call_fn_97281m89:?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€


 
p

 
™ "%К"
unknown€€€€€€€€€dШ
'__inference_lstm_12_layer_call_fn_97292m89:?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€


 
p 

 
™ "%К"
unknown€€€€€€€€€dЋ
B__inference_lstm_13_layer_call_and_return_conditional_losses_98053Д;<=OҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€d

 
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€d
Ъ Ћ
B__inference_lstm_13_layer_call_and_return_conditional_losses_98198Д;<=OҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€d

 
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€d
Ъ Ї
B__inference_lstm_13_layer_call_and_return_conditional_losses_98343t;<=?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€d

 
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€d
Ъ Ї
B__inference_lstm_13_layer_call_and_return_conditional_losses_98488t;<=?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€d

 
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€d
Ъ §
'__inference_lstm_13_layer_call_fn_97875y;<=OҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€d

 
p

 
™ "!К
unknown€€€€€€€€€d§
'__inference_lstm_13_layer_call_fn_97886y;<=OҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€d

 
p 

 
™ "!К
unknown€€€€€€€€€dФ
'__inference_lstm_13_layer_call_fn_97897i;<=?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€d

 
p

 
™ "!К
unknown€€€€€€€€€dФ
'__inference_lstm_13_layer_call_fn_97908i;<=?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€d

 
p 

 
™ "!К
unknown€€€€€€€€€dа
G__inference_lstm_cell_12_layer_call_and_return_conditional_losses_98621Ф89:АҐ}
vҐs
 К
inputs€€€€€€€€€

KҐH
"К
states_0€€€€€€€€€d
"К
states_1€€€€€€€€€d
p
™ "ЙҐЕ
~Ґ{
$К!

tensor_0_0€€€€€€€€€d
SЪP
&К#
tensor_0_1_0€€€€€€€€€d
&К#
tensor_0_1_1€€€€€€€€€d
Ъ а
G__inference_lstm_cell_12_layer_call_and_return_conditional_losses_98653Ф89:АҐ}
vҐs
 К
inputs€€€€€€€€€

KҐH
"К
states_0€€€€€€€€€d
"К
states_1€€€€€€€€€d
p 
™ "ЙҐЕ
~Ґ{
$К!

tensor_0_0€€€€€€€€€d
SЪP
&К#
tensor_0_1_0€€€€€€€€€d
&К#
tensor_0_1_1€€€€€€€€€d
Ъ ≥
,__inference_lstm_cell_12_layer_call_fn_98572В89:АҐ}
vҐs
 К
inputs€€€€€€€€€

KҐH
"К
states_0€€€€€€€€€d
"К
states_1€€€€€€€€€d
p
™ "xҐu
"К
tensor_0€€€€€€€€€d
OЪL
$К!

tensor_1_0€€€€€€€€€d
$К!

tensor_1_1€€€€€€€€€d≥
,__inference_lstm_cell_12_layer_call_fn_98589В89:АҐ}
vҐs
 К
inputs€€€€€€€€€

KҐH
"К
states_0€€€€€€€€€d
"К
states_1€€€€€€€€€d
p 
™ "xҐu
"К
tensor_0€€€€€€€€€d
OЪL
$К!

tensor_1_0€€€€€€€€€d
$К!

tensor_1_1€€€€€€€€€dа
G__inference_lstm_cell_13_layer_call_and_return_conditional_losses_98719Ф;<=АҐ}
vҐs
 К
inputs€€€€€€€€€d
KҐH
"К
states_0€€€€€€€€€d
"К
states_1€€€€€€€€€d
p
™ "ЙҐЕ
~Ґ{
$К!

tensor_0_0€€€€€€€€€d
SЪP
&К#
tensor_0_1_0€€€€€€€€€d
&К#
tensor_0_1_1€€€€€€€€€d
Ъ а
G__inference_lstm_cell_13_layer_call_and_return_conditional_losses_98751Ф;<=АҐ}
vҐs
 К
inputs€€€€€€€€€d
KҐH
"К
states_0€€€€€€€€€d
"К
states_1€€€€€€€€€d
p 
™ "ЙҐЕ
~Ґ{
$К!

tensor_0_0€€€€€€€€€d
SЪP
&К#
tensor_0_1_0€€€€€€€€€d
&К#
tensor_0_1_1€€€€€€€€€d
Ъ ≥
,__inference_lstm_cell_13_layer_call_fn_98670В;<=АҐ}
vҐs
 К
inputs€€€€€€€€€d
KҐH
"К
states_0€€€€€€€€€d
"К
states_1€€€€€€€€€d
p
™ "xҐu
"К
tensor_0€€€€€€€€€d
OЪL
$К!

tensor_1_0€€€€€€€€€d
$К!

tensor_1_1€€€€€€€€€d≥
,__inference_lstm_cell_13_layer_call_fn_98687В;<=АҐ}
vҐs
 К
inputs€€€€€€€€€d
KҐH
"К
states_0€€€€€€€€€d
"К
states_1€€€€€€€€€d
p 
™ "xҐu
"К
tensor_0€€€€€€€€€d
OЪL
$К!

tensor_1_0€€€€€€€€€d
$К!

tensor_1_1€€€€€€€€€d…
G__inference_sequential_6_layer_call_and_return_conditional_losses_96008~
89:;<=./67BҐ?
8Ґ5
+К(
lstm_12_input€€€€€€€€€

p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€

Ъ …
G__inference_sequential_6_layer_call_and_return_conditional_losses_96330~
89:;<=./67BҐ?
8Ґ5
+К(
lstm_12_input€€€€€€€€€

p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€

Ъ ¬
G__inference_sequential_6_layer_call_and_return_conditional_losses_96949w
89:;<=./67;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€

p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€

Ъ ¬
G__inference_sequential_6_layer_call_and_return_conditional_losses_97248w
89:;<=./67;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€

p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€

Ъ £
,__inference_sequential_6_layer_call_fn_96385s
89:;<=./67BҐ?
8Ґ5
+К(
lstm_12_input€€€€€€€€€

p

 
™ "!К
unknown€€€€€€€€€
£
,__inference_sequential_6_layer_call_fn_96439s
89:;<=./67BҐ?
8Ґ5
+К(
lstm_12_input€€€€€€€€€

p 

 
™ "!К
unknown€€€€€€€€€
Ь
,__inference_sequential_6_layer_call_fn_96618l
89:;<=./67;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€

p

 
™ "!К
unknown€€€€€€€€€
Ь
,__inference_sequential_6_layer_call_fn_96643l
89:;<=./67;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€

p 

 
™ "!К
unknown€€€€€€€€€
ґ
#__inference_signature_wrapper_96593О
89:;<=./67KҐH
Ґ 
A™>
<
lstm_12_input+К(
lstm_12_input€€€€€€€€€
"3™0
.
dense_13"К
dense_13€€€€€€€€€
