.bytecode 50.0
.class public synchronized com/android/u/weibo/flower/ui/dialog/SendFlowerDialog
.super android/app/Dialog
.implements com/common/android/ui/wheel/OnWheelScrollListener
.inner class inner com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$1
.inner class inner com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$2
.inner class inner com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$3
.inner class public DoSendFlowersTask inner com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$DoSendFlowersTask outer com/android/u/weibo/flower/ui/dialog/SendFlowerDialog
.inner class public GetFlowerNumTask inner com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$GetFlowerNumTask outer com/android/u/weibo/flower/ui/dialog/SendFlowerDialog

.field private 'OnBtnClick' Landroid/view/View$OnClickListener;

.field private 'btn_cancel' Landroid/widget/Button;

.field private 'btn_largess' Landroid/widget/Button;

.field 'mContext' Landroid/content/Context;

.field public 'mFlowerNum' I

.field public 'mFromBackSys' Z

.field protected 'mGetFlowerNumTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field public 'mItemId' J

.field protected 'mSendFlowersTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'mShow' Z

.field private 'mToUid' J

.field private 'm_dialog' Landroid/app/ProgressDialog;

.field public 'myGetFlowerNumListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field 'myListener' Lcom/product/android/commonInterface/weibo/ISendFlowerDialogListener;

.field public 'mySendFlowerListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'tv_flower_left_num' Landroid/widget/TextView;

.field private 'tv_send_name' Landroid/widget/TextView;

.field private 'wheelNum' Lcom/common/android/ui/wheel/WheelView;

.field private 'window' Landroid/view/Window;

.method public <init>(Landroid/content/Context;Lcom/product/android/commonInterface/weibo/ISendFlowerDialogListener;)V
aload 0
aload 1
getstatic com/android/u/weibo/R$style/Style_Self_Info_Dlg I
invokespecial android/app/Dialog/<init>(Landroid/content/Context;I)V
aload 0
aconst_null
putfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/window Landroid/view/Window;
aload 0
iconst_0
putfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mShow Z
aload 0
lconst_0
putfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mItemId J
aload 0
iconst_0
putfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mFromBackSys Z
aload 0
new com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$1
dup
aload 0
invokespecial com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$1/<init>(Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;)V
putfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/OnBtnClick Landroid/view/View$OnClickListener;
aload 0
new com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$2
dup
aload 0
invokespecial com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$2/<init>(Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;)V
putfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mySendFlowerListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
new com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$3
dup
aload 0
invokespecial com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$3/<init>(Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;)V
putfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/myGetFlowerNumListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
aload 1
putfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mContext Landroid/content/Context;
aload 0
aload 2
putfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/myListener Lcom/product/android/commonInterface/weibo/ISendFlowerDialogListener;
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$000(Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;)Lcom/common/android/ui/wheel/WheelView;
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/wheelNum Lcom/common/android/ui/wheel/WheelView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;)J
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mToUid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$200(Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;)Landroid/app/ProgressDialog;
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/m_dialog Landroid/app/ProgressDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$202(Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
aload 0
aload 1
putfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/m_dialog Landroid/app/ProgressDialog;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;Lcom/common/android/ui/wheel/WheelView;IIZ)Lcom/common/android/ui/wheel/NumericWheelAdapter;
aload 0
aload 1
iload 2
iload 3
iload 4
invokespecial com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/initWheel(Lcom/common/android/ui/wheel/WheelView;IIZ)Lcom/common/android/ui/wheel/NumericWheelAdapter;
areturn
.limit locals 5
.limit stack 5
.end method

.method static synthetic access$400(Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;)Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/tv_flower_left_num Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;)Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/btn_largess Landroid/widget/Button;
areturn
.limit locals 1
.limit stack 1
.end method

.method private getUserComment(J)Ljava/lang/String;
lload 1
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/getLocalOapUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 3
aload 3
ifnull L0
aload 3
invokevirtual com/product/android/commonInterface/contact/OapUser/getComment()Ljava/lang/String;
areturn
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 4
.limit stack 3
.end method

.method private initWheel(Lcom/common/android/ui/wheel/WheelView;IIZ)Lcom/common/android/ui/wheel/NumericWheelAdapter;
new com/common/android/ui/wheel/NumericWheelAdapter
dup
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mContext Landroid/content/Context;
iload 2
iload 3
ldc "%d"
invokespecial com/common/android/ui/wheel/NumericWheelAdapter/<init>(Landroid/content/Context;IILjava/lang/String;)V
astore 5
aload 5
ldc_w -16777216
invokevirtual com/common/android/ui/wheel/NumericWheelAdapter/setTextColor(I)V
aload 1
aload 5
invokevirtual com/common/android/ui/wheel/WheelView/setViewAdapter(Lcom/common/android/ui/wheel/WheelViewAdapter;)V
aload 1
iload 4
invokevirtual com/common/android/ui/wheel/WheelView/setCyclic(Z)V
aload 1
iconst_3
invokevirtual com/common/android/ui/wheel/WheelView/setVisibleItems(I)V
aload 1
aload 0
invokevirtual com/common/android/ui/wheel/WheelView/addScrollingListener(Lcom/common/android/ui/wheel/OnWheelScrollListener;)V
aload 5
areturn
.limit locals 6
.limit stack 6
.end method

.method private setView()V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/tv_send_name I
invokevirtual com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/tv_send_name Landroid/widget/TextView;
aload 0
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mToUid J
invokespecial com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/getUserComment(J)Ljava/lang/String;
astore 1
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/tv_send_name Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mContext Landroid/content/Context;
getstatic com/android/u/weibo/R$string/send_flower_to_name I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 1
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/tv_flower_left_num I
invokevirtual com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/tv_flower_left_num Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/btn_cancel I
invokevirtual com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/btn_cancel Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/btn_cancel Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/OnBtnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/btn_largess I
invokevirtual com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/btn_largess Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/btn_largess Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/OnBtnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/wheel_num I
invokevirtual com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/findViewById(I)Landroid/view/View;
checkcast com/common/android/ui/wheel/WheelView
putfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/wheelNum Lcom/common/android/ui/wheel/WheelView;
return
.limit locals 2
.limit stack 7
.end method

.method public dismissDialogL()V
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mGetFlowerNumTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mGetFlowerNumTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mGetFlowerNumTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L0:
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/myListener Lcom/product/android/commonInterface/weibo/ISendFlowerDialogListener;
ifnull L1
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/myListener Lcom/product/android/commonInterface/weibo/ISendFlowerDialogListener;
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mContext Landroid/content/Context;
invokeinterface com/product/android/commonInterface/weibo/ISendFlowerDialogListener/onCancel(Landroid/content/Context;)V 1
L1:
aload 0
invokevirtual com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/dismiss()V
aload 0
iconst_0
putfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mShow Z
invokestatic java/lang/System/gc()V
return
.limit locals 1
.limit stack 2
.end method

.method protected getFlowerNum()V
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mGetFlowerNumTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mGetFlowerNumTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$GetFlowerNumTask
dup
aload 0
invokespecial com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$GetFlowerNumTask/<init>(Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;)V
putfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mGetFlowerNumTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mGetFlowerNumTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/myGetFlowerNumListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mGetFlowerNumTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 1
aastore
invokevirtual com/common/android/utils/task/genericTask/GenericTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 2
.limit stack 5
.end method

.method public isShow()Z
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mShow Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public onBackPressed()V
aload 0
invokevirtual com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/dismissDialogL()V
return
.limit locals 1
.limit stack 1
.end method

.method public onScrollingFinished(Lcom/common/android/ui/wheel/WheelView;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onScrollingStarted(Lcom/common/android/ui/wheel/WheelView;)V
return
.limit locals 2
.limit stack 0
.end method

.method public showDialog(J)V
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mShow Z
ifeq L0
L1:
return
L0:
aload 0
iconst_1
invokevirtual com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/requestWindowFeature(I)Z
pop
aload 0
getstatic com/android/u/weibo/R$layout/send_flower_dialog I
invokevirtual com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/setContentView(I)V
aload 0
lload 1
putfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mToUid J
aload 0
invokespecial com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/setView()V
aload 0
aload 0
invokevirtual com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/getWindow()Landroid/view/Window;
putfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/window Landroid/view/Window;
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/window Landroid/view/Window;
bipush 17
invokevirtual android/view/Window/setGravity(I)V
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/window Landroid/view/Window;
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/deal_success_green I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/view/Window/setTitleColor(I)V
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/window Landroid/view/Window;
new android/graphics/drawable/GradientDrawable
dup
getstatic android/graphics/drawable/GradientDrawable$Orientation/LEFT_RIGHT Landroid/graphics/drawable/GradientDrawable$Orientation;
iconst_3
newarray int
dup
iconst_0
ldc_w -2060702675
iastore
dup
iconst_1
ldc_w -2060702675
iastore
dup
iconst_2
ldc_w -2060702675
iastore
invokespecial android/graphics/drawable/GradientDrawable/<init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
invokevirtual android/view/Window/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
iconst_1
putfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mShow Z
aload 0
invokevirtual com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/show()V
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mFromBackSys Z
ifne L2
getstatic com/android/u/weibo/weibo/controller/GlobalSetting/flowerNum I
ifgt L2
aload 0
invokevirtual com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/getFlowerNum()V
return
L2:
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/wheelNum Lcom/common/android/ui/wheel/WheelView;
iconst_0
invokevirtual com/common/android/ui/wheel/WheelView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mFromBackSys Z
ifeq L3
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mFlowerNum I
ifle L3
aload 0
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/wheelNum Lcom/common/android/ui/wheel/WheelView;
iconst_1
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mFlowerNum I
iconst_0
invokespecial com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/initWheel(Lcom/common/android/ui/wheel/WheelView;IIZ)Lcom/common/android/ui/wheel/NumericWheelAdapter;
pop
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/tv_flower_left_num Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mContext Landroid/content/Context;
getstatic com/android/u/weibo/R$string/send_flower_flower_num I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mFlowerNum I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L3:
aload 0
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/wheelNum Lcom/common/android/ui/wheel/WheelView;
iconst_1
getstatic com/android/u/weibo/weibo/controller/GlobalSetting/flowerNum I
iconst_0
invokespecial com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/initWheel(Lcom/common/android/ui/wheel/WheelView;IIZ)Lcom/common/android/ui/wheel/NumericWheelAdapter;
pop
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/wheelNum Lcom/common/android/ui/wheel/WheelView;
iconst_0
iconst_0
invokevirtual com/common/android/ui/wheel/WheelView/setCurrentItem(IZ)V
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/tv_flower_left_num Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mContext Landroid/content/Context;
getstatic com/android/u/weibo/R$string/send_flower_flower_num I
iconst_1
anewarray java/lang/Object
dup
iconst_0
getstatic com/android/u/weibo/weibo/controller/GlobalSetting/flowerNum I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
getstatic com/android/u/weibo/weibo/controller/GlobalSetting/flowerNum I
ifgt L1
getstatic com/android/u/weibo/R$string/no_flowers I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
.limit locals 3
.limit stack 8
.end method

.method public showSendSuccessPopupWindow(Ljava/lang/String;Ljava/lang/String;I)V
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mContext Landroid/content/Context;
checkcast android/app/Activity
invokevirtual android/app/Activity/isFinishing()Z
ifeq L0
return
L0:
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/android/u/weibo/R$layout/pop_flower_sendsuccess I
aconst_null
iconst_0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
astore 8
aload 8
getstatic com/android/u/weibo/R$id/tv_img I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 9
aload 8
getstatic com/android/u/weibo/R$id/tv_title I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 8
getstatic com/android/u/weibo/R$id/tv_content I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 2
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
getstatic com/android/u/weibo/R$drawable/emoji_112_e057 I
istore 4
getstatic com/android/u/weibo/R$drawable/emoji_311_e14c I
istore 5
getstatic com/android/u/weibo/R$drawable/send_flower_nonebg I
istore 6
getstatic com/android/u/weibo/R$drawable/emoji_311_e14c I
istore 7
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
iconst_4
newarray int
dup
iconst_0
iload 4
iastore
dup
iconst_1
iload 5
iastore
dup
iconst_2
iload 6
iastore
dup
iconst_3
iload 7
iastore
iload 3
iaload
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
astore 1
aload 1
iconst_0
iconst_0
aload 1
invokevirtual android/graphics/drawable/Drawable/getMinimumWidth()I
aload 1
invokevirtual android/graphics/drawable/Drawable/getMinimumHeight()I
invokevirtual android/graphics/drawable/Drawable/setBounds(IIII)V
aload 9
aload 1
aconst_null
aconst_null
aconst_null
invokevirtual android/widget/TextView/setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
iload 3
iconst_2
if_icmpne L1
aload 9
ldc "+1"
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L1:
new android/widget/Toast
dup
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mContext Landroid/content/Context;
invokespecial android/widget/Toast/<init>(Landroid/content/Context;)V
astore 1
aload 1
aload 8
invokevirtual android/widget/Toast/setView(Landroid/view/View;)V
aload 1
bipush 17
iconst_0
iconst_0
invokevirtual android/widget/Toast/setGravity(III)V
aload 1
iconst_1
invokevirtual android/widget/Toast/setDuration(I)V
aload 1
invokevirtual android/widget/Toast/show()V
return
.limit locals 10
.limit stack 5
.end method

.method protected startLargess(I)V
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mSendFlowersTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mSendFlowersTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$DoSendFlowersTask
dup
aload 0
invokespecial com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$DoSendFlowersTask/<init>(Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;)V
putfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mSendFlowersTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mSendFlowersTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mySendFlowerListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 2
aload 2
ldc "num"
iload 1
invokevirtual com/common/android/utils/task/genericTask/TaskParams/put(Ljava/lang/String;I)V
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mSendFlowersTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 2
aastore
invokevirtual com/common/android/utils/task/genericTask/GenericTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 3
.limit stack 5
.end method
