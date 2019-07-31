.bytecode 50.0
.class public synchronized com/nd/android/u/tast/experience/view/PortraitLevel
.super android/widget/RelativeLayout

.field private 'mContext' Landroid/content/Context;

.field private 'mLevel' Landroid/widget/TextView;

.field private 'mPB' Lcom/nd/android/u/tast/experience/common/NDGradeProgressBar;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/RelativeLayout/<init>(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/tast/experience/view/PortraitLevel/mContext Landroid/content/Context;
aload 0
invokespecial com/nd/android/u/tast/experience/view/PortraitLevel/init()V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/RelativeLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
invokespecial com/nd/android/u/tast/experience/view/PortraitLevel/init()V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial android/widget/RelativeLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
invokespecial com/nd/android/u/tast/experience/view/PortraitLevel/init()V
return
.limit locals 4
.limit stack 4
.end method

.method private init()V
aload 0
invokevirtual com/nd/android/u/tast/experience/view/PortraitLevel/getContext()Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/tasklib/R$layout/portrait_level I
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
aload 0
getstatic com/nd/android/u/tasklib/R$id/portrait I
invokevirtual com/nd/android/u/tast/experience/view/PortraitLevel/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
astore 3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUid()J
lstore 1
lload 1
lload 1
invokestatic com/nd/android/u/tast/taskInterfaceImpl/TaskCallOtherModel/toContactGetSysAvatarID(J)I
aload 3
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/level_num I
invokevirtual com/nd/android/u/tast/experience/view/PortraitLevel/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/experience/view/PortraitLevel/mLevel Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/pb I
invokevirtual com/nd/android/u/tast/experience/view/PortraitLevel/findViewById(I)Landroid/view/View;
checkcast com/nd/android/u/tast/experience/common/NDGradeProgressBar
putfield com/nd/android/u/tast/experience/view/PortraitLevel/mPB Lcom/nd/android/u/tast/experience/common/NDGradeProgressBar;
aload 0
getfield com/nd/android/u/tast/experience/view/PortraitLevel/mPB Lcom/nd/android/u/tast/experience/common/NDGradeProgressBar;
getstatic com/nd/android/u/tasklib/R$drawable/gradeprogressbar I
invokevirtual com/nd/android/u/tast/experience/common/NDGradeProgressBar/setBarBackground(I)V
aload 0
getfield com/nd/android/u/tast/experience/view/PortraitLevel/mPB Lcom/nd/android/u/tast/experience/common/NDGradeProgressBar;
iconst_m1
invokevirtual com/nd/android/u/tast/experience/common/NDGradeProgressBar/setTextColor(I)V
aload 0
getfield com/nd/android/u/tast/experience/view/PortraitLevel/mPB Lcom/nd/android/u/tast/experience/common/NDGradeProgressBar;
bipush 10
invokevirtual com/nd/android/u/tast/experience/common/NDGradeProgressBar/setTextSize(I)V
aload 0
invokevirtual com/nd/android/u/tast/experience/view/PortraitLevel/updateUI()V
return
.limit locals 4
.limit stack 4
.end method

.method public updateUI()V
invokestatic com/nd/android/u/tast/TaskGlobalVariable/getInstance()Lcom/nd/android/u/tast/TaskGlobalVariable;
getfield com/nd/android/u/tast/TaskGlobalVariable/mOapScore Lcom/product/android/commonInterface/task/OapScore;
astore 4
aload 0
getfield com/nd/android/u/tast/experience/view/PortraitLevel/mLevel Landroid/widget/TextView;
aload 4
invokevirtual com/product/android/commonInterface/task/OapScore/getLevel()I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 4
invokevirtual com/product/android/commonInterface/task/OapScore/getTotalexp()I
istore 3
aload 4
invokevirtual com/product/android/commonInterface/task/OapScore/getMinscore()I
istore 1
aload 4
invokevirtual com/product/android/commonInterface/task/OapScore/getMaxscore()I
istore 2
iload 3
iload 1
isub
istore 3
iload 3
i2d
ldc2_w 100.0D
dmul
iload 2
iload 1
isub
i2d
dconst_1
dmul
ddiv
d2i
istore 1
aload 0
getfield com/nd/android/u/tast/experience/view/PortraitLevel/mPB Lcom/nd/android/u/tast/experience/common/NDGradeProgressBar;
iload 1
invokevirtual com/nd/android/u/tast/experience/common/NDGradeProgressBar/setProgress(I)V
aload 0
getfield com/nd/android/u/tast/experience/view/PortraitLevel/mPB Lcom/nd/android/u/tast/experience/common/NDGradeProgressBar;
iload 3
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual com/nd/android/u/tast/experience/common/NDGradeProgressBar/setText(Ljava/lang/String;)V
return
.limit locals 5
.limit stack 6
.end method
