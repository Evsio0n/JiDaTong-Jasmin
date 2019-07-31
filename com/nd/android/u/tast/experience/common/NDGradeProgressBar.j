.bytecode 50.0
.class public synchronized com/nd/android/u/tast/experience/common/NDGradeProgressBar
.super android/widget/FrameLayout

.field private 'bar' Landroid/widget/ProgressBar;

.field private 'context' Landroid/content/Context;

.field private 'txtNum' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/FrameLayout/<init>(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/tast/experience/common/NDGradeProgressBar/context Landroid/content/Context;
aload 0
invokespecial com/nd/android/u/tast/experience/common/NDGradeProgressBar/initControl()V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/FrameLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
putfield com/nd/android/u/tast/experience/common/NDGradeProgressBar/context Landroid/content/Context;
aload 0
invokespecial com/nd/android/u/tast/experience/common/NDGradeProgressBar/initControl()V
return
.limit locals 3
.limit stack 3
.end method

.method private initControl()V
aload 0
new android/widget/ProgressBar
dup
aload 0
getfield com/nd/android/u/tast/experience/common/NDGradeProgressBar/context Landroid/content/Context;
aconst_null
ldc_w 16842872
invokespecial android/widget/ProgressBar/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
putfield com/nd/android/u/tast/experience/common/NDGradeProgressBar/bar Landroid/widget/ProgressBar;
new android/widget/FrameLayout$LayoutParams
dup
iconst_m1
iconst_m1
invokespecial android/widget/FrameLayout$LayoutParams/<init>(II)V
astore 1
aload 0
getfield com/nd/android/u/tast/experience/common/NDGradeProgressBar/bar Landroid/widget/ProgressBar;
aload 1
invokevirtual android/widget/ProgressBar/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/nd/android/u/tast/experience/common/NDGradeProgressBar/bar Landroid/widget/ProgressBar;
bipush 100
invokevirtual android/widget/ProgressBar/setMax(I)V
aload 0
aload 0
getfield com/nd/android/u/tast/experience/common/NDGradeProgressBar/bar Landroid/widget/ProgressBar;
invokevirtual com/nd/android/u/tast/experience/common/NDGradeProgressBar/addView(Landroid/view/View;)V
aload 0
new android/widget/TextView
dup
aload 0
getfield com/nd/android/u/tast/experience/common/NDGradeProgressBar/context Landroid/content/Context;
invokespecial android/widget/TextView/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/tast/experience/common/NDGradeProgressBar/txtNum Landroid/widget/TextView;
new android/widget/FrameLayout$LayoutParams
dup
bipush -2
iconst_m1
invokespecial android/widget/FrameLayout$LayoutParams/<init>(II)V
astore 1
aload 1
bipush 16
putfield android/widget/FrameLayout$LayoutParams/gravity I
aload 1
bipush 10
iconst_0
iconst_0
iconst_0
invokevirtual android/widget/FrameLayout$LayoutParams/setMargins(IIII)V
aload 0
getfield com/nd/android/u/tast/experience/common/NDGradeProgressBar/txtNum Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
aload 0
getfield com/nd/android/u/tast/experience/common/NDGradeProgressBar/txtNum Landroid/widget/TextView;
invokevirtual com/nd/android/u/tast/experience/common/NDGradeProgressBar/addView(Landroid/view/View;)V
return
.limit locals 2
.limit stack 6
.end method

.method public setBarBackground(I)V
aload 0
getfield com/nd/android/u/tast/experience/common/NDGradeProgressBar/bar Landroid/widget/ProgressBar;
aload 0
getfield com/nd/android/u/tast/experience/common/NDGradeProgressBar/context Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
iload 1
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
invokevirtual android/widget/ProgressBar/setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
return
.limit locals 2
.limit stack 3
.end method

.method public setProgress(I)V
aload 0
getfield com/nd/android/u/tast/experience/common/NDGradeProgressBar/bar Landroid/widget/ProgressBar;
iload 1
invokevirtual android/widget/ProgressBar/setProgress(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setText(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/tast/experience/common/NDGradeProgressBar/txtNum Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setTextColor(I)V
aload 0
getfield com/nd/android/u/tast/experience/common/NDGradeProgressBar/txtNum Landroid/widget/TextView;
iload 1
invokevirtual android/widget/TextView/setTextColor(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setTextSize(I)V
aload 0
getfield com/nd/android/u/tast/experience/common/NDGradeProgressBar/txtNum Landroid/widget/TextView;
iload 1
i2f
invokevirtual android/widget/TextView/setTextSize(F)V
return
.limit locals 2
.limit stack 2
.end method
