.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/view/widge/MessageRecordsView
.super android/widget/LinearLayout
.inner class inner com/nd/android/u/cloud/view/widge/MessageRecordsView$1
.inner class inner com/nd/android/u/cloud/view/widge/MessageRecordsView$2

.field private 'im_logo' Landroid/widget/ImageView;

.field private 'isShowFlag' Z

.field private 'longclicklistener' Landroid/view/View$OnLongClickListener;

.field private 'mcontext' Landroid/content/Context;

.field private 'messageIcon' Landroid/widget/ImageButton;

.field private 'message_logo' Landroid/widget/ImageView;

.field private 'messageinfo' Lcom/nd/android/u/contact/dataStructure/MessageInfo;

.field private 'messagerecords_layout' Landroid/widget/LinearLayout;

.field private 'msg' Landroid/widget/TextView;

.field private 'myHandler' Landroid/os/Handler;

.field protected 'myonclicklistener' Landroid/view/View$OnClickListener;

.field private 'nametext' Landroid/widget/TextView;

.field private 'record_cb' Landroid/widget/CheckBox;

.field private 'romovelist' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/android/u/contact/dataStructure/MessageInfo;>;"

.field private 'sendstatus' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;)V
.signature "(Landroid/content/Context;Ljava/util/ArrayList<Lcom/nd/android/u/contact/dataStructure/MessageInfo;>;Landroid/os/Handler;)V"
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
new com/nd/android/u/cloud/view/widge/MessageRecordsView$1
dup
aload 0
invokespecial com/nd/android/u/cloud/view/widge/MessageRecordsView$1/<init>(Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;)V
putfield com/nd/android/u/cloud/view/widge/MessageRecordsView/longclicklistener Landroid/view/View$OnLongClickListener;
aload 0
new com/nd/android/u/cloud/view/widge/MessageRecordsView$2
dup
aload 0
invokespecial com/nd/android/u/cloud/view/widge/MessageRecordsView$2/<init>(Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;)V
putfield com/nd/android/u/cloud/view/widge/MessageRecordsView/myonclicklistener Landroid/view/View$OnClickListener;
aload 0
aload 3
putfield com/nd/android/u/cloud/view/widge/MessageRecordsView/myHandler Landroid/os/Handler;
aload 0
aload 2
putfield com/nd/android/u/cloud/view/widge/MessageRecordsView/romovelist Ljava/util/ArrayList;
aload 0
aload 1
putfield com/nd/android/u/cloud/view/widge/MessageRecordsView/mcontext Landroid/content/Context;
aload 0
invokevirtual com/nd/android/u/cloud/view/widge/MessageRecordsView/getView()V
return
.limit locals 4
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;)Landroid/widget/CheckBox;
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView/record_cb Landroid/widget/CheckBox;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView/mcontext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;)Lcom/nd/android/u/contact/dataStructure/MessageInfo;
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView/messageinfo Lcom/nd/android/u/contact/dataStructure/MessageInfo;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView/myHandler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;)Z
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView/isShowFlag Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView/romovelist Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getView()V
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView/mcontext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
ldc_w 2130903493
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
aload 0
aload 0
ldc_w 2131625988
invokevirtual com/nd/android/u/cloud/view/widge/MessageRecordsView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/view/widge/MessageRecordsView/nametext Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131625989
invokevirtual com/nd/android/u/cloud/view/widge/MessageRecordsView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/view/widge/MessageRecordsView/msg Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131625991
invokevirtual com/nd/android/u/cloud/view/widge/MessageRecordsView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/view/widge/MessageRecordsView/sendstatus Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131625993
invokevirtual com/nd/android/u/cloud/view/widge/MessageRecordsView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/view/widge/MessageRecordsView/im_logo Landroid/widget/ImageView;
aload 0
aload 0
ldc_w 2131625994
invokevirtual com/nd/android/u/cloud/view/widge/MessageRecordsView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/view/widge/MessageRecordsView/message_logo Landroid/widget/ImageView;
aload 0
aload 0
ldc_w 2131625987
invokevirtual com/nd/android/u/cloud/view/widge/MessageRecordsView/findViewById(I)Landroid/view/View;
checkcast android/widget/CheckBox
putfield com/nd/android/u/cloud/view/widge/MessageRecordsView/record_cb Landroid/widget/CheckBox;
aload 0
aload 0
ldc_w 2131625990
invokevirtual com/nd/android/u/cloud/view/widge/MessageRecordsView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageButton
putfield com/nd/android/u/cloud/view/widge/MessageRecordsView/messageIcon Landroid/widget/ImageButton;
aload 0
aload 0
ldc_w 2131625986
invokevirtual com/nd/android/u/cloud/view/widge/MessageRecordsView/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/cloud/view/widge/MessageRecordsView/messagerecords_layout Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView/messagerecords_layout Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView/myonclicklistener Landroid/view/View$OnClickListener;
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView/messageIcon Landroid/widget/ImageButton;
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView/myonclicklistener Landroid/view/View$OnClickListener;
invokevirtual android/widget/ImageButton/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView/messagerecords_layout Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView/longclicklistener Landroid/view/View$OnLongClickListener;
invokevirtual android/widget/LinearLayout/setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView/messageIcon Landroid/widget/ImageButton;
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView/longclicklistener Landroid/view/View$OnLongClickListener;
invokevirtual android/widget/ImageButton/setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method public initComponentValue(Lcom/nd/android/u/contact/dataStructure/MessageInfo;Z)V
aload 0
iload 2
putfield com/nd/android/u/cloud/view/widge/MessageRecordsView/isShowFlag Z
aload 0
aload 1
putfield com/nd/android/u/cloud/view/widge/MessageRecordsView/messageinfo Lcom/nd/android/u/contact/dataStructure/MessageInfo;
aload 1
ifnull L0
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView/sendstatus Landroid/widget/TextView;
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/MessageInfo/getTime()Ljava/util/Date;
invokestatic com/product/android/utils/TimeUtils/getDateTime(Ljava/util/Date;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView/nametext Landroid/widget/TextView;
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/MessageInfo/getSendtoname()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView/msg Landroid/widget/TextView;
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/MessageInfo/getMsg()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
iload 2
ifeq L1
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView/record_cb Landroid/widget/CheckBox;
iconst_0
invokevirtual android/widget/CheckBox/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView/messageIcon Landroid/widget/ImageButton;
bipush 8
invokevirtual android/widget/ImageButton/setVisibility(I)V
L2:
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/MessageInfo/isCheck()Z
ifeq L3
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView/record_cb Landroid/widget/CheckBox;
iconst_1
invokevirtual android/widget/CheckBox/setChecked(Z)V
L4:
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/MessageInfo/getIssuccess()I
bipush 100
if_icmpne L5
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView/message_logo Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView/im_logo Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
L0:
return
L1:
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView/record_cb Landroid/widget/CheckBox;
bipush 8
invokevirtual android/widget/CheckBox/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView/messageIcon Landroid/widget/ImageButton;
iconst_0
invokevirtual android/widget/ImageButton/setVisibility(I)V
goto L2
L3:
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView/record_cb Landroid/widget/CheckBox;
iconst_0
invokevirtual android/widget/CheckBox/setChecked(Z)V
goto L4
L5:
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView/message_logo Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView/im_logo Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
return
.limit locals 3
.limit stack 2
.end method
