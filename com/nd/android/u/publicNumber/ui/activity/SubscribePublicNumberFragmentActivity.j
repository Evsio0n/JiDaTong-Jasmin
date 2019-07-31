.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity
.super com/product/android/ui/activity/BaseFragmentActivity
.implements android/view/View$OnClickListener
.inner class inner com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity$1
.inner class inner com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity$2
.inner class inner com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity$3

.field private static final 'RECIEVE_NEW_MSG' I = 3


.field private static final 'UNREAD_COUNT_CHAGE' I = 2


.field private 'handler' Landroid/os/Handler;

.field private 'mSubscribePublicNumberContacts' Lcom/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment;

.field private 'messageObserver' Lcom/nd/android/u/controller/innerInterface/IMessageObserver;

.field private 'mleftBtn' Landroid/widget/Button;

.field private 'mtitleText' Landroid/widget/TextView;

.field private 'requstResultObserver' Lcom/nd/android/u/controller/innerInterface/IRequstResultObserver;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/BaseFragmentActivity/<init>()V
aload 0
new com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity$1
dup
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity$1/<init>(Lcom/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity;)V
putfield com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity/messageObserver Lcom/nd/android/u/controller/innerInterface/IMessageObserver;
aload 0
new com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity$2
dup
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity$2/<init>(Lcom/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity;)V
putfield com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity/requstResultObserver Lcom/nd/android/u/controller/innerInterface/IRequstResultObserver;
aload 0
new com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity$3
dup
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity$3/<init>(Lcom/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity;)V
putfield com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity/handler Landroid/os/Handler;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity;ILjava/lang/Object;)V
aload 0
iload 1
aload 2
invokespecial com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity/pushMessage(ILjava/lang/Object;)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$100(Lcom/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity;)Lcom/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity/mSubscribePublicNumberContacts Lcom/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment;
areturn
.limit locals 1
.limit stack 1
.end method

.method private pushMessage(ILjava/lang/Object;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity/handler Landroid/os/Handler;
invokevirtual android/os/Handler/obtainMessage()Landroid/os/Message;
astore 3
aload 3
iload 1
putfield android/os/Message/what I
aload 3
aload 2
putfield android/os/Message/obj Ljava/lang/Object;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity/handler Landroid/os/Handler;
aload 3
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
.limit locals 4
.limit stack 2
.end method

.method private showFragment()V
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity/getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
invokevirtual android/support/v4/app/FragmentManager/beginTransaction()Landroid/support/v4/app/FragmentTransaction;
astore 1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity/mSubscribePublicNumberContacts Lcom/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment;
ifnonnull L0
aload 0
invokestatic com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment/newInstance()Lcom/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment;
putfield com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity/mSubscribePublicNumberContacts Lcom/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment;
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity/mSubscribePublicNumberContacts Lcom/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment;
ifnonnull L1
return
L1:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity/mSubscribePublicNumberContacts Lcom/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment;
invokevirtual com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment/isAdded()Z
ifeq L2
aload 1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity/mSubscribePublicNumberContacts Lcom/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment;
invokevirtual android/support/v4/app/FragmentTransaction/show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
L3:
aload 1
invokevirtual android/support/v4/app/FragmentTransaction/commitAllowingStateLoss()I
pop
return
L2:
aload 1
getstatic com/nd/android/u/chat/R$id/ll_message I
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity/mSubscribePublicNumberContacts Lcom/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment;
invokevirtual android/support/v4/app/FragmentTransaction/add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
goto L3
.limit locals 2
.limit stack 3
.end method

.method protected initView()V
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/header_text_title I
invokevirtual com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity/mtitleText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/header_btn_left I
invokevirtual com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity/mleftBtn Landroid/widget/Button;
aload 0
getstatic com/nd/android/u/chat/R$id/header_layout_right I
invokevirtual com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity/mleftBtn Landroid/widget/Button;
getstatic com/nd/android/u/chat/R$drawable/xy_btn_header_back_bg I
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 0
getstatic com/nd/android/u/chat/R$id/rl_header I
invokevirtual com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity/findViewById(I)Landroid/view/View;
getstatic com/nd/android/u/chat/R$drawable/xy_bg_header I
invokevirtual android/view/View/setBackgroundResource(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity/mtitleText Landroid/widget/TextView;
getstatic com/nd/android/u/chat/R$string/subscribe_public_number I
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity/mleftBtn Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity/showFragment()V
return
.limit locals 1
.limit stack 3
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/chat/R$id/header_btn_left I
if_icmpne L0
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity/finish()V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseFragmentActivity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/nd/android/u/chat/R$layout/activity_subscrine_public_number I
invokevirtual com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity/initView()V
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity/initEvent()V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPause()V
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
ldc com/nd/android/u/controller/ChatConst$LocalMessageType
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity/messageObserver Lcom/nd/android/u/controller/innerInterface/IMessageObserver;
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/unregistAllObserver(Ljava/lang/Class;Lcom/nd/android/u/controller/innerInterface/IMessageObserver;)V
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
sipush 1000
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity/messageObserver Lcom/nd/android/u/controller/innerInterface/IMessageObserver;
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/unregistObserver(ILcom/nd/android/u/controller/innerInterface/IMessageObserver;)V
getstatic com/nd/android/u/controller/observer/RequestResultNotifier/INSTANCE Lcom/nd/android/u/controller/observer/RequestResultNotifier;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity/requstResultObserver Lcom/nd/android/u/controller/innerInterface/IRequstResultObserver;
invokevirtual com/nd/android/u/controller/observer/RequestResultNotifier/unregistObserver(Lcom/nd/android/u/controller/innerInterface/IRequstResultObserver;)V
aload 0
invokespecial com/product/android/ui/activity/BaseFragmentActivity/onPause()V
return
.limit locals 1
.limit stack 3
.end method

.method public onResume()V
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
ldc com/nd/android/u/controller/ChatConst$LocalMessageType
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity/messageObserver Lcom/nd/android/u/controller/innerInterface/IMessageObserver;
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/registAllObserver(Ljava/lang/Class;Lcom/nd/android/u/controller/innerInterface/IMessageObserver;)V
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
sipush 1000
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity/messageObserver Lcom/nd/android/u/controller/innerInterface/IMessageObserver;
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/registObserver(ILcom/nd/android/u/controller/innerInterface/IMessageObserver;)V
getstatic com/nd/android/u/controller/observer/RequestResultNotifier/INSTANCE Lcom/nd/android/u/controller/observer/RequestResultNotifier;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity/requstResultObserver Lcom/nd/android/u/controller/innerInterface/IRequstResultObserver;
invokevirtual com/nd/android/u/controller/observer/RequestResultNotifier/registObserver(Lcom/nd/android/u/controller/innerInterface/IRequstResultObserver;)V
aload 0
invokespecial com/product/android/ui/activity/BaseFragmentActivity/onResume()V
return
.limit locals 1
.limit stack 3
.end method
