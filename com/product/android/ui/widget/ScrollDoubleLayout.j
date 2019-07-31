.bytecode 50.0
.class public synchronized com/product/android/ui/widget/ScrollDoubleLayout
.super android/widget/LinearLayout
.inner class inner com/product/android/ui/widget/ScrollDoubleLayout$1
.inner class inner com/product/android/ui/widget/ScrollDoubleLayout$2

.field static 'mdata12' Ljava/util/List; signature "Ljava/util/List<[Ljava/lang/String;>;"

.field static 'mdata34' Ljava/util/List; signature "Ljava/util/List<[Ljava/lang/String;>;"

.field 'animationSet1' Landroid/view/animation/AnimationSet;

.field 'animationSet2' Landroid/view/animation/AnimationSet;

.field 'context' Landroid/content/Context;

.field private 'currentP12' I

.field private 'currentP34' I

.field private 'flag' I

.field 'handler' Landroid/os/Handler;

.field private 'intime' I

.field 'layout13' Landroid/widget/LinearLayout;

.field 'layout24' Landroid/widget/LinearLayout;

.field 'lot_user1' Landroid/widget/RelativeLayout;

.field 'lot_user1_depart' Landroid/widget/TextView;

.field 'lot_user1_head' Landroid/widget/ImageView;

.field 'lot_user1_name' Landroid/widget/TextView;

.field 'lot_user1_prise' Landroid/widget/TextView;

.field 'lot_user1_time' Landroid/widget/TextView;

.field 'lot_user2' Landroid/widget/RelativeLayout;

.field 'lot_user2_depart' Landroid/widget/TextView;

.field 'lot_user2_head' Landroid/widget/ImageView;

.field 'lot_user2_name' Landroid/widget/TextView;

.field 'lot_user2_prise' Landroid/widget/TextView;

.field 'lot_user2_time' Landroid/widget/TextView;

.field 'lot_user3' Landroid/widget/RelativeLayout;

.field 'lot_user3_depart' Landroid/widget/TextView;

.field 'lot_user3_head' Landroid/widget/ImageView;

.field 'lot_user3_name' Landroid/widget/TextView;

.field 'lot_user3_prise' Landroid/widget/TextView;

.field 'lot_user3_time' Landroid/widget/TextView;

.field 'lot_user4' Landroid/widget/RelativeLayout;

.field 'lot_user4_depart' Landroid/widget/TextView;

.field 'lot_user4_head' Landroid/widget/ImageView;

.field 'lot_user4_name' Landroid/widget/TextView;

.field 'lot_user4_prise' Landroid/widget/TextView;

.field 'lot_user4_time' Landroid/widget/TextView;

.field private 'outtime' I

.field private 'period' I

.field private 'task' Ljava/util/TimerTask;

.field private 'timer' Ljava/util/Timer;

.method static <clinit>()V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putstatic com/product/android/ui/widget/ScrollDoubleLayout/mdata12 Ljava/util/List;
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putstatic com/product/android/ui/widget/ScrollDoubleLayout/mdata34 Ljava/util/List;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
aconst_null
invokespecial com/product/android/ui/widget/ScrollDoubleLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
sipush 4000
putfield com/product/android/ui/widget/ScrollDoubleLayout/period I
aload 0
sipush 500
putfield com/product/android/ui/widget/ScrollDoubleLayout/outtime I
aload 0
sipush 500
putfield com/product/android/ui/widget/ScrollDoubleLayout/intime I
aload 0
iconst_m1
putfield com/product/android/ui/widget/ScrollDoubleLayout/currentP12 I
aload 0
iconst_m1
putfield com/product/android/ui/widget/ScrollDoubleLayout/currentP34 I
aload 0
iconst_0
putfield com/product/android/ui/widget/ScrollDoubleLayout/flag I
aload 0
aconst_null
putfield com/product/android/ui/widget/ScrollDoubleLayout/timer Ljava/util/Timer;
aload 0
new com/product/android/ui/widget/ScrollDoubleLayout$2
dup
aload 0
invokespecial com/product/android/ui/widget/ScrollDoubleLayout$2/<init>(Lcom/product/android/ui/widget/ScrollDoubleLayout;)V
putfield com/product/android/ui/widget/ScrollDoubleLayout/handler Landroid/os/Handler;
aload 1
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
getstatic com/nd/android/u/allcommon/R$layout/lot_user_doublelayout_item I
aload 0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/layout1 I
invokevirtual com/product/android/ui/widget/ScrollDoubleLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/product/android/ui/widget/ScrollDoubleLayout/layout13 Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/layout2 I
invokevirtual com/product/android/ui/widget/ScrollDoubleLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/product/android/ui/widget/ScrollDoubleLayout/layout24 Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/lot_user1 I
invokevirtual com/product/android/ui/widget/ScrollDoubleLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/product/android/ui/widget/ScrollDoubleLayout/lot_user1 Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/lot_user1_head I
invokevirtual com/product/android/ui/widget/ScrollDoubleLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/product/android/ui/widget/ScrollDoubleLayout/lot_user1_head Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/lot_user1_depart I
invokevirtual com/product/android/ui/widget/ScrollDoubleLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/product/android/ui/widget/ScrollDoubleLayout/lot_user1_depart Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/lot_user1_name I
invokevirtual com/product/android/ui/widget/ScrollDoubleLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/product/android/ui/widget/ScrollDoubleLayout/lot_user1_name Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/lot_user1_prise I
invokevirtual com/product/android/ui/widget/ScrollDoubleLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/product/android/ui/widget/ScrollDoubleLayout/lot_user1_prise Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/lot_user1_time I
invokevirtual com/product/android/ui/widget/ScrollDoubleLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/product/android/ui/widget/ScrollDoubleLayout/lot_user1_time Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/lot_user2 I
invokevirtual com/product/android/ui/widget/ScrollDoubleLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/product/android/ui/widget/ScrollDoubleLayout/lot_user2 Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/lot_user2_head I
invokevirtual com/product/android/ui/widget/ScrollDoubleLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/product/android/ui/widget/ScrollDoubleLayout/lot_user2_head Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/lot_user2_depart I
invokevirtual com/product/android/ui/widget/ScrollDoubleLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/product/android/ui/widget/ScrollDoubleLayout/lot_user2_depart Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/lot_user2_name I
invokevirtual com/product/android/ui/widget/ScrollDoubleLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/product/android/ui/widget/ScrollDoubleLayout/lot_user2_name Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/lot_user2_prise I
invokevirtual com/product/android/ui/widget/ScrollDoubleLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/product/android/ui/widget/ScrollDoubleLayout/lot_user2_prise Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/lot_user2_time I
invokevirtual com/product/android/ui/widget/ScrollDoubleLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/product/android/ui/widget/ScrollDoubleLayout/lot_user2_time Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/lot_user3 I
invokevirtual com/product/android/ui/widget/ScrollDoubleLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/product/android/ui/widget/ScrollDoubleLayout/lot_user3 Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/lot_user3_head I
invokevirtual com/product/android/ui/widget/ScrollDoubleLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/product/android/ui/widget/ScrollDoubleLayout/lot_user3_head Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/lot_user3_depart I
invokevirtual com/product/android/ui/widget/ScrollDoubleLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/product/android/ui/widget/ScrollDoubleLayout/lot_user3_depart Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/lot_user3_name I
invokevirtual com/product/android/ui/widget/ScrollDoubleLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/product/android/ui/widget/ScrollDoubleLayout/lot_user3_name Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/lot_user3_prise I
invokevirtual com/product/android/ui/widget/ScrollDoubleLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/product/android/ui/widget/ScrollDoubleLayout/lot_user3_prise Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/lot_user3_time I
invokevirtual com/product/android/ui/widget/ScrollDoubleLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/product/android/ui/widget/ScrollDoubleLayout/lot_user3_time Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/lot_user4 I
invokevirtual com/product/android/ui/widget/ScrollDoubleLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/product/android/ui/widget/ScrollDoubleLayout/lot_user4 Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/lot_user4_head I
invokevirtual com/product/android/ui/widget/ScrollDoubleLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/product/android/ui/widget/ScrollDoubleLayout/lot_user4_head Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/lot_user4_depart I
invokevirtual com/product/android/ui/widget/ScrollDoubleLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/product/android/ui/widget/ScrollDoubleLayout/lot_user4_depart Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/lot_user4_name I
invokevirtual com/product/android/ui/widget/ScrollDoubleLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/product/android/ui/widget/ScrollDoubleLayout/lot_user4_name Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/lot_user4_prise I
invokevirtual com/product/android/ui/widget/ScrollDoubleLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/product/android/ui/widget/ScrollDoubleLayout/lot_user4_prise Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/lot_user4_time I
invokevirtual com/product/android/ui/widget/ScrollDoubleLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/product/android/ui/widget/ScrollDoubleLayout/lot_user4_time Landroid/widget/TextView;
aload 0
invokespecial com/product/android/ui/widget/ScrollDoubleLayout/init()V
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$000(Lcom/product/android/ui/widget/ScrollDoubleLayout;)I
aload 0
getfield com/product/android/ui/widget/ScrollDoubleLayout/currentP12 I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$002(Lcom/product/android/ui/widget/ScrollDoubleLayout;I)I
aload 0
iload 1
putfield com/product/android/ui/widget/ScrollDoubleLayout/currentP12 I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$008(Lcom/product/android/ui/widget/ScrollDoubleLayout;)I
aload 0
getfield com/product/android/ui/widget/ScrollDoubleLayout/currentP12 I
istore 1
aload 0
iload 1
iconst_1
iadd
putfield com/product/android/ui/widget/ScrollDoubleLayout/currentP12 I
iload 1
ireturn
.limit locals 2
.limit stack 3
.end method

.method static synthetic access$100(Lcom/product/android/ui/widget/ScrollDoubleLayout;)I
aload 0
getfield com/product/android/ui/widget/ScrollDoubleLayout/currentP34 I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/product/android/ui/widget/ScrollDoubleLayout;I)I
aload 0
iload 1
putfield com/product/android/ui/widget/ScrollDoubleLayout/currentP34 I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$108(Lcom/product/android/ui/widget/ScrollDoubleLayout;)I
aload 0
getfield com/product/android/ui/widget/ScrollDoubleLayout/currentP34 I
istore 1
aload 0
iload 1
iconst_1
iadd
putfield com/product/android/ui/widget/ScrollDoubleLayout/currentP34 I
iload 1
ireturn
.limit locals 2
.limit stack 3
.end method

.method static synthetic access$200(Lcom/product/android/ui/widget/ScrollDoubleLayout;)I
aload 0
getfield com/product/android/ui/widget/ScrollDoubleLayout/flag I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$202(Lcom/product/android/ui/widget/ScrollDoubleLayout;I)I
aload 0
iload 1
putfield com/product/android/ui/widget/ScrollDoubleLayout/flag I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/product/android/ui/widget/ScrollDoubleLayout;JLandroid/widget/ImageView;)V
aload 0
lload 1
aload 3
invokespecial com/product/android/ui/widget/ScrollDoubleLayout/displayHeadImageView(JLandroid/widget/ImageView;)V
return
.limit locals 4
.limit stack 4
.end method

.method private displayHeadImageView(JLandroid/widget/ImageView;)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 4
aload 4
lload 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 10002
aload 4
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
lload 1
aload 4
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 3
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
return
.limit locals 5
.limit stack 4
.end method

.method private init()V
aload 0
new android/view/animation/AnimationSet
dup
iconst_1
invokespecial android/view/animation/AnimationSet/<init>(Z)V
putfield com/product/android/ui/widget/ScrollDoubleLayout/animationSet1 Landroid/view/animation/AnimationSet;
aload 0
new android/view/animation/AnimationSet
dup
iconst_1
invokespecial android/view/animation/AnimationSet/<init>(Z)V
putfield com/product/android/ui/widget/ScrollDoubleLayout/animationSet2 Landroid/view/animation/AnimationSet;
new android/view/animation/TranslateAnimation
dup
iconst_1
fconst_0
iconst_1
ldc_w -1.0F
iconst_1
fconst_0
iconst_1
fconst_0
invokespecial android/view/animation/TranslateAnimation/<init>(IFIFIFIF)V
astore 1
aload 1
aload 0
getfield com/product/android/ui/widget/ScrollDoubleLayout/outtime I
i2l
invokevirtual android/view/animation/TranslateAnimation/setDuration(J)V
aload 0
getfield com/product/android/ui/widget/ScrollDoubleLayout/animationSet1 Landroid/view/animation/AnimationSet;
aload 1
invokevirtual android/view/animation/AnimationSet/addAnimation(Landroid/view/animation/Animation;)V
aload 0
getfield com/product/android/ui/widget/ScrollDoubleLayout/animationSet1 Landroid/view/animation/AnimationSet;
iconst_1
invokevirtual android/view/animation/AnimationSet/setFillAfter(Z)V
new android/view/animation/TranslateAnimation
dup
iconst_1
fconst_1
iconst_1
fconst_0
iconst_1
fconst_0
iconst_1
fconst_0
invokespecial android/view/animation/TranslateAnimation/<init>(IFIFIFIF)V
astore 1
aload 1
aload 0
getfield com/product/android/ui/widget/ScrollDoubleLayout/intime I
i2l
invokevirtual android/view/animation/TranslateAnimation/setDuration(J)V
aload 0
getfield com/product/android/ui/widget/ScrollDoubleLayout/animationSet2 Landroid/view/animation/AnimationSet;
aload 1
invokevirtual android/view/animation/AnimationSet/addAnimation(Landroid/view/animation/Animation;)V
aload 0
getfield com/product/android/ui/widget/ScrollDoubleLayout/animationSet2 Landroid/view/animation/AnimationSet;
iconst_1
invokevirtual android/view/animation/AnimationSet/setFillAfter(Z)V
return
.limit locals 2
.limit stack 10
.end method

.method public beforeUpdate()V
aload 0
getfield com/product/android/ui/widget/ScrollDoubleLayout/timer Ljava/util/Timer;
ifnull L0
aload 0
getfield com/product/android/ui/widget/ScrollDoubleLayout/timer Ljava/util/Timer;
invokevirtual java/util/Timer/cancel()V
aload 0
aconst_null
putfield com/product/android/ui/widget/ScrollDoubleLayout/timer Ljava/util/Timer;
L0:
aload 0
getfield com/product/android/ui/widget/ScrollDoubleLayout/task Ljava/util/TimerTask;
ifnull L1
aload 0
getfield com/product/android/ui/widget/ScrollDoubleLayout/task Ljava/util/TimerTask;
invokevirtual java/util/TimerTask/cancel()Z
pop
aload 0
aconst_null
putfield com/product/android/ui/widget/ScrollDoubleLayout/task Ljava/util/TimerTask;
L1:
getstatic com/product/android/ui/widget/ScrollDoubleLayout/mdata12 Ljava/util/List;
invokeinterface java/util/List/clear()V 0
getstatic com/product/android/ui/widget/ScrollDoubleLayout/mdata34 Ljava/util/List;
invokeinterface java/util/List/clear()V 0
return
.limit locals 1
.limit stack 2
.end method

.method public setData12(Ljava/util/List;)V
.signature "(Ljava/util/List<[Ljava/lang/String;>;)V"
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/size()I 0
ifeq L0
getstatic com/product/android/ui/widget/ScrollDoubleLayout/mdata12 Ljava/util/List;
invokeinterface java/util/List/clear()V 0
getstatic com/product/android/ui/widget/ScrollDoubleLayout/mdata12 Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L0:
return
.limit locals 2
.limit stack 2
.end method

.method protected setDepartment(Landroid/widget/TextView;Ljava/lang/String;)V
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
aload 1
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
return
L0:
aload 1
aload 2
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 3
.limit stack 2
.end method

.method public setPeriod(I)V
aload 0
iload 1
putfield com/product/android/ui/widget/ScrollDoubleLayout/period I
return
.limit locals 2
.limit stack 2
.end method

.method public setVisibility(Z)V
iload 1
ifeq L0
aload 0
iconst_0
invokevirtual com/product/android/ui/widget/ScrollDoubleLayout/setVisibility(I)V
return
L0:
aload 0
bipush 8
invokevirtual com/product/android/ui/widget/ScrollDoubleLayout/setVisibility(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public update()V
getstatic com/product/android/ui/widget/ScrollDoubleLayout/mdata12 Ljava/util/List;
ifnonnull L0
getstatic com/product/android/ui/widget/ScrollDoubleLayout/mdata34 Ljava/util/List;
ifnonnull L0
L1:
return
L0:
getstatic com/product/android/ui/widget/ScrollDoubleLayout/mdata12 Ljava/util/List;
ifnull L2
getstatic com/product/android/ui/widget/ScrollDoubleLayout/mdata34 Ljava/util/List;
ifnull L2
getstatic com/product/android/ui/widget/ScrollDoubleLayout/mdata12 Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifne L2
getstatic com/product/android/ui/widget/ScrollDoubleLayout/mdata34 Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifeq L1
L2:
getstatic com/product/android/ui/widget/ScrollDoubleLayout/mdata12 Ljava/util/List;
ifnull L3
getstatic com/product/android/ui/widget/ScrollDoubleLayout/mdata12 Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifle L3
aload 0
iconst_0
putfield com/product/android/ui/widget/ScrollDoubleLayout/currentP12 I
L4:
getstatic com/product/android/ui/widget/ScrollDoubleLayout/mdata34 Ljava/util/List;
ifnull L5
getstatic com/product/android/ui/widget/ScrollDoubleLayout/mdata34 Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifle L5
aload 0
iconst_0
putfield com/product/android/ui/widget/ScrollDoubleLayout/currentP34 I
L6:
aload 0
iconst_1
invokevirtual com/product/android/ui/widget/ScrollDoubleLayout/setVisibility(Z)V
aload 0
getfield com/product/android/ui/widget/ScrollDoubleLayout/task Ljava/util/TimerTask;
ifnonnull L1
aload 0
new com/product/android/ui/widget/ScrollDoubleLayout$1
dup
aload 0
invokespecial com/product/android/ui/widget/ScrollDoubleLayout$1/<init>(Lcom/product/android/ui/widget/ScrollDoubleLayout;)V
putfield com/product/android/ui/widget/ScrollDoubleLayout/task Ljava/util/TimerTask;
aload 0
new java/util/Timer
dup
invokespecial java/util/Timer/<init>()V
putfield com/product/android/ui/widget/ScrollDoubleLayout/timer Ljava/util/Timer;
aload 0
getfield com/product/android/ui/widget/ScrollDoubleLayout/timer Ljava/util/Timer;
aload 0
getfield com/product/android/ui/widget/ScrollDoubleLayout/task Ljava/util/TimerTask;
lconst_0
aload 0
getfield com/product/android/ui/widget/ScrollDoubleLayout/period I
i2l
invokevirtual java/util/Timer/schedule(Ljava/util/TimerTask;JJ)V
return
L3:
aload 0
iconst_m1
putfield com/product/android/ui/widget/ScrollDoubleLayout/currentP12 I
goto L4
L5:
aload 0
iconst_m1
putfield com/product/android/ui/widget/ScrollDoubleLayout/currentP34 I
goto L6
.limit locals 1
.limit stack 6
.end method

.method public update(Ljava/util/List;Ljava/util/List;)V
.signature "(Ljava/util/List<[Ljava/lang/String;>;Ljava/util/List<[Ljava/lang/String;>;)V"
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/size()I 0
ifeq L0
getstatic com/product/android/ui/widget/ScrollDoubleLayout/mdata12 Ljava/util/List;
invokeinterface java/util/List/clear()V 0
getstatic com/product/android/ui/widget/ScrollDoubleLayout/mdata12 Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L0:
aload 2
ifnull L1
aload 2
invokeinterface java/util/List/size()I 0
ifeq L1
getstatic com/product/android/ui/widget/ScrollDoubleLayout/mdata34 Ljava/util/List;
invokeinterface java/util/List/clear()V 0
getstatic com/product/android/ui/widget/ScrollDoubleLayout/mdata34 Ljava/util/List;
aload 2
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L1:
aload 0
invokevirtual com/product/android/ui/widget/ScrollDoubleLayout/update()V
return
.limit locals 3
.limit stack 2
.end method
