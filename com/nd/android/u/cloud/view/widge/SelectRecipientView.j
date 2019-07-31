.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/view/widge/SelectRecipientView
.super android/widget/LinearLayout
.inner class inner com/nd/android/u/cloud/view/widge/SelectRecipientView$1
.inner class inner com/nd/android/u/cloud/view/widge/SelectRecipientView$2

.field private static final 'maxnum' I = 19


.field private 'callback' Lcom/product/android/business/headImage/ProfileHeadImageCacheCallback;

.field private 'faceImg' Landroid/widget/ImageView;

.field private 'grouplist' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroupRelation;>;"

.field private 'mcontext' Landroid/content/Context;

.field 'myCheckedListener' Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field protected 'myonclicklistener' Landroid/view/View$OnClickListener;

.field private 'phoneText' Landroid/widget/TextView;

.field private 'recipient_cb' Landroid/widget/CheckBox;

.field private 'selectcontractlist' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/product/android/commonInterface/chat/SearchContract;>;"

.field private 'user' Lcom/product/android/commonInterface/chat/SearchContract;

.field private 'userLayout' Landroid/widget/LinearLayout;

.field private 'usernameText' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;Lcom/product/android/business/headImage/ProfileHeadImageCacheCallback;Ljava/util/ArrayList;Ljava/util/List;)V
.signature "(Landroid/content/Context;Lcom/product/android/business/headImage/ProfileHeadImageCacheCallback;Ljava/util/ArrayList<Lcom/product/android/commonInterface/chat/SearchContract;>;Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroupRelation;>;)V"
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
new com/nd/android/u/cloud/view/widge/SelectRecipientView$1
dup
aload 0
invokespecial com/nd/android/u/cloud/view/widge/SelectRecipientView$1/<init>(Lcom/nd/android/u/cloud/view/widge/SelectRecipientView;)V
putfield com/nd/android/u/cloud/view/widge/SelectRecipientView/myonclicklistener Landroid/view/View$OnClickListener;
aload 0
new com/nd/android/u/cloud/view/widge/SelectRecipientView$2
dup
aload 0
invokespecial com/nd/android/u/cloud/view/widge/SelectRecipientView$2/<init>(Lcom/nd/android/u/cloud/view/widge/SelectRecipientView;)V
putfield com/nd/android/u/cloud/view/widge/SelectRecipientView/myCheckedListener Landroid/widget/CompoundButton$OnCheckedChangeListener;
aload 0
aload 4
putfield com/nd/android/u/cloud/view/widge/SelectRecipientView/grouplist Ljava/util/List;
aload 0
aload 3
putfield com/nd/android/u/cloud/view/widge/SelectRecipientView/selectcontractlist Ljava/util/ArrayList;
aload 0
aload 1
putfield com/nd/android/u/cloud/view/widge/SelectRecipientView/mcontext Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/cloud/view/widge/SelectRecipientView/callback Lcom/product/android/business/headImage/ProfileHeadImageCacheCallback;
aload 0
invokevirtual com/nd/android/u/cloud/view/widge/SelectRecipientView/getView()V
return
.limit locals 5
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/view/widge/SelectRecipientView;)Landroid/widget/CheckBox;
aload 0
getfield com/nd/android/u/cloud/view/widge/SelectRecipientView/recipient_cb Landroid/widget/CheckBox;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/view/widge/SelectRecipientView;)Lcom/product/android/commonInterface/chat/SearchContract;
aload 0
getfield com/nd/android/u/cloud/view/widge/SelectRecipientView/user Lcom/product/android/commonInterface/chat/SearchContract;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/cloud/view/widge/SelectRecipientView;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/cloud/view/widge/SelectRecipientView/selectcontractlist Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/cloud/view/widge/SelectRecipientView;Lcom/product/android/commonInterface/chat/SearchContract;)Z
aload 0
aload 1
invokespecial com/nd/android/u/cloud/view/widge/SelectRecipientView/isGroupContainUser(Lcom/product/android/commonInterface/chat/SearchContract;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/nd/android/u/cloud/view/widge/SelectRecipientView;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/cloud/view/widge/SelectRecipientView/mcontext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method private isGroupContainUser(Lcom/product/android/commonInterface/chat/SearchContract;)Z
aload 0
getfield com/nd/android/u/cloud/view/widge/SelectRecipientView/grouplist Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/view/widge/SelectRecipientView/grouplist Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L1:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroupRelation
astore 3
aload 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/getFid()J
aload 3
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getFid()J
lcmp
ifne L1
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 4
.limit stack 4
.end method

.method public getView()V
aload 0
getfield com/nd/android/u/cloud/view/widge/SelectRecipientView/mcontext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
ldc_w 2130903696
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
aload 0
aload 0
ldc_w 2131624685
invokevirtual com/nd/android/u/cloud/view/widge/SelectRecipientView/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/cloud/view/widge/SelectRecipientView/userLayout Landroid/widget/LinearLayout;
aload 0
aload 0
ldc_w 2131626624
invokevirtual com/nd/android/u/cloud/view/widge/SelectRecipientView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/view/widge/SelectRecipientView/usernameText Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131625406
invokevirtual com/nd/android/u/cloud/view/widge/SelectRecipientView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/view/widge/SelectRecipientView/faceImg Landroid/widget/ImageView;
aload 0
aload 0
ldc_w 2131626625
invokevirtual com/nd/android/u/cloud/view/widge/SelectRecipientView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/view/widge/SelectRecipientView/phoneText Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131626627
invokevirtual com/nd/android/u/cloud/view/widge/SelectRecipientView/findViewById(I)Landroid/view/View;
checkcast android/widget/CheckBox
putfield com/nd/android/u/cloud/view/widge/SelectRecipientView/recipient_cb Landroid/widget/CheckBox;
aload 0
getfield com/nd/android/u/cloud/view/widge/SelectRecipientView/userLayout Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/cloud/view/widge/SelectRecipientView/myonclicklistener Landroid/view/View$OnClickListener;
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/view/widge/SelectRecipientView/recipient_cb Landroid/widget/CheckBox;
aload 0
getfield com/nd/android/u/cloud/view/widge/SelectRecipientView/myCheckedListener Landroid/widget/CompoundButton$OnCheckedChangeListener;
invokevirtual android/widget/CheckBox/setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method public initComponentValue(Lcom/product/android/commonInterface/chat/SearchContract;)V
aload 1
ifnull L0
aload 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/getFid()J
lstore 2
aload 0
getfield com/nd/android/u/cloud/view/widge/SelectRecipientView/selectcontractlist Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 5
L1:
aload 1
astore 4
aload 5
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 5
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/chat/SearchContract
astore 4
lload 2
aload 4
invokevirtual com/product/android/commonInterface/chat/SearchContract/getFid()J
lcmp
ifne L1
L2:
aload 0
aload 4
putfield com/nd/android/u/cloud/view/widge/SelectRecipientView/user Lcom/product/android/commonInterface/chat/SearchContract;
aload 0
getfield com/nd/android/u/cloud/view/widge/SelectRecipientView/usernameText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/view/widge/SelectRecipientView/user Lcom/product/android/commonInterface/chat/SearchContract;
invokevirtual com/product/android/commonInterface/chat/SearchContract/getUsername()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/view/widge/SelectRecipientView/phoneText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/view/widge/SelectRecipientView/user Lcom/product/android/commonInterface/chat/SearchContract;
invokevirtual com/product/android/commonInterface/chat/SearchContract/getSignature()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
lload 2
aload 0
getfield com/nd/android/u/cloud/view/widge/SelectRecipientView/user Lcom/product/android/commonInterface/chat/SearchContract;
invokevirtual com/product/android/commonInterface/chat/SearchContract/getSysavatar()I
aload 0
getfield com/nd/android/u/cloud/view/widge/SelectRecipientView/faceImg Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 0
getfield com/nd/android/u/cloud/view/widge/SelectRecipientView/user Lcom/product/android/commonInterface/chat/SearchContract;
invokevirtual com/product/android/commonInterface/chat/SearchContract/isChecked()Z
ifeq L3
aload 0
getfield com/nd/android/u/cloud/view/widge/SelectRecipientView/recipient_cb Landroid/widget/CheckBox;
iconst_1
invokevirtual android/widget/CheckBox/setChecked(Z)V
L0:
return
L3:
aload 0
getfield com/nd/android/u/cloud/view/widge/SelectRecipientView/recipient_cb Landroid/widget/CheckBox;
iconst_0
invokevirtual android/widget/CheckBox/setChecked(Z)V
return
.limit locals 6
.limit stack 4
.end method
