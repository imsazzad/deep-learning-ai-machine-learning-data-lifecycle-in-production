??
??
A
AddV2
x"T
y"T
z"T"
Ttype:
2	??
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeint?
?
BoostedTreesBucketize
float_values*num_features#
bucket_boundaries*num_features
buckets*num_features"
num_featuresint(
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
k
Equal
x"T
y"T
z
""
Ttype:
2	
"$
incompatible_shape_errorbool(?
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
.
Identity

input"T
output"T"	
Ttype
?
InitializeTableFromTextFileV2
table_handle
filename"
	key_indexint(0?????????"
value_indexint(0?????????"+

vocab_sizeint?????????(0?????????"
	delimiterstring	?
+
IsInf
x"T
y
"
Ttype:
2
:
Less
x"T
y"T
z
"
Ttype:
2	
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
2
LookupTableSizeV2
table_handle
size	?
?
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
:
Maximum
x"T
y"T
z"T"
Ttype:

2	
:
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
0
Neg
x"T
y"T"
Ttype:
2
	
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
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
l
	ReverseV2
tensor"T
axis"Tidx
output"T"
Tidxtype0:
2	"
Ttype:
2	

A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
0
Sigmoid
x"T
y"T"
Ttype:

2
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
;
Sub
x"T
y"T
z"T"
Ttype:
2	
f
TopKV2

input"T
k
values"T
indices"
sortedbool("
Ttype:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
&
	ZerosLike
x"T
y"T"	
Ttype"	transform*2.3.12v2.3.0-54-gfcc4b966f1??
Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"  ?A  B  ?B
I
Const_1Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
Const_2Const*
_output_shapes
: *
dtype0*?
valuewBu Bo./pipeline/Transform/transform_graph/5/.temp_path/tftransform_tmp/vocab_compute_and_apply_vocabulary_vocabulary
I
Const_3Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
Const_4Const*
_output_shapes
: *
dtype0*?
valueyBw Bq./pipeline/Transform/transform_graph/5/.temp_path/tftransform_tmp/vocab_compute_and_apply_vocabulary_1_vocabulary
I
Const_5Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
Const_6Const*
_output_shapes
: *
dtype0*?
valueyBw Bq./pipeline/Transform/transform_graph/5/.temp_path/tftransform_tmp/vocab_compute_and_apply_vocabulary_2_vocabulary
I
Const_7Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
Const_8Const*
_output_shapes
: *
dtype0*?
valueyBw Bq./pipeline/Transform/transform_graph/5/.temp_path/tftransform_tmp/vocab_compute_and_apply_vocabulary_3_vocabulary
I
Const_9Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
Const_10Const*
_output_shapes
: *
dtype0*?
valueyBw Bq./pipeline/Transform/transform_graph/5/.temp_path/tftransform_tmp/vocab_compute_and_apply_vocabulary_4_vocabulary
J
Const_11Const*
_output_shapes
: *
dtype0	*
value	B	 R	
?
Const_12Const*
_output_shapes
: *
dtype0*?
valueyBw Bq./pipeline/Transform/transform_graph/5/.temp_path/tftransform_tmp/vocab_compute_and_apply_vocabulary_5_vocabulary
J
Const_13Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
Const_14Const*
_output_shapes
: *
dtype0*?
valueyBw Bq./pipeline/Transform/transform_graph/5/.temp_path/tftransform_tmp/vocab_compute_and_apply_vocabulary_6_vocabulary
J
Const_15Const*
_output_shapes
: *
dtype0	*
value	B	 R)
?
Const_16Const*
_output_shapes
: *
dtype0*?
valueyBw Bq./pipeline/Transform/transform_graph/5/.temp_path/tftransform_tmp/vocab_compute_and_apply_vocabulary_7_vocabulary
J
Const_17Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
Const_18Const*
_output_shapes
: *
dtype0*?
valueyBw Bq./pipeline/Transform/transform_graph/5/.temp_path/tftransform_tmp/vocab_compute_and_apply_vocabulary_8_vocabulary
M
Const_19Const*
_output_shapes
: *
dtype0*
valueB
 * ???
M
Const_20Const*
_output_shapes
: *
dtype0*
valueB
 *=?I
M
Const_21Const*
_output_shapes
: *
dtype0*
valueB
 *  ??
M
Const_22Const*
_output_shapes
: *
dtype0*
valueB
 *  ?A
M
Const_23Const*
_output_shapes
: *
dtype0*
valueB
 *    
M
Const_24Const*
_output_shapes
: *
dtype0*
valueB
 *?O?G
M
Const_25Const*
_output_shapes
: *
dtype0*
valueB
 *    
M
Const_26Const*
_output_shapes
: *
dtype0*
valueB
 *  ?E
M
Const_27Const*
_output_shapes
: *
dtype0*
valueB
 *  ??
M
Const_28Const*
_output_shapes
: *
dtype0*
valueB
 *  ?B
?
 transform/inputs/age/PlaceholderPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
}
"transform/inputs/age/Placeholder_1Placeholder*#
_output_shapes
:?????????*
dtype0	*
shape:?????????
k
"transform/inputs/age/Placeholder_2Placeholder*
_output_shapes
:*
dtype0	*
shape:
?
+transform/inputs/F_capital-gain/PlaceholderPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
-transform/inputs/F_capital-gain/Placeholder_1Placeholder*#
_output_shapes
:?????????*
dtype0	*
shape:?????????
v
-transform/inputs/F_capital-gain/Placeholder_2Placeholder*
_output_shapes
:*
dtype0	*
shape:
?
+transform/inputs/F_capital-loss/PlaceholderPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
-transform/inputs/F_capital-loss/Placeholder_1Placeholder*#
_output_shapes
:?????????*
dtype0	*
shape:?????????
v
-transform/inputs/F_capital-loss/Placeholder_2Placeholder*
_output_shapes
:*
dtype0	*
shape:
?
&transform/inputs/education/PlaceholderPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
(transform/inputs/education/Placeholder_1Placeholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
q
(transform/inputs/education/Placeholder_2Placeholder*
_output_shapes
:*
dtype0	*
shape:
?
,transform/inputs/F_education-num/PlaceholderPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
.transform/inputs/F_education-num/Placeholder_1Placeholder*#
_output_shapes
:?????????*
dtype0	*
shape:?????????
w
.transform/inputs/F_education-num/Placeholder_2Placeholder*
_output_shapes
:*
dtype0	*
shape:
?
#transform/inputs/fnlwgt/PlaceholderPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
%transform/inputs/fnlwgt/Placeholder_1Placeholder*#
_output_shapes
:?????????*
dtype0	*
shape:?????????
n
%transform/inputs/fnlwgt/Placeholder_2Placeholder*
_output_shapes
:*
dtype0	*
shape:
?
-transform/inputs/F_hours-per-week/PlaceholderPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
/transform/inputs/F_hours-per-week/Placeholder_1Placeholder*#
_output_shapes
:?????????*
dtype0	*
shape:?????????
x
/transform/inputs/F_hours-per-week/Placeholder_2Placeholder*
_output_shapes
:*
dtype0	*
shape:
?
"transform/inputs/label/PlaceholderPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????

$transform/inputs/label/Placeholder_1Placeholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
m
$transform/inputs/label/Placeholder_2Placeholder*
_output_shapes
:*
dtype0	*
shape:
?
-transform/inputs/F_marital-status/PlaceholderPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
/transform/inputs/F_marital-status/Placeholder_1Placeholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
x
/transform/inputs/F_marital-status/Placeholder_2Placeholder*
_output_shapes
:*
dtype0	*
shape:
?
-transform/inputs/F_native-country/PlaceholderPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
/transform/inputs/F_native-country/Placeholder_1Placeholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
x
/transform/inputs/F_native-country/Placeholder_2Placeholder*
_output_shapes
:*
dtype0	*
shape:
?
'transform/inputs/occupation/PlaceholderPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
)transform/inputs/occupation/Placeholder_1Placeholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
r
)transform/inputs/occupation/Placeholder_2Placeholder*
_output_shapes
:*
dtype0	*
shape:
?
!transform/inputs/race/PlaceholderPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
~
#transform/inputs/race/Placeholder_1Placeholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
l
#transform/inputs/race/Placeholder_2Placeholder*
_output_shapes
:*
dtype0	*
shape:
?
)transform/inputs/relationship/PlaceholderPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
+transform/inputs/relationship/Placeholder_1Placeholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
t
+transform/inputs/relationship/Placeholder_2Placeholder*
_output_shapes
:*
dtype0	*
shape:
?
 transform/inputs/sex/PlaceholderPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
}
"transform/inputs/sex/Placeholder_1Placeholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
k
"transform/inputs/sex/Placeholder_2Placeholder*
_output_shapes
:*
dtype0	*
shape:
?
&transform/inputs/workclass/PlaceholderPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
(transform/inputs/workclass/Placeholder_1Placeholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
q
(transform/inputs/workclass/Placeholder_2Placeholder*
_output_shapes
:*
dtype0	*
shape:
?
,transform/inputs/inputs/age/Placeholder_copyIdentity transform/inputs/age/Placeholder*
T0	*'
_output_shapes
:?????????
?
.transform/inputs/inputs/age/Placeholder_1_copyIdentity"transform/inputs/age/Placeholder_1*
T0	*#
_output_shapes
:?????????
?
.transform/inputs/inputs/age/Placeholder_2_copyIdentity"transform/inputs/age/Placeholder_2*
T0	*
_output_shapes
:
?
7transform/inputs/inputs/F_capital-gain/Placeholder_copyIdentity+transform/inputs/F_capital-gain/Placeholder*
T0	*'
_output_shapes
:?????????
?
9transform/inputs/inputs/F_capital-gain/Placeholder_1_copyIdentity-transform/inputs/F_capital-gain/Placeholder_1*
T0	*#
_output_shapes
:?????????
?
9transform/inputs/inputs/F_capital-gain/Placeholder_2_copyIdentity-transform/inputs/F_capital-gain/Placeholder_2*
T0	*
_output_shapes
:
?
7transform/inputs/inputs/F_capital-loss/Placeholder_copyIdentity+transform/inputs/F_capital-loss/Placeholder*
T0	*'
_output_shapes
:?????????
?
9transform/inputs/inputs/F_capital-loss/Placeholder_1_copyIdentity-transform/inputs/F_capital-loss/Placeholder_1*
T0	*#
_output_shapes
:?????????
?
9transform/inputs/inputs/F_capital-loss/Placeholder_2_copyIdentity-transform/inputs/F_capital-loss/Placeholder_2*
T0	*
_output_shapes
:
?
2transform/inputs/inputs/education/Placeholder_copyIdentity&transform/inputs/education/Placeholder*
T0	*'
_output_shapes
:?????????
?
4transform/inputs/inputs/education/Placeholder_1_copyIdentity(transform/inputs/education/Placeholder_1*
T0*#
_output_shapes
:?????????
?
4transform/inputs/inputs/education/Placeholder_2_copyIdentity(transform/inputs/education/Placeholder_2*
T0	*
_output_shapes
:
?
8transform/inputs/inputs/F_education-num/Placeholder_copyIdentity,transform/inputs/F_education-num/Placeholder*
T0	*'
_output_shapes
:?????????
?
:transform/inputs/inputs/F_education-num/Placeholder_1_copyIdentity.transform/inputs/F_education-num/Placeholder_1*
T0	*#
_output_shapes
:?????????
?
:transform/inputs/inputs/F_education-num/Placeholder_2_copyIdentity.transform/inputs/F_education-num/Placeholder_2*
T0	*
_output_shapes
:
?
/transform/inputs/inputs/fnlwgt/Placeholder_copyIdentity#transform/inputs/fnlwgt/Placeholder*
T0	*'
_output_shapes
:?????????
?
1transform/inputs/inputs/fnlwgt/Placeholder_1_copyIdentity%transform/inputs/fnlwgt/Placeholder_1*
T0	*#
_output_shapes
:?????????
?
1transform/inputs/inputs/fnlwgt/Placeholder_2_copyIdentity%transform/inputs/fnlwgt/Placeholder_2*
T0	*
_output_shapes
:
?
9transform/inputs/inputs/F_hours-per-week/Placeholder_copyIdentity-transform/inputs/F_hours-per-week/Placeholder*
T0	*'
_output_shapes
:?????????
?
;transform/inputs/inputs/F_hours-per-week/Placeholder_1_copyIdentity/transform/inputs/F_hours-per-week/Placeholder_1*
T0	*#
_output_shapes
:?????????
?
;transform/inputs/inputs/F_hours-per-week/Placeholder_2_copyIdentity/transform/inputs/F_hours-per-week/Placeholder_2*
T0	*
_output_shapes
:
?
.transform/inputs/inputs/label/Placeholder_copyIdentity"transform/inputs/label/Placeholder*
T0	*'
_output_shapes
:?????????
?
0transform/inputs/inputs/label/Placeholder_1_copyIdentity$transform/inputs/label/Placeholder_1*
T0*#
_output_shapes
:?????????
?
0transform/inputs/inputs/label/Placeholder_2_copyIdentity$transform/inputs/label/Placeholder_2*
T0	*
_output_shapes
:
?
9transform/inputs/inputs/F_marital-status/Placeholder_copyIdentity-transform/inputs/F_marital-status/Placeholder*
T0	*'
_output_shapes
:?????????
?
;transform/inputs/inputs/F_marital-status/Placeholder_1_copyIdentity/transform/inputs/F_marital-status/Placeholder_1*
T0*#
_output_shapes
:?????????
?
;transform/inputs/inputs/F_marital-status/Placeholder_2_copyIdentity/transform/inputs/F_marital-status/Placeholder_2*
T0	*
_output_shapes
:
?
9transform/inputs/inputs/F_native-country/Placeholder_copyIdentity-transform/inputs/F_native-country/Placeholder*
T0	*'
_output_shapes
:?????????
?
;transform/inputs/inputs/F_native-country/Placeholder_1_copyIdentity/transform/inputs/F_native-country/Placeholder_1*
T0*#
_output_shapes
:?????????
?
;transform/inputs/inputs/F_native-country/Placeholder_2_copyIdentity/transform/inputs/F_native-country/Placeholder_2*
T0	*
_output_shapes
:
?
3transform/inputs/inputs/occupation/Placeholder_copyIdentity'transform/inputs/occupation/Placeholder*
T0	*'
_output_shapes
:?????????
?
5transform/inputs/inputs/occupation/Placeholder_1_copyIdentity)transform/inputs/occupation/Placeholder_1*
T0*#
_output_shapes
:?????????
?
5transform/inputs/inputs/occupation/Placeholder_2_copyIdentity)transform/inputs/occupation/Placeholder_2*
T0	*
_output_shapes
:
?
-transform/inputs/inputs/race/Placeholder_copyIdentity!transform/inputs/race/Placeholder*
T0	*'
_output_shapes
:?????????
?
/transform/inputs/inputs/race/Placeholder_1_copyIdentity#transform/inputs/race/Placeholder_1*
T0*#
_output_shapes
:?????????
?
/transform/inputs/inputs/race/Placeholder_2_copyIdentity#transform/inputs/race/Placeholder_2*
T0	*
_output_shapes
:
?
5transform/inputs/inputs/relationship/Placeholder_copyIdentity)transform/inputs/relationship/Placeholder*
T0	*'
_output_shapes
:?????????
?
7transform/inputs/inputs/relationship/Placeholder_1_copyIdentity+transform/inputs/relationship/Placeholder_1*
T0*#
_output_shapes
:?????????
?
7transform/inputs/inputs/relationship/Placeholder_2_copyIdentity+transform/inputs/relationship/Placeholder_2*
T0	*
_output_shapes
:
?
,transform/inputs/inputs/sex/Placeholder_copyIdentity transform/inputs/sex/Placeholder*
T0	*'
_output_shapes
:?????????
?
.transform/inputs/inputs/sex/Placeholder_1_copyIdentity"transform/inputs/sex/Placeholder_1*
T0*#
_output_shapes
:?????????
?
.transform/inputs/inputs/sex/Placeholder_2_copyIdentity"transform/inputs/sex/Placeholder_2*
T0	*
_output_shapes
:
?
2transform/inputs/inputs/workclass/Placeholder_copyIdentity&transform/inputs/workclass/Placeholder*
T0	*'
_output_shapes
:?????????
?
4transform/inputs/inputs/workclass/Placeholder_1_copyIdentity(transform/inputs/workclass/Placeholder_1*
T0*#
_output_shapes
:?????????
?
4transform/inputs/inputs/workclass/Placeholder_2_copyIdentity(transform/inputs/workclass/Placeholder_2*
T0	*
_output_shapes
:
?
transform/scale_to_0_1/CastCast1transform/inputs/inputs/fnlwgt/Placeholder_1_copy*

DstT0*

SrcT0	*
Truncate( *#
_output_shapes
:?????????
r
(transform/scale_to_0_1/min_and_max/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
?
&transform/scale_to_0_1/min_and_max/MaxMaxtransform/scale_to_0_1/Cast(transform/scale_to_0_1/min_and_max/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
?
-transform/scale_to_0_1/min_and_max/zeros_like	ZerosLiketransform/scale_to_0_1/Cast*
T0*#
_output_shapes
:?????????
?
&transform/scale_to_0_1/min_and_max/subSub-transform/scale_to_0_1/min_and_max/zeros_liketransform/scale_to_0_1/Cast*
T0*#
_output_shapes
:?????????
t
*transform/scale_to_0_1/min_and_max/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
?
(transform/scale_to_0_1/min_and_max/Max_1Max&transform/scale_to_0_1/min_and_max/sub*transform/scale_to_0_1/min_and_max/Const_1*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
k
(transform/scale_to_0_1/min_and_max/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
m
*transform/scale_to_0_1/min_and_max/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
?
7transform/scale_to_0_1/min_and_max/assert_equal_1/EqualEqual(transform/scale_to_0_1/min_and_max/Shape*transform/scale_to_0_1/min_and_max/Shape_1*
T0*
_output_shapes
: *
incompatible_shape_error(
?
7transform/scale_to_0_1/min_and_max/assert_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
?
5transform/scale_to_0_1/min_and_max/assert_equal_1/AllAll7transform/scale_to_0_1/min_and_max/assert_equal_1/Equal7transform/scale_to_0_1/min_and_max/assert_equal_1/Const*

Tidx0*
_output_shapes
: *
	keep_dims( 
?
>transform/scale_to_0_1/min_and_max/assert_equal_1/Assert/ConstConst*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:
?
@transform/scale_to_0_1/min_and_max/assert_equal_1/Assert/Const_1Const*
_output_shapes
: *
dtype0*8
value/B- B'x (scale_to_0_1/min_and_max/Shape:0) = 
?
@transform/scale_to_0_1/min_and_max/assert_equal_1/Assert/Const_2Const*
_output_shapes
: *
dtype0*:
value1B/ B)y (scale_to_0_1/min_and_max/Shape_1:0) = 
?
Ftransform/scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:
?
Ftransform/scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*8
value/B- B'x (scale_to_0_1/min_and_max/Shape:0) = 
?
Ftransform/scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert/data_3Const*
_output_shapes
: *
dtype0*:
value1B/ B)y (scale_to_0_1/min_and_max/Shape_1:0) = 
?
?transform/scale_to_0_1/min_and_max/assert_equal_1/Assert/AssertAssert5transform/scale_to_0_1/min_and_max/assert_equal_1/AllFtransform/scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert/data_0Ftransform/scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert/data_1(transform/scale_to_0_1/min_and_max/ShapeFtransform/scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert/data_3*transform/scale_to_0_1/min_and_max/Shape_1*
T	
2*
	summarize
?
+transform/scale_to_0_1/min_and_max/IdentityIdentity(transform/scale_to_0_1/min_and_max/Max_1@^transform/scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert*
T0*
_output_shapes
: 
?
-transform/scale_to_0_1/min_and_max/Identity_1Identity&transform/scale_to_0_1/min_and_max/Max@^transform/scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert*
T0*
_output_shapes
: 
o
*transform/scale_to_0_1/min_and_max/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *  ?

(transform/scale_to_0_1/min_and_max/IsInfIsInf+transform/scale_to_0_1/min_and_max/Identity*
T0*
_output_shapes
: 
?
&transform/scale_to_0_1/min_and_max/addAddV2+transform/scale_to_0_1/min_and_max/Identity*transform/scale_to_0_1/min_and_max/Const_2*
T0*
_output_shapes
: 
?
+transform/scale_to_0_1/min_and_max/SelectV2SelectV2(transform/scale_to_0_1/min_and_max/IsInf&transform/scale_to_0_1/min_and_max/add+transform/scale_to_0_1/min_and_max/Identity*
T0*
_output_shapes
: 
o
*transform/scale_to_0_1/min_and_max/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *  ?
?
*transform/scale_to_0_1/min_and_max/IsInf_1IsInf-transform/scale_to_0_1/min_and_max/Identity_1*
T0*
_output_shapes
: 
?
(transform/scale_to_0_1/min_and_max/add_1AddV2-transform/scale_to_0_1/min_and_max/Identity_1*transform/scale_to_0_1/min_and_max/Const_3*
T0*
_output_shapes
: 
?
-transform/scale_to_0_1/min_and_max/SelectV2_1SelectV2*transform/scale_to_0_1/min_and_max/IsInf_1(transform/scale_to_0_1/min_and_max/add_1-transform/scale_to_0_1/min_and_max/Identity_1*
T0*
_output_shapes
: 
o
.transform/scale_to_0_1/min_and_max/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
q
0transform/scale_to_0_1/min_and_max/Placeholder_1Placeholder*
_output_shapes
: *
dtype0*
shape: 
o
*transform/scale_to_0_1/min_and_max/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
(transform/scale_to_0_1/min_and_max/sub_1Sub*transform/scale_to_0_1/min_and_max/sub_1/xConst_19*
T0*
_output_shapes
: 
?
transform/scale_to_0_1/subSubtransform/scale_to_0_1/Cast(transform/scale_to_0_1/min_and_max/sub_1*
T0*#
_output_shapes
:?????????
x
transform/scale_to_0_1/LessLess(transform/scale_to_0_1/min_and_max/sub_1Const_20*
T0*
_output_shapes
: 
x
!transform/scale_to_0_1/zeros_like	ZerosLiketransform/scale_to_0_1/sub*
T0*#
_output_shapes
:?????????
?
transform/scale_to_0_1/Cast_1Casttransform/scale_to_0_1/Less*

DstT0*

SrcT0
*
Truncate( *
_output_shapes
: 
?
transform/scale_to_0_1/addAddV2!transform/scale_to_0_1/zeros_liketransform/scale_to_0_1/Cast_1*
T0*#
_output_shapes
:?????????
?
transform/scale_to_0_1/Cast_2Casttransform/scale_to_0_1/add*

DstT0
*

SrcT0*
Truncate( *#
_output_shapes
:?????????
x
transform/scale_to_0_1/sub_1SubConst_20(transform/scale_to_0_1/min_and_max/sub_1*
T0*
_output_shapes
: 
?
transform/scale_to_0_1/truedivRealDivtransform/scale_to_0_1/subtransform/scale_to_0_1/sub_1*
T0*#
_output_shapes
:?????????
t
transform/scale_to_0_1/SigmoidSigmoidtransform/scale_to_0_1/Cast*
T0*#
_output_shapes
:?????????
?
transform/scale_to_0_1/SelectV2SelectV2transform/scale_to_0_1/Cast_2transform/scale_to_0_1/truedivtransform/scale_to_0_1/Sigmoid*
T0*#
_output_shapes
:?????????
a
transform/scale_to_0_1/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
transform/scale_to_0_1/mulMultransform/scale_to_0_1/SelectV2transform/scale_to_0_1/mul/y*
T0*#
_output_shapes
:?????????
c
transform/scale_to_0_1/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
transform/scale_to_0_1/add_1AddV2transform/scale_to_0_1/multransform/scale_to_0_1/add_1/y*
T0*#
_output_shapes
:?????????
?
transform/scale_to_0_1_1/CastCast:transform/inputs/inputs/F_education-num/Placeholder_1_copy*

DstT0*

SrcT0	*
Truncate( *#
_output_shapes
:?????????
t
*transform/scale_to_0_1_1/min_and_max/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
?
(transform/scale_to_0_1_1/min_and_max/MaxMaxtransform/scale_to_0_1_1/Cast*transform/scale_to_0_1_1/min_and_max/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
?
/transform/scale_to_0_1_1/min_and_max/zeros_like	ZerosLiketransform/scale_to_0_1_1/Cast*
T0*#
_output_shapes
:?????????
?
(transform/scale_to_0_1_1/min_and_max/subSub/transform/scale_to_0_1_1/min_and_max/zeros_liketransform/scale_to_0_1_1/Cast*
T0*#
_output_shapes
:?????????
v
,transform/scale_to_0_1_1/min_and_max/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
?
*transform/scale_to_0_1_1/min_and_max/Max_1Max(transform/scale_to_0_1_1/min_and_max/sub,transform/scale_to_0_1_1/min_and_max/Const_1*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
m
*transform/scale_to_0_1_1/min_and_max/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
o
,transform/scale_to_0_1_1/min_and_max/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
?
9transform/scale_to_0_1_1/min_and_max/assert_equal_1/EqualEqual*transform/scale_to_0_1_1/min_and_max/Shape,transform/scale_to_0_1_1/min_and_max/Shape_1*
T0*
_output_shapes
: *
incompatible_shape_error(
?
9transform/scale_to_0_1_1/min_and_max/assert_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
?
7transform/scale_to_0_1_1/min_and_max/assert_equal_1/AllAll9transform/scale_to_0_1_1/min_and_max/assert_equal_1/Equal9transform/scale_to_0_1_1/min_and_max/assert_equal_1/Const*

Tidx0*
_output_shapes
: *
	keep_dims( 
?
@transform/scale_to_0_1_1/min_and_max/assert_equal_1/Assert/ConstConst*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:
?
Btransform/scale_to_0_1_1/min_and_max/assert_equal_1/Assert/Const_1Const*
_output_shapes
: *
dtype0*:
value1B/ B)x (scale_to_0_1_1/min_and_max/Shape:0) = 
?
Btransform/scale_to_0_1_1/min_and_max/assert_equal_1/Assert/Const_2Const*
_output_shapes
: *
dtype0*<
value3B1 B+y (scale_to_0_1_1/min_and_max/Shape_1:0) = 
?
Htransform/scale_to_0_1_1/min_and_max/assert_equal_1/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:
?
Htransform/scale_to_0_1_1/min_and_max/assert_equal_1/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*:
value1B/ B)x (scale_to_0_1_1/min_and_max/Shape:0) = 
?
Htransform/scale_to_0_1_1/min_and_max/assert_equal_1/Assert/Assert/data_3Const*
_output_shapes
: *
dtype0*<
value3B1 B+y (scale_to_0_1_1/min_and_max/Shape_1:0) = 
?
Atransform/scale_to_0_1_1/min_and_max/assert_equal_1/Assert/AssertAssert7transform/scale_to_0_1_1/min_and_max/assert_equal_1/AllHtransform/scale_to_0_1_1/min_and_max/assert_equal_1/Assert/Assert/data_0Htransform/scale_to_0_1_1/min_and_max/assert_equal_1/Assert/Assert/data_1*transform/scale_to_0_1_1/min_and_max/ShapeHtransform/scale_to_0_1_1/min_and_max/assert_equal_1/Assert/Assert/data_3,transform/scale_to_0_1_1/min_and_max/Shape_1*
T	
2*
	summarize
?
-transform/scale_to_0_1_1/min_and_max/IdentityIdentity*transform/scale_to_0_1_1/min_and_max/Max_1B^transform/scale_to_0_1_1/min_and_max/assert_equal_1/Assert/Assert*
T0*
_output_shapes
: 
?
/transform/scale_to_0_1_1/min_and_max/Identity_1Identity(transform/scale_to_0_1_1/min_and_max/MaxB^transform/scale_to_0_1_1/min_and_max/assert_equal_1/Assert/Assert*
T0*
_output_shapes
: 
q
,transform/scale_to_0_1_1/min_and_max/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *  ?
?
*transform/scale_to_0_1_1/min_and_max/IsInfIsInf-transform/scale_to_0_1_1/min_and_max/Identity*
T0*
_output_shapes
: 
?
(transform/scale_to_0_1_1/min_and_max/addAddV2-transform/scale_to_0_1_1/min_and_max/Identity,transform/scale_to_0_1_1/min_and_max/Const_2*
T0*
_output_shapes
: 
?
-transform/scale_to_0_1_1/min_and_max/SelectV2SelectV2*transform/scale_to_0_1_1/min_and_max/IsInf(transform/scale_to_0_1_1/min_and_max/add-transform/scale_to_0_1_1/min_and_max/Identity*
T0*
_output_shapes
: 
q
,transform/scale_to_0_1_1/min_and_max/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *  ?
?
,transform/scale_to_0_1_1/min_and_max/IsInf_1IsInf/transform/scale_to_0_1_1/min_and_max/Identity_1*
T0*
_output_shapes
: 
?
*transform/scale_to_0_1_1/min_and_max/add_1AddV2/transform/scale_to_0_1_1/min_and_max/Identity_1,transform/scale_to_0_1_1/min_and_max/Const_3*
T0*
_output_shapes
: 
?
/transform/scale_to_0_1_1/min_and_max/SelectV2_1SelectV2,transform/scale_to_0_1_1/min_and_max/IsInf_1*transform/scale_to_0_1_1/min_and_max/add_1/transform/scale_to_0_1_1/min_and_max/Identity_1*
T0*
_output_shapes
: 
q
0transform/scale_to_0_1_1/min_and_max/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
s
2transform/scale_to_0_1_1/min_and_max/Placeholder_1Placeholder*
_output_shapes
: *
dtype0*
shape: 
q
,transform/scale_to_0_1_1/min_and_max/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
*transform/scale_to_0_1_1/min_and_max/sub_1Sub,transform/scale_to_0_1_1/min_and_max/sub_1/xConst_21*
T0*
_output_shapes
: 
?
transform/scale_to_0_1_1/subSubtransform/scale_to_0_1_1/Cast*transform/scale_to_0_1_1/min_and_max/sub_1*
T0*#
_output_shapes
:?????????
|
transform/scale_to_0_1_1/LessLess*transform/scale_to_0_1_1/min_and_max/sub_1Const_22*
T0*
_output_shapes
: 
|
#transform/scale_to_0_1_1/zeros_like	ZerosLiketransform/scale_to_0_1_1/sub*
T0*#
_output_shapes
:?????????
?
transform/scale_to_0_1_1/Cast_1Casttransform/scale_to_0_1_1/Less*

DstT0*

SrcT0
*
Truncate( *
_output_shapes
: 
?
transform/scale_to_0_1_1/addAddV2#transform/scale_to_0_1_1/zeros_liketransform/scale_to_0_1_1/Cast_1*
T0*#
_output_shapes
:?????????
?
transform/scale_to_0_1_1/Cast_2Casttransform/scale_to_0_1_1/add*

DstT0
*

SrcT0*
Truncate( *#
_output_shapes
:?????????
|
transform/scale_to_0_1_1/sub_1SubConst_22*transform/scale_to_0_1_1/min_and_max/sub_1*
T0*
_output_shapes
: 
?
 transform/scale_to_0_1_1/truedivRealDivtransform/scale_to_0_1_1/subtransform/scale_to_0_1_1/sub_1*
T0*#
_output_shapes
:?????????
x
 transform/scale_to_0_1_1/SigmoidSigmoidtransform/scale_to_0_1_1/Cast*
T0*#
_output_shapes
:?????????
?
!transform/scale_to_0_1_1/SelectV2SelectV2transform/scale_to_0_1_1/Cast_2 transform/scale_to_0_1_1/truediv transform/scale_to_0_1_1/Sigmoid*
T0*#
_output_shapes
:?????????
c
transform/scale_to_0_1_1/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
transform/scale_to_0_1_1/mulMul!transform/scale_to_0_1_1/SelectV2transform/scale_to_0_1_1/mul/y*
T0*#
_output_shapes
:?????????
e
 transform/scale_to_0_1_1/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
transform/scale_to_0_1_1/add_1AddV2transform/scale_to_0_1_1/mul transform/scale_to_0_1_1/add_1/y*
T0*#
_output_shapes
:?????????
?
transform/scale_to_0_1_2/CastCast9transform/inputs/inputs/F_capital-gain/Placeholder_1_copy*

DstT0*

SrcT0	*
Truncate( *#
_output_shapes
:?????????
t
*transform/scale_to_0_1_2/min_and_max/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
?
(transform/scale_to_0_1_2/min_and_max/MaxMaxtransform/scale_to_0_1_2/Cast*transform/scale_to_0_1_2/min_and_max/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
?
/transform/scale_to_0_1_2/min_and_max/zeros_like	ZerosLiketransform/scale_to_0_1_2/Cast*
T0*#
_output_shapes
:?????????
?
(transform/scale_to_0_1_2/min_and_max/subSub/transform/scale_to_0_1_2/min_and_max/zeros_liketransform/scale_to_0_1_2/Cast*
T0*#
_output_shapes
:?????????
v
,transform/scale_to_0_1_2/min_and_max/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
?
*transform/scale_to_0_1_2/min_and_max/Max_1Max(transform/scale_to_0_1_2/min_and_max/sub,transform/scale_to_0_1_2/min_and_max/Const_1*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
m
*transform/scale_to_0_1_2/min_and_max/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
o
,transform/scale_to_0_1_2/min_and_max/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
?
9transform/scale_to_0_1_2/min_and_max/assert_equal_1/EqualEqual*transform/scale_to_0_1_2/min_and_max/Shape,transform/scale_to_0_1_2/min_and_max/Shape_1*
T0*
_output_shapes
: *
incompatible_shape_error(
?
9transform/scale_to_0_1_2/min_and_max/assert_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
?
7transform/scale_to_0_1_2/min_and_max/assert_equal_1/AllAll9transform/scale_to_0_1_2/min_and_max/assert_equal_1/Equal9transform/scale_to_0_1_2/min_and_max/assert_equal_1/Const*

Tidx0*
_output_shapes
: *
	keep_dims( 
?
@transform/scale_to_0_1_2/min_and_max/assert_equal_1/Assert/ConstConst*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:
?
Btransform/scale_to_0_1_2/min_and_max/assert_equal_1/Assert/Const_1Const*
_output_shapes
: *
dtype0*:
value1B/ B)x (scale_to_0_1_2/min_and_max/Shape:0) = 
?
Btransform/scale_to_0_1_2/min_and_max/assert_equal_1/Assert/Const_2Const*
_output_shapes
: *
dtype0*<
value3B1 B+y (scale_to_0_1_2/min_and_max/Shape_1:0) = 
?
Htransform/scale_to_0_1_2/min_and_max/assert_equal_1/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:
?
Htransform/scale_to_0_1_2/min_and_max/assert_equal_1/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*:
value1B/ B)x (scale_to_0_1_2/min_and_max/Shape:0) = 
?
Htransform/scale_to_0_1_2/min_and_max/assert_equal_1/Assert/Assert/data_3Const*
_output_shapes
: *
dtype0*<
value3B1 B+y (scale_to_0_1_2/min_and_max/Shape_1:0) = 
?
Atransform/scale_to_0_1_2/min_and_max/assert_equal_1/Assert/AssertAssert7transform/scale_to_0_1_2/min_and_max/assert_equal_1/AllHtransform/scale_to_0_1_2/min_and_max/assert_equal_1/Assert/Assert/data_0Htransform/scale_to_0_1_2/min_and_max/assert_equal_1/Assert/Assert/data_1*transform/scale_to_0_1_2/min_and_max/ShapeHtransform/scale_to_0_1_2/min_and_max/assert_equal_1/Assert/Assert/data_3,transform/scale_to_0_1_2/min_and_max/Shape_1*
T	
2*
	summarize
?
-transform/scale_to_0_1_2/min_and_max/IdentityIdentity*transform/scale_to_0_1_2/min_and_max/Max_1B^transform/scale_to_0_1_2/min_and_max/assert_equal_1/Assert/Assert*
T0*
_output_shapes
: 
?
/transform/scale_to_0_1_2/min_and_max/Identity_1Identity(transform/scale_to_0_1_2/min_and_max/MaxB^transform/scale_to_0_1_2/min_and_max/assert_equal_1/Assert/Assert*
T0*
_output_shapes
: 
q
,transform/scale_to_0_1_2/min_and_max/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *  ?
?
*transform/scale_to_0_1_2/min_and_max/IsInfIsInf-transform/scale_to_0_1_2/min_and_max/Identity*
T0*
_output_shapes
: 
?
(transform/scale_to_0_1_2/min_and_max/addAddV2-transform/scale_to_0_1_2/min_and_max/Identity,transform/scale_to_0_1_2/min_and_max/Const_2*
T0*
_output_shapes
: 
?
-transform/scale_to_0_1_2/min_and_max/SelectV2SelectV2*transform/scale_to_0_1_2/min_and_max/IsInf(transform/scale_to_0_1_2/min_and_max/add-transform/scale_to_0_1_2/min_and_max/Identity*
T0*
_output_shapes
: 
q
,transform/scale_to_0_1_2/min_and_max/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *  ?
?
,transform/scale_to_0_1_2/min_and_max/IsInf_1IsInf/transform/scale_to_0_1_2/min_and_max/Identity_1*
T0*
_output_shapes
: 
?
*transform/scale_to_0_1_2/min_and_max/add_1AddV2/transform/scale_to_0_1_2/min_and_max/Identity_1,transform/scale_to_0_1_2/min_and_max/Const_3*
T0*
_output_shapes
: 
?
/transform/scale_to_0_1_2/min_and_max/SelectV2_1SelectV2,transform/scale_to_0_1_2/min_and_max/IsInf_1*transform/scale_to_0_1_2/min_and_max/add_1/transform/scale_to_0_1_2/min_and_max/Identity_1*
T0*
_output_shapes
: 
q
0transform/scale_to_0_1_2/min_and_max/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
s
2transform/scale_to_0_1_2/min_and_max/Placeholder_1Placeholder*
_output_shapes
: *
dtype0*
shape: 
q
,transform/scale_to_0_1_2/min_and_max/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
*transform/scale_to_0_1_2/min_and_max/sub_1Sub,transform/scale_to_0_1_2/min_and_max/sub_1/xConst_23*
T0*
_output_shapes
: 
?
transform/scale_to_0_1_2/subSubtransform/scale_to_0_1_2/Cast*transform/scale_to_0_1_2/min_and_max/sub_1*
T0*#
_output_shapes
:?????????
|
transform/scale_to_0_1_2/LessLess*transform/scale_to_0_1_2/min_and_max/sub_1Const_24*
T0*
_output_shapes
: 
|
#transform/scale_to_0_1_2/zeros_like	ZerosLiketransform/scale_to_0_1_2/sub*
T0*#
_output_shapes
:?????????
?
transform/scale_to_0_1_2/Cast_1Casttransform/scale_to_0_1_2/Less*

DstT0*

SrcT0
*
Truncate( *
_output_shapes
: 
?
transform/scale_to_0_1_2/addAddV2#transform/scale_to_0_1_2/zeros_liketransform/scale_to_0_1_2/Cast_1*
T0*#
_output_shapes
:?????????
?
transform/scale_to_0_1_2/Cast_2Casttransform/scale_to_0_1_2/add*

DstT0
*

SrcT0*
Truncate( *#
_output_shapes
:?????????
|
transform/scale_to_0_1_2/sub_1SubConst_24*transform/scale_to_0_1_2/min_and_max/sub_1*
T0*
_output_shapes
: 
?
 transform/scale_to_0_1_2/truedivRealDivtransform/scale_to_0_1_2/subtransform/scale_to_0_1_2/sub_1*
T0*#
_output_shapes
:?????????
x
 transform/scale_to_0_1_2/SigmoidSigmoidtransform/scale_to_0_1_2/Cast*
T0*#
_output_shapes
:?????????
?
!transform/scale_to_0_1_2/SelectV2SelectV2transform/scale_to_0_1_2/Cast_2 transform/scale_to_0_1_2/truediv transform/scale_to_0_1_2/Sigmoid*
T0*#
_output_shapes
:?????????
c
transform/scale_to_0_1_2/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
transform/scale_to_0_1_2/mulMul!transform/scale_to_0_1_2/SelectV2transform/scale_to_0_1_2/mul/y*
T0*#
_output_shapes
:?????????
e
 transform/scale_to_0_1_2/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
transform/scale_to_0_1_2/add_1AddV2transform/scale_to_0_1_2/mul transform/scale_to_0_1_2/add_1/y*
T0*#
_output_shapes
:?????????
?
transform/scale_to_0_1_3/CastCast9transform/inputs/inputs/F_capital-loss/Placeholder_1_copy*

DstT0*

SrcT0	*
Truncate( *#
_output_shapes
:?????????
t
*transform/scale_to_0_1_3/min_and_max/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
?
(transform/scale_to_0_1_3/min_and_max/MaxMaxtransform/scale_to_0_1_3/Cast*transform/scale_to_0_1_3/min_and_max/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
?
/transform/scale_to_0_1_3/min_and_max/zeros_like	ZerosLiketransform/scale_to_0_1_3/Cast*
T0*#
_output_shapes
:?????????
?
(transform/scale_to_0_1_3/min_and_max/subSub/transform/scale_to_0_1_3/min_and_max/zeros_liketransform/scale_to_0_1_3/Cast*
T0*#
_output_shapes
:?????????
v
,transform/scale_to_0_1_3/min_and_max/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
?
*transform/scale_to_0_1_3/min_and_max/Max_1Max(transform/scale_to_0_1_3/min_and_max/sub,transform/scale_to_0_1_3/min_and_max/Const_1*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
m
*transform/scale_to_0_1_3/min_and_max/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
o
,transform/scale_to_0_1_3/min_and_max/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
?
9transform/scale_to_0_1_3/min_and_max/assert_equal_1/EqualEqual*transform/scale_to_0_1_3/min_and_max/Shape,transform/scale_to_0_1_3/min_and_max/Shape_1*
T0*
_output_shapes
: *
incompatible_shape_error(
?
9transform/scale_to_0_1_3/min_and_max/assert_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
?
7transform/scale_to_0_1_3/min_and_max/assert_equal_1/AllAll9transform/scale_to_0_1_3/min_and_max/assert_equal_1/Equal9transform/scale_to_0_1_3/min_and_max/assert_equal_1/Const*

Tidx0*
_output_shapes
: *
	keep_dims( 
?
@transform/scale_to_0_1_3/min_and_max/assert_equal_1/Assert/ConstConst*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:
?
Btransform/scale_to_0_1_3/min_and_max/assert_equal_1/Assert/Const_1Const*
_output_shapes
: *
dtype0*:
value1B/ B)x (scale_to_0_1_3/min_and_max/Shape:0) = 
?
Btransform/scale_to_0_1_3/min_and_max/assert_equal_1/Assert/Const_2Const*
_output_shapes
: *
dtype0*<
value3B1 B+y (scale_to_0_1_3/min_and_max/Shape_1:0) = 
?
Htransform/scale_to_0_1_3/min_and_max/assert_equal_1/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:
?
Htransform/scale_to_0_1_3/min_and_max/assert_equal_1/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*:
value1B/ B)x (scale_to_0_1_3/min_and_max/Shape:0) = 
?
Htransform/scale_to_0_1_3/min_and_max/assert_equal_1/Assert/Assert/data_3Const*
_output_shapes
: *
dtype0*<
value3B1 B+y (scale_to_0_1_3/min_and_max/Shape_1:0) = 
?
Atransform/scale_to_0_1_3/min_and_max/assert_equal_1/Assert/AssertAssert7transform/scale_to_0_1_3/min_and_max/assert_equal_1/AllHtransform/scale_to_0_1_3/min_and_max/assert_equal_1/Assert/Assert/data_0Htransform/scale_to_0_1_3/min_and_max/assert_equal_1/Assert/Assert/data_1*transform/scale_to_0_1_3/min_and_max/ShapeHtransform/scale_to_0_1_3/min_and_max/assert_equal_1/Assert/Assert/data_3,transform/scale_to_0_1_3/min_and_max/Shape_1*
T	
2*
	summarize
?
-transform/scale_to_0_1_3/min_and_max/IdentityIdentity*transform/scale_to_0_1_3/min_and_max/Max_1B^transform/scale_to_0_1_3/min_and_max/assert_equal_1/Assert/Assert*
T0*
_output_shapes
: 
?
/transform/scale_to_0_1_3/min_and_max/Identity_1Identity(transform/scale_to_0_1_3/min_and_max/MaxB^transform/scale_to_0_1_3/min_and_max/assert_equal_1/Assert/Assert*
T0*
_output_shapes
: 
q
,transform/scale_to_0_1_3/min_and_max/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *  ?
?
*transform/scale_to_0_1_3/min_and_max/IsInfIsInf-transform/scale_to_0_1_3/min_and_max/Identity*
T0*
_output_shapes
: 
?
(transform/scale_to_0_1_3/min_and_max/addAddV2-transform/scale_to_0_1_3/min_and_max/Identity,transform/scale_to_0_1_3/min_and_max/Const_2*
T0*
_output_shapes
: 
?
-transform/scale_to_0_1_3/min_and_max/SelectV2SelectV2*transform/scale_to_0_1_3/min_and_max/IsInf(transform/scale_to_0_1_3/min_and_max/add-transform/scale_to_0_1_3/min_and_max/Identity*
T0*
_output_shapes
: 
q
,transform/scale_to_0_1_3/min_and_max/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *  ?
?
,transform/scale_to_0_1_3/min_and_max/IsInf_1IsInf/transform/scale_to_0_1_3/min_and_max/Identity_1*
T0*
_output_shapes
: 
?
*transform/scale_to_0_1_3/min_and_max/add_1AddV2/transform/scale_to_0_1_3/min_and_max/Identity_1,transform/scale_to_0_1_3/min_and_max/Const_3*
T0*
_output_shapes
: 
?
/transform/scale_to_0_1_3/min_and_max/SelectV2_1SelectV2,transform/scale_to_0_1_3/min_and_max/IsInf_1*transform/scale_to_0_1_3/min_and_max/add_1/transform/scale_to_0_1_3/min_and_max/Identity_1*
T0*
_output_shapes
: 
q
0transform/scale_to_0_1_3/min_and_max/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
s
2transform/scale_to_0_1_3/min_and_max/Placeholder_1Placeholder*
_output_shapes
: *
dtype0*
shape: 
q
,transform/scale_to_0_1_3/min_and_max/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
*transform/scale_to_0_1_3/min_and_max/sub_1Sub,transform/scale_to_0_1_3/min_and_max/sub_1/xConst_25*
T0*
_output_shapes
: 
?
transform/scale_to_0_1_3/subSubtransform/scale_to_0_1_3/Cast*transform/scale_to_0_1_3/min_and_max/sub_1*
T0*#
_output_shapes
:?????????
|
transform/scale_to_0_1_3/LessLess*transform/scale_to_0_1_3/min_and_max/sub_1Const_26*
T0*
_output_shapes
: 
|
#transform/scale_to_0_1_3/zeros_like	ZerosLiketransform/scale_to_0_1_3/sub*
T0*#
_output_shapes
:?????????
?
transform/scale_to_0_1_3/Cast_1Casttransform/scale_to_0_1_3/Less*

DstT0*

SrcT0
*
Truncate( *
_output_shapes
: 
?
transform/scale_to_0_1_3/addAddV2#transform/scale_to_0_1_3/zeros_liketransform/scale_to_0_1_3/Cast_1*
T0*#
_output_shapes
:?????????
?
transform/scale_to_0_1_3/Cast_2Casttransform/scale_to_0_1_3/add*

DstT0
*

SrcT0*
Truncate( *#
_output_shapes
:?????????
|
transform/scale_to_0_1_3/sub_1SubConst_26*transform/scale_to_0_1_3/min_and_max/sub_1*
T0*
_output_shapes
: 
?
 transform/scale_to_0_1_3/truedivRealDivtransform/scale_to_0_1_3/subtransform/scale_to_0_1_3/sub_1*
T0*#
_output_shapes
:?????????
x
 transform/scale_to_0_1_3/SigmoidSigmoidtransform/scale_to_0_1_3/Cast*
T0*#
_output_shapes
:?????????
?
!transform/scale_to_0_1_3/SelectV2SelectV2transform/scale_to_0_1_3/Cast_2 transform/scale_to_0_1_3/truediv transform/scale_to_0_1_3/Sigmoid*
T0*#
_output_shapes
:?????????
c
transform/scale_to_0_1_3/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
transform/scale_to_0_1_3/mulMul!transform/scale_to_0_1_3/SelectV2transform/scale_to_0_1_3/mul/y*
T0*#
_output_shapes
:?????????
e
 transform/scale_to_0_1_3/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
transform/scale_to_0_1_3/add_1AddV2transform/scale_to_0_1_3/mul transform/scale_to_0_1_3/add_1/y*
T0*#
_output_shapes
:?????????
?
transform/scale_to_0_1_4/CastCast;transform/inputs/inputs/F_hours-per-week/Placeholder_1_copy*

DstT0*

SrcT0	*
Truncate( *#
_output_shapes
:?????????
t
*transform/scale_to_0_1_4/min_and_max/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
?
(transform/scale_to_0_1_4/min_and_max/MaxMaxtransform/scale_to_0_1_4/Cast*transform/scale_to_0_1_4/min_and_max/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
?
/transform/scale_to_0_1_4/min_and_max/zeros_like	ZerosLiketransform/scale_to_0_1_4/Cast*
T0*#
_output_shapes
:?????????
?
(transform/scale_to_0_1_4/min_and_max/subSub/transform/scale_to_0_1_4/min_and_max/zeros_liketransform/scale_to_0_1_4/Cast*
T0*#
_output_shapes
:?????????
v
,transform/scale_to_0_1_4/min_and_max/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
?
*transform/scale_to_0_1_4/min_and_max/Max_1Max(transform/scale_to_0_1_4/min_and_max/sub,transform/scale_to_0_1_4/min_and_max/Const_1*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
m
*transform/scale_to_0_1_4/min_and_max/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
o
,transform/scale_to_0_1_4/min_and_max/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
?
9transform/scale_to_0_1_4/min_and_max/assert_equal_1/EqualEqual*transform/scale_to_0_1_4/min_and_max/Shape,transform/scale_to_0_1_4/min_and_max/Shape_1*
T0*
_output_shapes
: *
incompatible_shape_error(
?
9transform/scale_to_0_1_4/min_and_max/assert_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
?
7transform/scale_to_0_1_4/min_and_max/assert_equal_1/AllAll9transform/scale_to_0_1_4/min_and_max/assert_equal_1/Equal9transform/scale_to_0_1_4/min_and_max/assert_equal_1/Const*

Tidx0*
_output_shapes
: *
	keep_dims( 
?
@transform/scale_to_0_1_4/min_and_max/assert_equal_1/Assert/ConstConst*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:
?
Btransform/scale_to_0_1_4/min_and_max/assert_equal_1/Assert/Const_1Const*
_output_shapes
: *
dtype0*:
value1B/ B)x (scale_to_0_1_4/min_and_max/Shape:0) = 
?
Btransform/scale_to_0_1_4/min_and_max/assert_equal_1/Assert/Const_2Const*
_output_shapes
: *
dtype0*<
value3B1 B+y (scale_to_0_1_4/min_and_max/Shape_1:0) = 
?
Htransform/scale_to_0_1_4/min_and_max/assert_equal_1/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:
?
Htransform/scale_to_0_1_4/min_and_max/assert_equal_1/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*:
value1B/ B)x (scale_to_0_1_4/min_and_max/Shape:0) = 
?
Htransform/scale_to_0_1_4/min_and_max/assert_equal_1/Assert/Assert/data_3Const*
_output_shapes
: *
dtype0*<
value3B1 B+y (scale_to_0_1_4/min_and_max/Shape_1:0) = 
?
Atransform/scale_to_0_1_4/min_and_max/assert_equal_1/Assert/AssertAssert7transform/scale_to_0_1_4/min_and_max/assert_equal_1/AllHtransform/scale_to_0_1_4/min_and_max/assert_equal_1/Assert/Assert/data_0Htransform/scale_to_0_1_4/min_and_max/assert_equal_1/Assert/Assert/data_1*transform/scale_to_0_1_4/min_and_max/ShapeHtransform/scale_to_0_1_4/min_and_max/assert_equal_1/Assert/Assert/data_3,transform/scale_to_0_1_4/min_and_max/Shape_1*
T	
2*
	summarize
?
-transform/scale_to_0_1_4/min_and_max/IdentityIdentity*transform/scale_to_0_1_4/min_and_max/Max_1B^transform/scale_to_0_1_4/min_and_max/assert_equal_1/Assert/Assert*
T0*
_output_shapes
: 
?
/transform/scale_to_0_1_4/min_and_max/Identity_1Identity(transform/scale_to_0_1_4/min_and_max/MaxB^transform/scale_to_0_1_4/min_and_max/assert_equal_1/Assert/Assert*
T0*
_output_shapes
: 
q
,transform/scale_to_0_1_4/min_and_max/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *  ?
?
*transform/scale_to_0_1_4/min_and_max/IsInfIsInf-transform/scale_to_0_1_4/min_and_max/Identity*
T0*
_output_shapes
: 
?
(transform/scale_to_0_1_4/min_and_max/addAddV2-transform/scale_to_0_1_4/min_and_max/Identity,transform/scale_to_0_1_4/min_and_max/Const_2*
T0*
_output_shapes
: 
?
-transform/scale_to_0_1_4/min_and_max/SelectV2SelectV2*transform/scale_to_0_1_4/min_and_max/IsInf(transform/scale_to_0_1_4/min_and_max/add-transform/scale_to_0_1_4/min_and_max/Identity*
T0*
_output_shapes
: 
q
,transform/scale_to_0_1_4/min_and_max/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *  ?
?
,transform/scale_to_0_1_4/min_and_max/IsInf_1IsInf/transform/scale_to_0_1_4/min_and_max/Identity_1*
T0*
_output_shapes
: 
?
*transform/scale_to_0_1_4/min_and_max/add_1AddV2/transform/scale_to_0_1_4/min_and_max/Identity_1,transform/scale_to_0_1_4/min_and_max/Const_3*
T0*
_output_shapes
: 
?
/transform/scale_to_0_1_4/min_and_max/SelectV2_1SelectV2,transform/scale_to_0_1_4/min_and_max/IsInf_1*transform/scale_to_0_1_4/min_and_max/add_1/transform/scale_to_0_1_4/min_and_max/Identity_1*
T0*
_output_shapes
: 
q
0transform/scale_to_0_1_4/min_and_max/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
s
2transform/scale_to_0_1_4/min_and_max/Placeholder_1Placeholder*
_output_shapes
: *
dtype0*
shape: 
q
,transform/scale_to_0_1_4/min_and_max/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
*transform/scale_to_0_1_4/min_and_max/sub_1Sub,transform/scale_to_0_1_4/min_and_max/sub_1/xConst_27*
T0*
_output_shapes
: 
?
transform/scale_to_0_1_4/subSubtransform/scale_to_0_1_4/Cast*transform/scale_to_0_1_4/min_and_max/sub_1*
T0*#
_output_shapes
:?????????
|
transform/scale_to_0_1_4/LessLess*transform/scale_to_0_1_4/min_and_max/sub_1Const_28*
T0*
_output_shapes
: 
|
#transform/scale_to_0_1_4/zeros_like	ZerosLiketransform/scale_to_0_1_4/sub*
T0*#
_output_shapes
:?????????
?
transform/scale_to_0_1_4/Cast_1Casttransform/scale_to_0_1_4/Less*

DstT0*

SrcT0
*
Truncate( *
_output_shapes
: 
?
transform/scale_to_0_1_4/addAddV2#transform/scale_to_0_1_4/zeros_liketransform/scale_to_0_1_4/Cast_1*
T0*#
_output_shapes
:?????????
?
transform/scale_to_0_1_4/Cast_2Casttransform/scale_to_0_1_4/add*

DstT0
*

SrcT0*
Truncate( *#
_output_shapes
:?????????
|
transform/scale_to_0_1_4/sub_1SubConst_28*transform/scale_to_0_1_4/min_and_max/sub_1*
T0*
_output_shapes
: 
?
 transform/scale_to_0_1_4/truedivRealDivtransform/scale_to_0_1_4/subtransform/scale_to_0_1_4/sub_1*
T0*#
_output_shapes
:?????????
x
 transform/scale_to_0_1_4/SigmoidSigmoidtransform/scale_to_0_1_4/Cast*
T0*#
_output_shapes
:?????????
?
!transform/scale_to_0_1_4/SelectV2SelectV2transform/scale_to_0_1_4/Cast_2 transform/scale_to_0_1_4/truediv transform/scale_to_0_1_4/Sigmoid*
T0*#
_output_shapes
:?????????
c
transform/scale_to_0_1_4/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
transform/scale_to_0_1_4/mulMul!transform/scale_to_0_1_4/SelectV2transform/scale_to_0_1_4/mul/y*
T0*#
_output_shapes
:?????????
e
 transform/scale_to_0_1_4/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
transform/scale_to_0_1_4/add_1AddV2transform/scale_to_0_1_4/mul transform/scale_to_0_1_4/add_1/y*
T0*#
_output_shapes
:?????????
?
)transform/bucketize/quantiles/PlaceholderPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
r
'transform/bucketize/quantiles/sort/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????
Y
&transform/bucketize/quantiles/sort/NegNegConst*
T0*
_output_shapes
:
?
(transform/bucketize/quantiles/sort/ShapeShape&transform/bucketize/quantiles/sort/Neg*
T0*
_output_shapes
:*
out_type0
?
6transform/bucketize/quantiles/sort/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
8transform/bucketize/quantiles/sort/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
?
8transform/bucketize/quantiles/sort/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
0transform/bucketize/quantiles/sort/strided_sliceStridedSlice(transform/bucketize/quantiles/sort/Shape6transform/bucketize/quantiles/sort/strided_slice/stack8transform/bucketize/quantiles/sort/strided_slice/stack_18transform/bucketize/quantiles/sort/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
i
'transform/bucketize/quantiles/sort/RankConst*
_output_shapes
: *
dtype0*
value	B :
?
)transform/bucketize/quantiles/sort/TopKV2TopKV2&transform/bucketize/quantiles/sort/Neg0transform/bucketize/quantiles/sort/strided_slice*
T0* 
_output_shapes
::*
sorted(

(transform/bucketize/quantiles/sort/Neg_1Neg)transform/bucketize/quantiles/sort/TopKV2*
T0*
_output_shapes
:
n
,transform/bucketize/quantiles/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
?
(transform/bucketize/quantiles/ExpandDims
ExpandDims(transform/bucketize/quantiles/sort/Neg_1,transform/bucketize/quantiles/ExpandDims/dim*
T0*

Tdim0*
_output_shapes

:
t
)transform/bucketize/quantiles/sort_1/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
(transform/bucketize/quantiles/sort_1/NegNeg(transform/bucketize/quantiles/ExpandDims*
T0*
_output_shapes

:
?
*transform/bucketize/quantiles/sort_1/ShapeShape(transform/bucketize/quantiles/sort_1/Neg*
T0*
_output_shapes
:*
out_type0
?
8transform/bucketize/quantiles/sort_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
:transform/bucketize/quantiles/sort_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
?
:transform/bucketize/quantiles/sort_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
2transform/bucketize/quantiles/sort_1/strided_sliceStridedSlice*transform/bucketize/quantiles/sort_1/Shape8transform/bucketize/quantiles/sort_1/strided_slice/stack:transform/bucketize/quantiles/sort_1/strided_slice/stack_1:transform/bucketize/quantiles/sort_1/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
k
)transform/bucketize/quantiles/sort_1/RankConst*
_output_shapes
: *
dtype0*
value	B :
?
+transform/bucketize/quantiles/sort_1/TopKV2TopKV2(transform/bucketize/quantiles/sort_1/Neg2transform/bucketize/quantiles/sort_1/strided_slice*
T0*(
_output_shapes
::*
sorted(
?
*transform/bucketize/quantiles/sort_1/Neg_1Neg+transform/bucketize/quantiles/sort_1/TopKV2*
T0*
_output_shapes

:
f
$transform/bucketize/assert_rank/rankConst*
_output_shapes
: *
dtype0*
value	B :
?
%transform/bucketize/assert_rank/ShapeShape*transform/bucketize/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:*
out_type0
V
Ntransform/bucketize/assert_rank/assert_type/statically_determined_correct_typeNoOp
G
?transform/bucketize/assert_rank/static_checks_determined_all_okNoOp
?
@transform/bucketize/apply_buckets/assign_buckets_all_shapes/CastCast.transform/inputs/inputs/age/Placeholder_1_copy*

DstT0*

SrcT0	*
Truncate( *#
_output_shapes
:?????????
?
Ptransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ShapeShape*transform/bucketize/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:*
out_type0
?
^transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?
`transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
`transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Xtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_sliceStridedSlicePtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Shape^transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack`transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1`transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
?
Otransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastCastXtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice*

DstT0	*

SrcT0*
Truncate( *
_output_shapes
: 
?
Ntransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/NegNeg*transform/bucketize/quantiles/sort_1/Neg_1*
T0*
_output_shapes

:
?
Ytransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
Ttransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2	ReverseV2Ntransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/NegYtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axis*
T0*

Tidx0*
_output_shapes

:
?
Ptransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Neg@transform/bucketize/apply_buckets/assign_buckets_all_shapes/Cast*
T0*#
_output_shapes
:?????????
?
Ptransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
?
Ntransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/MaxMaxPtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Ptransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
?
\transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0PackNtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Max*
N*
T0*
_output_shapes
:*

axis 
?
Ztransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Pack\transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0*
N*
T0*
_output_shapes

:*

axis 
?
Vtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
Qtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concatConcatV2Ttransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2Ztransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Vtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axis*
N*
T0*

Tidx0*
_output_shapes

:
?
Ptransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2Neg@transform/bucketize/apply_buckets/assign_buckets_all_shapes/Cast*
T0*#
_output_shapes
:?????????
?
Rtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstackUnpackQtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat*
T0*
_output_shapes
:*

axis *	
num
?
`transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketizeBoostedTreesBucketizePtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2Rtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstack*#
_output_shapes
:?????????*
num_features
?
Qtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1Cast`transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketize*

DstT0	*

SrcT0*
Truncate( *#
_output_shapes
:?????????
?
Ntransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/SubSubOtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastQtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1*
T0	*#
_output_shapes
:?????????
i
'transform/bucketize/apply_buckets/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
'transform/bucketize/apply_buckets/ShapeShape*transform/bucketize/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:*
out_type0

5transform/bucketize/apply_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?
7transform/bucketize/apply_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
7transform/bucketize/apply_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
/transform/bucketize/apply_buckets/strided_sliceStridedSlice'transform/bucketize/apply_buckets/Shape5transform/bucketize/apply_buckets/strided_slice/stack7transform/bucketize/apply_buckets/strided_slice/stack_17transform/bucketize/apply_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
?
?transform/compute_and_apply_vocabulary/vocabulary/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
9transform/compute_and_apply_vocabulary/vocabulary/ReshapeReshape4transform/inputs/inputs/education/Placeholder_1_copy?transform/compute_and_apply_vocabulary/vocabulary/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:?????????
?
stransform/compute_and_apply_vocabulary/vocabulary/vocab_compute_and_apply_vocabulary_vocabulary_unpruned_vocab_sizePlaceholder*
_output_shapes
: *
dtype0	*
shape: 
~
=transform/compute_and_apply_vocabulary/vocabulary/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
8transform/compute_and_apply_vocabulary/apply_vocab/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
=transform/compute_and_apply_vocabulary/apply_vocab/hash_tableHashTableV2*
_output_shapes
: *
	container *
	key_dtype0*y
shared_namejhhash_table_Tensor("compute_and_apply_vocabulary/vocabulary/Placeholder:0", shape=(), dtype=string)_-2_-1*
use_node_name_sharing( *
value_dtype0	
?
_transform/compute_and_apply_vocabulary/apply_vocab/text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2=transform/compute_and_apply_vocabulary/apply_vocab/hash_tableConst_2*
	delimiter	*
	key_index?????????*
value_index?????????*

vocab_size?????????
?
Ttransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/LookupTableSizeV2LookupTableSizeV2=transform/compute_and_apply_vocabulary/apply_vocab/hash_table*
_output_shapes
: 
?
Vtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/LookupTableFindV2LookupTableFindV2=transform/compute_and_apply_vocabulary/apply_vocab/hash_table4transform/inputs/inputs/education/Placeholder_1_copy8transform/compute_and_apply_vocabulary/apply_vocab/Const*	
Tin0*

Tout0	*#
_output_shapes
:?????????
|
:transform/compute_and_apply_vocabulary/apply_vocab/Const_1Const*
_output_shapes
: *
dtype0	*
value	B	 R 
z
8transform/compute_and_apply_vocabulary/apply_vocab/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R
?
6transform/compute_and_apply_vocabulary/apply_vocab/subSubTtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/LookupTableSizeV28transform/compute_and_apply_vocabulary/apply_vocab/sub/y*
T0	*
_output_shapes
: 
?
<transform/compute_and_apply_vocabulary/apply_vocab/Minimum/yConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
:transform/compute_and_apply_vocabulary/apply_vocab/MinimumMinimum:transform/compute_and_apply_vocabulary/apply_vocab/Const_1<transform/compute_and_apply_vocabulary/apply_vocab/Minimum/y*
T0	*
_output_shapes
: 
?
<transform/compute_and_apply_vocabulary/apply_vocab/Maximum/yConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
:transform/compute_and_apply_vocabulary/apply_vocab/MaximumMaximum6transform/compute_and_apply_vocabulary/apply_vocab/sub<transform/compute_and_apply_vocabulary/apply_vocab/Maximum/y*
T0	*
_output_shapes
: 
?
Atransform/compute_and_apply_vocabulary_1/vocabulary/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
;transform/compute_and_apply_vocabulary_1/vocabulary/ReshapeReshape;transform/inputs/inputs/F_marital-status/Placeholder_1_copyAtransform/compute_and_apply_vocabulary_1/vocabulary/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:?????????
?
wtransform/compute_and_apply_vocabulary_1/vocabulary/vocab_compute_and_apply_vocabulary_1_vocabulary_unpruned_vocab_sizePlaceholder*
_output_shapes
: *
dtype0	*
shape: 
?
?transform/compute_and_apply_vocabulary_1/vocabulary/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
:transform/compute_and_apply_vocabulary_1/apply_vocab/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
?transform/compute_and_apply_vocabulary_1/apply_vocab/hash_tableHashTableV2*
_output_shapes
: *
	container *
	key_dtype0*{
shared_nameljhash_table_Tensor("compute_and_apply_vocabulary_1/vocabulary/Placeholder:0", shape=(), dtype=string)_-2_-1*
use_node_name_sharing( *
value_dtype0	
?
atransform/compute_and_apply_vocabulary_1/apply_vocab/text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2?transform/compute_and_apply_vocabulary_1/apply_vocab/hash_tableConst_4*
	delimiter	*
	key_index?????????*
value_index?????????*

vocab_size?????????
?
Vtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/LookupTableSizeV2LookupTableSizeV2?transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table*
_output_shapes
: 
?
Xtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/LookupTableFindV2LookupTableFindV2?transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table;transform/inputs/inputs/F_marital-status/Placeholder_1_copy:transform/compute_and_apply_vocabulary_1/apply_vocab/Const*	
Tin0*

Tout0	*#
_output_shapes
:?????????
~
<transform/compute_and_apply_vocabulary_1/apply_vocab/Const_1Const*
_output_shapes
: *
dtype0	*
value	B	 R 
|
:transform/compute_and_apply_vocabulary_1/apply_vocab/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R
?
8transform/compute_and_apply_vocabulary_1/apply_vocab/subSubVtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/LookupTableSizeV2:transform/compute_and_apply_vocabulary_1/apply_vocab/sub/y*
T0	*
_output_shapes
: 
?
>transform/compute_and_apply_vocabulary_1/apply_vocab/Minimum/yConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
<transform/compute_and_apply_vocabulary_1/apply_vocab/MinimumMinimum<transform/compute_and_apply_vocabulary_1/apply_vocab/Const_1>transform/compute_and_apply_vocabulary_1/apply_vocab/Minimum/y*
T0	*
_output_shapes
: 
?
>transform/compute_and_apply_vocabulary_1/apply_vocab/Maximum/yConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
<transform/compute_and_apply_vocabulary_1/apply_vocab/MaximumMaximum8transform/compute_and_apply_vocabulary_1/apply_vocab/sub>transform/compute_and_apply_vocabulary_1/apply_vocab/Maximum/y*
T0	*
_output_shapes
: 
?
Atransform/compute_and_apply_vocabulary_2/vocabulary/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
;transform/compute_and_apply_vocabulary_2/vocabulary/ReshapeReshape5transform/inputs/inputs/occupation/Placeholder_1_copyAtransform/compute_and_apply_vocabulary_2/vocabulary/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:?????????
?
wtransform/compute_and_apply_vocabulary_2/vocabulary/vocab_compute_and_apply_vocabulary_2_vocabulary_unpruned_vocab_sizePlaceholder*
_output_shapes
: *
dtype0	*
shape: 
?
?transform/compute_and_apply_vocabulary_2/vocabulary/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
:transform/compute_and_apply_vocabulary_2/apply_vocab/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
?transform/compute_and_apply_vocabulary_2/apply_vocab/hash_tableHashTableV2*
_output_shapes
: *
	container *
	key_dtype0*{
shared_nameljhash_table_Tensor("compute_and_apply_vocabulary_2/vocabulary/Placeholder:0", shape=(), dtype=string)_-2_-1*
use_node_name_sharing( *
value_dtype0	
?
atransform/compute_and_apply_vocabulary_2/apply_vocab/text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2?transform/compute_and_apply_vocabulary_2/apply_vocab/hash_tableConst_6*
	delimiter	*
	key_index?????????*
value_index?????????*

vocab_size?????????
?
Vtransform/compute_and_apply_vocabulary_2/apply_vocab/hash_table_Size/LookupTableSizeV2LookupTableSizeV2?transform/compute_and_apply_vocabulary_2/apply_vocab/hash_table*
_output_shapes
: 
?
Xtransform/compute_and_apply_vocabulary_2/apply_vocab/hash_table_Lookup/LookupTableFindV2LookupTableFindV2?transform/compute_and_apply_vocabulary_2/apply_vocab/hash_table5transform/inputs/inputs/occupation/Placeholder_1_copy:transform/compute_and_apply_vocabulary_2/apply_vocab/Const*	
Tin0*

Tout0	*#
_output_shapes
:?????????
~
<transform/compute_and_apply_vocabulary_2/apply_vocab/Const_1Const*
_output_shapes
: *
dtype0	*
value	B	 R 
|
:transform/compute_and_apply_vocabulary_2/apply_vocab/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R
?
8transform/compute_and_apply_vocabulary_2/apply_vocab/subSubVtransform/compute_and_apply_vocabulary_2/apply_vocab/hash_table_Size/LookupTableSizeV2:transform/compute_and_apply_vocabulary_2/apply_vocab/sub/y*
T0	*
_output_shapes
: 
?
>transform/compute_and_apply_vocabulary_2/apply_vocab/Minimum/yConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
<transform/compute_and_apply_vocabulary_2/apply_vocab/MinimumMinimum<transform/compute_and_apply_vocabulary_2/apply_vocab/Const_1>transform/compute_and_apply_vocabulary_2/apply_vocab/Minimum/y*
T0	*
_output_shapes
: 
?
>transform/compute_and_apply_vocabulary_2/apply_vocab/Maximum/yConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
<transform/compute_and_apply_vocabulary_2/apply_vocab/MaximumMaximum8transform/compute_and_apply_vocabulary_2/apply_vocab/sub>transform/compute_and_apply_vocabulary_2/apply_vocab/Maximum/y*
T0	*
_output_shapes
: 
?
Atransform/compute_and_apply_vocabulary_3/vocabulary/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
;transform/compute_and_apply_vocabulary_3/vocabulary/ReshapeReshape/transform/inputs/inputs/race/Placeholder_1_copyAtransform/compute_and_apply_vocabulary_3/vocabulary/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:?????????
?
wtransform/compute_and_apply_vocabulary_3/vocabulary/vocab_compute_and_apply_vocabulary_3_vocabulary_unpruned_vocab_sizePlaceholder*
_output_shapes
: *
dtype0	*
shape: 
?
?transform/compute_and_apply_vocabulary_3/vocabulary/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
:transform/compute_and_apply_vocabulary_3/apply_vocab/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
?transform/compute_and_apply_vocabulary_3/apply_vocab/hash_tableHashTableV2*
_output_shapes
: *
	container *
	key_dtype0*{
shared_nameljhash_table_Tensor("compute_and_apply_vocabulary_3/vocabulary/Placeholder:0", shape=(), dtype=string)_-2_-1*
use_node_name_sharing( *
value_dtype0	
?
atransform/compute_and_apply_vocabulary_3/apply_vocab/text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2?transform/compute_and_apply_vocabulary_3/apply_vocab/hash_tableConst_8*
	delimiter	*
	key_index?????????*
value_index?????????*

vocab_size?????????
?
Vtransform/compute_and_apply_vocabulary_3/apply_vocab/hash_table_Size/LookupTableSizeV2LookupTableSizeV2?transform/compute_and_apply_vocabulary_3/apply_vocab/hash_table*
_output_shapes
: 
?
Xtransform/compute_and_apply_vocabulary_3/apply_vocab/hash_table_Lookup/LookupTableFindV2LookupTableFindV2?transform/compute_and_apply_vocabulary_3/apply_vocab/hash_table/transform/inputs/inputs/race/Placeholder_1_copy:transform/compute_and_apply_vocabulary_3/apply_vocab/Const*	
Tin0*

Tout0	*#
_output_shapes
:?????????
~
<transform/compute_and_apply_vocabulary_3/apply_vocab/Const_1Const*
_output_shapes
: *
dtype0	*
value	B	 R 
|
:transform/compute_and_apply_vocabulary_3/apply_vocab/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R
?
8transform/compute_and_apply_vocabulary_3/apply_vocab/subSubVtransform/compute_and_apply_vocabulary_3/apply_vocab/hash_table_Size/LookupTableSizeV2:transform/compute_and_apply_vocabulary_3/apply_vocab/sub/y*
T0	*
_output_shapes
: 
?
>transform/compute_and_apply_vocabulary_3/apply_vocab/Minimum/yConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
<transform/compute_and_apply_vocabulary_3/apply_vocab/MinimumMinimum<transform/compute_and_apply_vocabulary_3/apply_vocab/Const_1>transform/compute_and_apply_vocabulary_3/apply_vocab/Minimum/y*
T0	*
_output_shapes
: 
?
>transform/compute_and_apply_vocabulary_3/apply_vocab/Maximum/yConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
<transform/compute_and_apply_vocabulary_3/apply_vocab/MaximumMaximum8transform/compute_and_apply_vocabulary_3/apply_vocab/sub>transform/compute_and_apply_vocabulary_3/apply_vocab/Maximum/y*
T0	*
_output_shapes
: 
?
Atransform/compute_and_apply_vocabulary_4/vocabulary/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
;transform/compute_and_apply_vocabulary_4/vocabulary/ReshapeReshape7transform/inputs/inputs/relationship/Placeholder_1_copyAtransform/compute_and_apply_vocabulary_4/vocabulary/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:?????????
?
wtransform/compute_and_apply_vocabulary_4/vocabulary/vocab_compute_and_apply_vocabulary_4_vocabulary_unpruned_vocab_sizePlaceholder*
_output_shapes
: *
dtype0	*
shape: 
?
?transform/compute_and_apply_vocabulary_4/vocabulary/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
:transform/compute_and_apply_vocabulary_4/apply_vocab/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
?transform/compute_and_apply_vocabulary_4/apply_vocab/hash_tableHashTableV2*
_output_shapes
: *
	container *
	key_dtype0*{
shared_nameljhash_table_Tensor("compute_and_apply_vocabulary_4/vocabulary/Placeholder:0", shape=(), dtype=string)_-2_-1*
use_node_name_sharing( *
value_dtype0	
?
atransform/compute_and_apply_vocabulary_4/apply_vocab/text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2?transform/compute_and_apply_vocabulary_4/apply_vocab/hash_tableConst_10*
	delimiter	*
	key_index?????????*
value_index?????????*

vocab_size?????????
?
Vtransform/compute_and_apply_vocabulary_4/apply_vocab/hash_table_Size/LookupTableSizeV2LookupTableSizeV2?transform/compute_and_apply_vocabulary_4/apply_vocab/hash_table*
_output_shapes
: 
?
Xtransform/compute_and_apply_vocabulary_4/apply_vocab/hash_table_Lookup/LookupTableFindV2LookupTableFindV2?transform/compute_and_apply_vocabulary_4/apply_vocab/hash_table7transform/inputs/inputs/relationship/Placeholder_1_copy:transform/compute_and_apply_vocabulary_4/apply_vocab/Const*	
Tin0*

Tout0	*#
_output_shapes
:?????????
~
<transform/compute_and_apply_vocabulary_4/apply_vocab/Const_1Const*
_output_shapes
: *
dtype0	*
value	B	 R 
|
:transform/compute_and_apply_vocabulary_4/apply_vocab/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R
?
8transform/compute_and_apply_vocabulary_4/apply_vocab/subSubVtransform/compute_and_apply_vocabulary_4/apply_vocab/hash_table_Size/LookupTableSizeV2:transform/compute_and_apply_vocabulary_4/apply_vocab/sub/y*
T0	*
_output_shapes
: 
?
>transform/compute_and_apply_vocabulary_4/apply_vocab/Minimum/yConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
<transform/compute_and_apply_vocabulary_4/apply_vocab/MinimumMinimum<transform/compute_and_apply_vocabulary_4/apply_vocab/Const_1>transform/compute_and_apply_vocabulary_4/apply_vocab/Minimum/y*
T0	*
_output_shapes
: 
?
>transform/compute_and_apply_vocabulary_4/apply_vocab/Maximum/yConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
<transform/compute_and_apply_vocabulary_4/apply_vocab/MaximumMaximum8transform/compute_and_apply_vocabulary_4/apply_vocab/sub>transform/compute_and_apply_vocabulary_4/apply_vocab/Maximum/y*
T0	*
_output_shapes
: 
?
Atransform/compute_and_apply_vocabulary_5/vocabulary/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
;transform/compute_and_apply_vocabulary_5/vocabulary/ReshapeReshape4transform/inputs/inputs/workclass/Placeholder_1_copyAtransform/compute_and_apply_vocabulary_5/vocabulary/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:?????????
?
wtransform/compute_and_apply_vocabulary_5/vocabulary/vocab_compute_and_apply_vocabulary_5_vocabulary_unpruned_vocab_sizePlaceholder*
_output_shapes
: *
dtype0	*
shape: 
?
?transform/compute_and_apply_vocabulary_5/vocabulary/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
:transform/compute_and_apply_vocabulary_5/apply_vocab/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
?transform/compute_and_apply_vocabulary_5/apply_vocab/hash_tableHashTableV2*
_output_shapes
: *
	container *
	key_dtype0*{
shared_nameljhash_table_Tensor("compute_and_apply_vocabulary_5/vocabulary/Placeholder:0", shape=(), dtype=string)_-2_-1*
use_node_name_sharing( *
value_dtype0	
?
atransform/compute_and_apply_vocabulary_5/apply_vocab/text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2?transform/compute_and_apply_vocabulary_5/apply_vocab/hash_tableConst_12*
	delimiter	*
	key_index?????????*
value_index?????????*

vocab_size?????????
?
Vtransform/compute_and_apply_vocabulary_5/apply_vocab/hash_table_Size/LookupTableSizeV2LookupTableSizeV2?transform/compute_and_apply_vocabulary_5/apply_vocab/hash_table*
_output_shapes
: 
?
Xtransform/compute_and_apply_vocabulary_5/apply_vocab/hash_table_Lookup/LookupTableFindV2LookupTableFindV2?transform/compute_and_apply_vocabulary_5/apply_vocab/hash_table4transform/inputs/inputs/workclass/Placeholder_1_copy:transform/compute_and_apply_vocabulary_5/apply_vocab/Const*	
Tin0*

Tout0	*#
_output_shapes
:?????????
~
<transform/compute_and_apply_vocabulary_5/apply_vocab/Const_1Const*
_output_shapes
: *
dtype0	*
value	B	 R 
|
:transform/compute_and_apply_vocabulary_5/apply_vocab/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R
?
8transform/compute_and_apply_vocabulary_5/apply_vocab/subSubVtransform/compute_and_apply_vocabulary_5/apply_vocab/hash_table_Size/LookupTableSizeV2:transform/compute_and_apply_vocabulary_5/apply_vocab/sub/y*
T0	*
_output_shapes
: 
?
>transform/compute_and_apply_vocabulary_5/apply_vocab/Minimum/yConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
<transform/compute_and_apply_vocabulary_5/apply_vocab/MinimumMinimum<transform/compute_and_apply_vocabulary_5/apply_vocab/Const_1>transform/compute_and_apply_vocabulary_5/apply_vocab/Minimum/y*
T0	*
_output_shapes
: 
?
>transform/compute_and_apply_vocabulary_5/apply_vocab/Maximum/yConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
<transform/compute_and_apply_vocabulary_5/apply_vocab/MaximumMaximum8transform/compute_and_apply_vocabulary_5/apply_vocab/sub>transform/compute_and_apply_vocabulary_5/apply_vocab/Maximum/y*
T0	*
_output_shapes
: 
?
Atransform/compute_and_apply_vocabulary_6/vocabulary/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
;transform/compute_and_apply_vocabulary_6/vocabulary/ReshapeReshape.transform/inputs/inputs/sex/Placeholder_1_copyAtransform/compute_and_apply_vocabulary_6/vocabulary/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:?????????
?
wtransform/compute_and_apply_vocabulary_6/vocabulary/vocab_compute_and_apply_vocabulary_6_vocabulary_unpruned_vocab_sizePlaceholder*
_output_shapes
: *
dtype0	*
shape: 
?
?transform/compute_and_apply_vocabulary_6/vocabulary/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
:transform/compute_and_apply_vocabulary_6/apply_vocab/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
?transform/compute_and_apply_vocabulary_6/apply_vocab/hash_tableHashTableV2*
_output_shapes
: *
	container *
	key_dtype0*{
shared_nameljhash_table_Tensor("compute_and_apply_vocabulary_6/vocabulary/Placeholder:0", shape=(), dtype=string)_-2_-1*
use_node_name_sharing( *
value_dtype0	
?
atransform/compute_and_apply_vocabulary_6/apply_vocab/text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2?transform/compute_and_apply_vocabulary_6/apply_vocab/hash_tableConst_14*
	delimiter	*
	key_index?????????*
value_index?????????*

vocab_size?????????
?
Vtransform/compute_and_apply_vocabulary_6/apply_vocab/hash_table_Size/LookupTableSizeV2LookupTableSizeV2?transform/compute_and_apply_vocabulary_6/apply_vocab/hash_table*
_output_shapes
: 
?
Xtransform/compute_and_apply_vocabulary_6/apply_vocab/hash_table_Lookup/LookupTableFindV2LookupTableFindV2?transform/compute_and_apply_vocabulary_6/apply_vocab/hash_table.transform/inputs/inputs/sex/Placeholder_1_copy:transform/compute_and_apply_vocabulary_6/apply_vocab/Const*	
Tin0*

Tout0	*#
_output_shapes
:?????????
~
<transform/compute_and_apply_vocabulary_6/apply_vocab/Const_1Const*
_output_shapes
: *
dtype0	*
value	B	 R 
|
:transform/compute_and_apply_vocabulary_6/apply_vocab/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R
?
8transform/compute_and_apply_vocabulary_6/apply_vocab/subSubVtransform/compute_and_apply_vocabulary_6/apply_vocab/hash_table_Size/LookupTableSizeV2:transform/compute_and_apply_vocabulary_6/apply_vocab/sub/y*
T0	*
_output_shapes
: 
?
>transform/compute_and_apply_vocabulary_6/apply_vocab/Minimum/yConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
<transform/compute_and_apply_vocabulary_6/apply_vocab/MinimumMinimum<transform/compute_and_apply_vocabulary_6/apply_vocab/Const_1>transform/compute_and_apply_vocabulary_6/apply_vocab/Minimum/y*
T0	*
_output_shapes
: 
?
>transform/compute_and_apply_vocabulary_6/apply_vocab/Maximum/yConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
<transform/compute_and_apply_vocabulary_6/apply_vocab/MaximumMaximum8transform/compute_and_apply_vocabulary_6/apply_vocab/sub>transform/compute_and_apply_vocabulary_6/apply_vocab/Maximum/y*
T0	*
_output_shapes
: 
?
Atransform/compute_and_apply_vocabulary_7/vocabulary/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
;transform/compute_and_apply_vocabulary_7/vocabulary/ReshapeReshape;transform/inputs/inputs/F_native-country/Placeholder_1_copyAtransform/compute_and_apply_vocabulary_7/vocabulary/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:?????????
?
wtransform/compute_and_apply_vocabulary_7/vocabulary/vocab_compute_and_apply_vocabulary_7_vocabulary_unpruned_vocab_sizePlaceholder*
_output_shapes
: *
dtype0	*
shape: 
?
?transform/compute_and_apply_vocabulary_7/vocabulary/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
:transform/compute_and_apply_vocabulary_7/apply_vocab/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
?transform/compute_and_apply_vocabulary_7/apply_vocab/hash_tableHashTableV2*
_output_shapes
: *
	container *
	key_dtype0*{
shared_nameljhash_table_Tensor("compute_and_apply_vocabulary_7/vocabulary/Placeholder:0", shape=(), dtype=string)_-2_-1*
use_node_name_sharing( *
value_dtype0	
?
atransform/compute_and_apply_vocabulary_7/apply_vocab/text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2?transform/compute_and_apply_vocabulary_7/apply_vocab/hash_tableConst_16*
	delimiter	*
	key_index?????????*
value_index?????????*

vocab_size?????????
?
Vtransform/compute_and_apply_vocabulary_7/apply_vocab/hash_table_Size/LookupTableSizeV2LookupTableSizeV2?transform/compute_and_apply_vocabulary_7/apply_vocab/hash_table*
_output_shapes
: 
?
Xtransform/compute_and_apply_vocabulary_7/apply_vocab/hash_table_Lookup/LookupTableFindV2LookupTableFindV2?transform/compute_and_apply_vocabulary_7/apply_vocab/hash_table;transform/inputs/inputs/F_native-country/Placeholder_1_copy:transform/compute_and_apply_vocabulary_7/apply_vocab/Const*	
Tin0*

Tout0	*#
_output_shapes
:?????????
~
<transform/compute_and_apply_vocabulary_7/apply_vocab/Const_1Const*
_output_shapes
: *
dtype0	*
value	B	 R 
|
:transform/compute_and_apply_vocabulary_7/apply_vocab/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R
?
8transform/compute_and_apply_vocabulary_7/apply_vocab/subSubVtransform/compute_and_apply_vocabulary_7/apply_vocab/hash_table_Size/LookupTableSizeV2:transform/compute_and_apply_vocabulary_7/apply_vocab/sub/y*
T0	*
_output_shapes
: 
?
>transform/compute_and_apply_vocabulary_7/apply_vocab/Minimum/yConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
<transform/compute_and_apply_vocabulary_7/apply_vocab/MinimumMinimum<transform/compute_and_apply_vocabulary_7/apply_vocab/Const_1>transform/compute_and_apply_vocabulary_7/apply_vocab/Minimum/y*
T0	*
_output_shapes
: 
?
>transform/compute_and_apply_vocabulary_7/apply_vocab/Maximum/yConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
<transform/compute_and_apply_vocabulary_7/apply_vocab/MaximumMaximum8transform/compute_and_apply_vocabulary_7/apply_vocab/sub>transform/compute_and_apply_vocabulary_7/apply_vocab/Maximum/y*
T0	*
_output_shapes
: 
?
Atransform/compute_and_apply_vocabulary_8/vocabulary/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
;transform/compute_and_apply_vocabulary_8/vocabulary/ReshapeReshape0transform/inputs/inputs/label/Placeholder_1_copyAtransform/compute_and_apply_vocabulary_8/vocabulary/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:?????????
?
wtransform/compute_and_apply_vocabulary_8/vocabulary/vocab_compute_and_apply_vocabulary_8_vocabulary_unpruned_vocab_sizePlaceholder*
_output_shapes
: *
dtype0	*
shape: 
?
?transform/compute_and_apply_vocabulary_8/vocabulary/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
:transform/compute_and_apply_vocabulary_8/apply_vocab/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
?transform/compute_and_apply_vocabulary_8/apply_vocab/hash_tableHashTableV2*
_output_shapes
: *
	container *
	key_dtype0*{
shared_nameljhash_table_Tensor("compute_and_apply_vocabulary_8/vocabulary/Placeholder:0", shape=(), dtype=string)_-2_-1*
use_node_name_sharing( *
value_dtype0	
?
atransform/compute_and_apply_vocabulary_8/apply_vocab/text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2?transform/compute_and_apply_vocabulary_8/apply_vocab/hash_tableConst_18*
	delimiter	*
	key_index?????????*
value_index?????????*

vocab_size?????????
?
Vtransform/compute_and_apply_vocabulary_8/apply_vocab/hash_table_Size/LookupTableSizeV2LookupTableSizeV2?transform/compute_and_apply_vocabulary_8/apply_vocab/hash_table*
_output_shapes
: 
?
Xtransform/compute_and_apply_vocabulary_8/apply_vocab/hash_table_Lookup/LookupTableFindV2LookupTableFindV2?transform/compute_and_apply_vocabulary_8/apply_vocab/hash_table0transform/inputs/inputs/label/Placeholder_1_copy:transform/compute_and_apply_vocabulary_8/apply_vocab/Const*	
Tin0*

Tout0	*#
_output_shapes
:?????????
~
<transform/compute_and_apply_vocabulary_8/apply_vocab/Const_1Const*
_output_shapes
: *
dtype0	*
value	B	 R 
|
:transform/compute_and_apply_vocabulary_8/apply_vocab/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R
?
8transform/compute_and_apply_vocabulary_8/apply_vocab/subSubVtransform/compute_and_apply_vocabulary_8/apply_vocab/hash_table_Size/LookupTableSizeV2:transform/compute_and_apply_vocabulary_8/apply_vocab/sub/y*
T0	*
_output_shapes
: 
?
>transform/compute_and_apply_vocabulary_8/apply_vocab/Minimum/yConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
<transform/compute_and_apply_vocabulary_8/apply_vocab/MinimumMinimum<transform/compute_and_apply_vocabulary_8/apply_vocab/Const_1>transform/compute_and_apply_vocabulary_8/apply_vocab/Minimum/y*
T0	*
_output_shapes
: 
?
>transform/compute_and_apply_vocabulary_8/apply_vocab/Maximum/yConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
<transform/compute_and_apply_vocabulary_8/apply_vocab/MaximumMaximum8transform/compute_and_apply_vocabulary_8/apply_vocab/sub>transform/compute_and_apply_vocabulary_8/apply_vocab/Maximum/y*
T0	*
_output_shapes
: 

transform/initNoOp

transform/init_1NoOp

initNoOp"?"}
asset_filepathsj
h
	Const_2:0
	Const_4:0
	Const_6:0
	Const_8:0

Const_10:0

Const_12:0

Const_14:0

Const_16:0

Const_18:0"?
saved_model_assets?*?
k
+type.googleapis.com/tensorflow.AssetFileDef<

	Const_2:0-vocab_compute_and_apply_vocabulary_vocabulary
m
+type.googleapis.com/tensorflow.AssetFileDef>

	Const_4:0/vocab_compute_and_apply_vocabulary_1_vocabulary
m
+type.googleapis.com/tensorflow.AssetFileDef>

	Const_6:0/vocab_compute_and_apply_vocabulary_2_vocabulary
m
+type.googleapis.com/tensorflow.AssetFileDef>

	Const_8:0/vocab_compute_and_apply_vocabulary_3_vocabulary
n
+type.googleapis.com/tensorflow.AssetFileDef?


Const_10:0/vocab_compute_and_apply_vocabulary_4_vocabulary
n
+type.googleapis.com/tensorflow.AssetFileDef?


Const_12:0/vocab_compute_and_apply_vocabulary_5_vocabulary
n
+type.googleapis.com/tensorflow.AssetFileDef?


Const_14:0/vocab_compute_and_apply_vocabulary_6_vocabulary
n
+type.googleapis.com/tensorflow.AssetFileDef?


Const_16:0/vocab_compute_and_apply_vocabulary_7_vocabulary
n
+type.googleapis.com/tensorflow.AssetFileDef?


Const_18:0/vocab_compute_and_apply_vocabulary_8_vocabulary"?
table_initializer?
?
_transform/compute_and_apply_vocabulary/apply_vocab/text_file_init/InitializeTableFromTextFileV2
atransform/compute_and_apply_vocabulary_1/apply_vocab/text_file_init/InitializeTableFromTextFileV2
atransform/compute_and_apply_vocabulary_2/apply_vocab/text_file_init/InitializeTableFromTextFileV2
atransform/compute_and_apply_vocabulary_3/apply_vocab/text_file_init/InitializeTableFromTextFileV2
atransform/compute_and_apply_vocabulary_4/apply_vocab/text_file_init/InitializeTableFromTextFileV2
atransform/compute_and_apply_vocabulary_5/apply_vocab/text_file_init/InitializeTableFromTextFileV2
atransform/compute_and_apply_vocabulary_6/apply_vocab/text_file_init/InitializeTableFromTextFileV2
atransform/compute_and_apply_vocabulary_7/apply_vocab/text_file_init/InitializeTableFromTextFileV2
atransform/compute_and_apply_vocabulary_8/apply_vocab/text_file_init/InitializeTableFromTextFileV2"?
tft_schema_override_max?
?
1transform/bucketize/apply_buckets/strided_slice:0
<transform/compute_and_apply_vocabulary/apply_vocab/Maximum:0
>transform/compute_and_apply_vocabulary_1/apply_vocab/Maximum:0
>transform/compute_and_apply_vocabulary_2/apply_vocab/Maximum:0
>transform/compute_and_apply_vocabulary_3/apply_vocab/Maximum:0
>transform/compute_and_apply_vocabulary_4/apply_vocab/Maximum:0
>transform/compute_and_apply_vocabulary_5/apply_vocab/Maximum:0
>transform/compute_and_apply_vocabulary_6/apply_vocab/Maximum:0
>transform/compute_and_apply_vocabulary_7/apply_vocab/Maximum:0
>transform/compute_and_apply_vocabulary_8/apply_vocab/Maximum:0"?
tft_schema_override_min?
?
)transform/bucketize/apply_buckets/Const:0
<transform/compute_and_apply_vocabulary/apply_vocab/Minimum:0
>transform/compute_and_apply_vocabulary_1/apply_vocab/Minimum:0
>transform/compute_and_apply_vocabulary_2/apply_vocab/Minimum:0
>transform/compute_and_apply_vocabulary_3/apply_vocab/Minimum:0
>transform/compute_and_apply_vocabulary_4/apply_vocab/Minimum:0
>transform/compute_and_apply_vocabulary_5/apply_vocab/Minimum:0
>transform/compute_and_apply_vocabulary_6/apply_vocab/Minimum:0
>transform/compute_and_apply_vocabulary_7/apply_vocab/Minimum:0
>transform/compute_and_apply_vocabulary_8/apply_vocab/Minimum:0"?
tft_schema_override_tensor?
?
Ptransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0
Xtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/LookupTableFindV2:0
Ztransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/LookupTableFindV2:0
Ztransform/compute_and_apply_vocabulary_2/apply_vocab/hash_table_Lookup/LookupTableFindV2:0
Ztransform/compute_and_apply_vocabulary_3/apply_vocab/hash_table_Lookup/LookupTableFindV2:0
Ztransform/compute_and_apply_vocabulary_4/apply_vocab/hash_table_Lookup/LookupTableFindV2:0
Ztransform/compute_and_apply_vocabulary_5/apply_vocab/hash_table_Lookup/LookupTableFindV2:0
Ztransform/compute_and_apply_vocabulary_6/apply_vocab/hash_table_Lookup/LookupTableFindV2:0
Ztransform/compute_and_apply_vocabulary_7/apply_vocab/hash_table_Lookup/LookupTableFindV2:0
Ztransform/compute_and_apply_vocabulary_8/apply_vocab/hash_table_Lookup/LookupTableFindV2:0*?1
transform_signature?1
?
age?	??????????????????"p
$transform/inputs/age/Placeholder_1:0"transform/inputs/age/Placeholder:0$transform/inputs/age/Placeholder_2:0
?
capital-gain?	??????????????????"?
/transform/inputs/F_capital-gain/Placeholder_1:0-transform/inputs/F_capital-gain/Placeholder:0/transform/inputs/F_capital-gain/Placeholder_2:0
?
capital-loss?	??????????????????"?
/transform/inputs/F_capital-loss/Placeholder_1:0-transform/inputs/F_capital-loss/Placeholder:0/transform/inputs/F_capital-loss/Placeholder_2:0
?
	education???????????????????"?
*transform/inputs/education/Placeholder_1:0(transform/inputs/education/Placeholder:0*transform/inputs/education/Placeholder_2:0
?
education-num?	??????????????????"?
0transform/inputs/F_education-num/Placeholder_1:0.transform/inputs/F_education-num/Placeholder:00transform/inputs/F_education-num/Placeholder_2:0
?
fnlwgt?	??????????????????"y
'transform/inputs/fnlwgt/Placeholder_1:0%transform/inputs/fnlwgt/Placeholder:0'transform/inputs/fnlwgt/Placeholder_2:0
?
hours-per-week?	??????????????????"?
1transform/inputs/F_hours-per-week/Placeholder_1:0/transform/inputs/F_hours-per-week/Placeholder:01transform/inputs/F_hours-per-week/Placeholder_2:0
?
label???????????????????"v
&transform/inputs/label/Placeholder_1:0$transform/inputs/label/Placeholder:0&transform/inputs/label/Placeholder_2:0
?
marital-status???????????????????"?
1transform/inputs/F_marital-status/Placeholder_1:0/transform/inputs/F_marital-status/Placeholder:01transform/inputs/F_marital-status/Placeholder_2:0
?
native-country???????????????????"?
1transform/inputs/F_native-country/Placeholder_1:0/transform/inputs/F_native-country/Placeholder:01transform/inputs/F_native-country/Placeholder_2:0
?

occupation???????????????????"?
+transform/inputs/occupation/Placeholder_1:0)transform/inputs/occupation/Placeholder:0+transform/inputs/occupation/Placeholder_2:0
?
race???????????????????"s
%transform/inputs/race/Placeholder_1:0#transform/inputs/race/Placeholder:0%transform/inputs/race/Placeholder_2:0
?
relationship???????????????????"?
-transform/inputs/relationship/Placeholder_1:0+transform/inputs/relationship/Placeholder:0-transform/inputs/relationship/Placeholder_2:0
?
sex???????????????????"p
$transform/inputs/sex/Placeholder_1:0"transform/inputs/sex/Placeholder:0$transform/inputs/sex/Placeholder_2:0
?
	workclass???????????????????"?
*transform/inputs/workclass/Placeholder_1:0(transform/inputs/workclass/Placeholder:0*transform/inputs/workclass/Placeholder_2:0?
age_xf?	??????????????????"?
Ptransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0.transform/inputs/inputs/age/Placeholder_copy:00transform/inputs/inputs/age/Placeholder_2_copy:0?
capital-gain_xf???????????????????"?
 transform/scale_to_0_1_2/add_1:09transform/inputs/inputs/F_capital-gain/Placeholder_copy:0;transform/inputs/inputs/F_capital-gain/Placeholder_2_copy:0?
capital-loss_xf???????????????????"?
 transform/scale_to_0_1_3/add_1:09transform/inputs/inputs/F_capital-loss/Placeholder_copy:0;transform/inputs/inputs/F_capital-loss/Placeholder_2_copy:0?
education-num_xf???????????????????"?
 transform/scale_to_0_1_1/add_1:0:transform/inputs/inputs/F_education-num/Placeholder_copy:0<transform/inputs/inputs/F_education-num/Placeholder_2_copy:0?
education_xf?	??????????????????"?
Xtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/LookupTableFindV2:04transform/inputs/inputs/education/Placeholder_copy:06transform/inputs/inputs/education/Placeholder_2_copy:0?
	fnlwgt_xf???????????????????"?
transform/scale_to_0_1/add_1:01transform/inputs/inputs/fnlwgt/Placeholder_copy:03transform/inputs/inputs/fnlwgt/Placeholder_2_copy:0?
hours-per-week_xf???????????????????"?
 transform/scale_to_0_1_4/add_1:0;transform/inputs/inputs/F_hours-per-week/Placeholder_copy:0=transform/inputs/inputs/F_hours-per-week/Placeholder_2_copy:0?
label_xf?	??????????????????"?
Ztransform/compute_and_apply_vocabulary_8/apply_vocab/hash_table_Lookup/LookupTableFindV2:00transform/inputs/inputs/label/Placeholder_copy:02transform/inputs/inputs/label/Placeholder_2_copy:0?
marital-status_xf?	??????????????????"?
Ztransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/LookupTableFindV2:0;transform/inputs/inputs/F_marital-status/Placeholder_copy:0=transform/inputs/inputs/F_marital-status/Placeholder_2_copy:0?
native-country_xf?	??????????????????"?
Ztransform/compute_and_apply_vocabulary_7/apply_vocab/hash_table_Lookup/LookupTableFindV2:0;transform/inputs/inputs/F_native-country/Placeholder_copy:0=transform/inputs/inputs/F_native-country/Placeholder_2_copy:0?
occupation_xf?	??????????????????"?
Ztransform/compute_and_apply_vocabulary_2/apply_vocab/hash_table_Lookup/LookupTableFindV2:05transform/inputs/inputs/occupation/Placeholder_copy:07transform/inputs/inputs/occupation/Placeholder_2_copy:0?
race_xf?	??????????????????"?
Ztransform/compute_and_apply_vocabulary_3/apply_vocab/hash_table_Lookup/LookupTableFindV2:0/transform/inputs/inputs/race/Placeholder_copy:01transform/inputs/inputs/race/Placeholder_2_copy:0?
relationship_xf?	??????????????????"?
Ztransform/compute_and_apply_vocabulary_4/apply_vocab/hash_table_Lookup/LookupTableFindV2:07transform/inputs/inputs/relationship/Placeholder_copy:09transform/inputs/inputs/relationship/Placeholder_2_copy:0?
sex_xf?	??????????????????"?
Ztransform/compute_and_apply_vocabulary_6/apply_vocab/hash_table_Lookup/LookupTableFindV2:0.transform/inputs/inputs/sex/Placeholder_copy:00transform/inputs/inputs/sex/Placeholder_2_copy:0?
workclass_xf?	??????????????????"?
Ztransform/compute_and_apply_vocabulary_5/apply_vocab/hash_table_Lookup/LookupTableFindV2:04transform/inputs/inputs/workclass/Placeholder_copy:06transform/inputs/inputs/workclass/Placeholder_2_copy:0tensorflow/serving/predict