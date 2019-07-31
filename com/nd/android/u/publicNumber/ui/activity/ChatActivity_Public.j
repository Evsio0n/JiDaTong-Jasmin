.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public
.super com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity
.implements com/nd/android/u/ui/widge/chatfragment/BottomFragment$CommonBottomListener
.implements com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$PubNumBottomListener
.inner class inner com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public$1
.inner class inner com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public$2
.inner class inner com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public$3
.inner class private SynPspMenuInfoTask inner com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public$SynPspMenuInfoTask outer com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public

.field private static final 'BOTTOMFRAGMENT' I = 0


.field private static final 'PSPBOTTOMFRAGMENT' I = 1


.field private static final 'REQUEST_CODE_VIEW_INFO' I = 1001


.field private 'mCurFragmentType' I

.field private 'mHandler' Landroid/os/Handler;

.field private 'mIsSwitch' Z

.field private 'mMenuInfo' Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo;

.field private 'mObserver' Lcom/nd/android/u/controller/innerInterface/IMessageObserver;

.field private 'synPspMenuInfoTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'synPspMenuInfoTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.method public <init>()V
aload 0
invokespecial com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mCurFragmentType I
aload 0
iconst_0
putfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mIsSwitch Z
aload 0
new com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public$1
dup
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public$1/<init>(Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;)V
putfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/synPspMenuInfoTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
new com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public$2
dup
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public$2/<init>(Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;)V
putfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mObserver Lcom/nd/android/u/controller/innerInterface/IMessageObserver;
aload 0
new com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public$3
dup
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public$3/<init>(Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;)V
putfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mHandler Landroid/os/Handler;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$100(Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;)J
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/generalId J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$1000(Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mHandler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1100(Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;)J
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/generalId J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$1200(Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo;)V
aload 0
aload 1
invokespecial com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/updateMenu(Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;)Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mMenuInfo Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$202(Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo;)Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo;
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mMenuInfo Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;)Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mpubNumBottomFragment Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;)Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mpubNumBottomFragment Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;)Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mpubNumBottomFragment Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;)Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mBottomFragment Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;)Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mBottomFragment Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;)Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mBottomFragment Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;)Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/synPspMenuInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
areturn
.limit locals 1
.limit stack 1
.end method

.method private synPspMenuInfo()V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/synPspMenuInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/synPspMenuInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public$SynPspMenuInfoTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public$SynPspMenuInfoTask/<init>(Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public$1;)V
putfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/synPspMenuInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/synPspMenuInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/synPspMenuInfoTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/synPspMenuInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
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

.method private updateMenu(Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo;)V
iconst_0
istore 2
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mMenuInfo Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mMenuInfo Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo;
invokevirtual com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo/getMenuBottons()Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/isEmpty()Z
ifne L0
iconst_1
istore 3
iload 3
istore 2
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mpubNumBottomFragment Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;
ifnull L0
iload 3
istore 2
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mpubNumBottomFragment Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/isAdded()Z
ifeq L0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mpubNumBottomFragment Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mMenuInfo Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo;
invokevirtual com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo/getMenuBottons()Ljava/util/ArrayList;
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/showMenuByList(Ljava/util/ArrayList;)V
iload 3
istore 2
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mBottomFragment Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
ifnull L1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mBottomFragment Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/isAdded()Z
ifeq L1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mBottomFragment Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
iload 2
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/refreshFootView(Z)V
L1:
return
.limit locals 4
.limit stack 2
.end method

.method protected addAdditionFrament(Landroid/support/v4/app/FragmentTransaction;)V
aload 0
invokestatic com/nd/android/u/ui/widge/chatfragment/BottomFragment/newInstance()Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
putfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mBottomFragment Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 2
ldc "generalid"
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/generalId J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mMenuInfo Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo;
ifnonnull L0
aload 2
ldc "showmenu"
iconst_0
invokevirtual android/os/Bundle/putBoolean(Ljava/lang/String;Z)V
L1:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/content Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L2
aload 2
ldc "edittextvalue"
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/content Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
L2:
aload 2
ldc "MESSAGE_TYPE"
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/messageType I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mBottomFragment Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
aload 2
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/setArguments(Landroid/os/Bundle;)V
aload 0
invokestatic com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/newInstance()Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;
putfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mpubNumBottomFragment Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mMenuInfo Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo;
ifnull L3
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mMenuInfo Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo;
invokevirtual com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo/hasMenu()Z
ifeq L3
aload 0
iconst_1
putfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mCurFragmentType I
aload 1
getstatic com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/PSP_BOTTOM_CONTAINER_ID I
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mpubNumBottomFragment Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;
invokevirtual android/support/v4/app/FragmentTransaction/add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
return
L0:
aload 2
ldc "showmenu"
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mMenuInfo Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo;
invokevirtual com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo/hasMenu()Z
invokevirtual android/os/Bundle/putBoolean(Ljava/lang/String;Z)V
goto L1
L3:
aload 0
iconst_0
putfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mCurFragmentType I
aload 1
getstatic com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/BOTTOM_CONTAINER_ID I
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mBottomFragment Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
invokevirtual android/support/v4/app/FragmentTransaction/add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
return
.limit locals 3
.limit stack 4
.end method

.method public createPopQuickReply()V
return
.limit locals 1
.limit stack 0
.end method

.method public getMenu()Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mMenuInfo Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected getParam(Landroid/os/Bundle;)Z
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
aload 0
iconst_5
putfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/messageType I
L0:
aload 1
ldc "generalid"
invokevirtual android/os/Bundle/get(Ljava/lang/String;)Ljava/lang/Object;
astore 1
aload 1
instanceof java/lang/String
ifeq L3
aload 0
aload 1
checkcast java/lang/String
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
putfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/generalId J
L1:
aload 0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/generalId J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/getMenuFromDb(Ljava/lang/String;)Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo;
putfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mMenuInfo Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/name Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L9
aload 0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/generalId J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/getPublicNumberName(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/name Ljava/lang/String;
L9:
invokestatic com/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager/getInstance()Lcom/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager;
invokevirtual com/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager/cleanAllAudioView()V
iconst_1
ireturn
L3:
aload 1
instanceof java/lang/Long
ifeq L5
aload 0
aload 1
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
putfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/generalId J
L4:
goto L1
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/finish()V
iconst_0
ireturn
L5:
aload 1
instanceof java/lang/Integer
ifeq L7
aload 0
aload 1
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
i2l
putfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/generalId J
L6:
goto L1
L7:
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/finish()V
L8:
iconst_0
ireturn
.limit locals 2
.limit stack 3
.end method

.method public onClickSwitchBtn()V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mIsSwitch Z
ifeq L0
aload 0
iconst_0
putfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mIsSwitch Z
return
L0:
aload 0
iconst_1
putfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mIsSwitch Z
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
invokevirtual android/support/v4/app/FragmentManager/beginTransaction()Landroid/support/v4/app/FragmentTransaction;
astore 1
aload 1
sipush 4097
invokevirtual android/support/v4/app/FragmentTransaction/setTransition(I)Landroid/support/v4/app/FragmentTransaction;
sipush 4099
invokevirtual android/support/v4/app/FragmentTransaction/setTransitionStyle(I)Landroid/support/v4/app/FragmentTransaction;
pop
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mCurFragmentType I
ifne L1
aload 0
iconst_1
putfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mCurFragmentType I
aload 1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mBottomFragment Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
invokevirtual android/support/v4/app/FragmentTransaction/hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mpubNumBottomFragment Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/isAdded()Z
ifne L2
aload 1
getstatic com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/PSP_BOTTOM_CONTAINER_ID I
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mpubNumBottomFragment Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;
invokevirtual android/support/v4/app/FragmentTransaction/add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
L3:
aload 1
invokevirtual android/support/v4/app/FragmentTransaction/commit()I
pop
L4:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mBottomFragment Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/dismisswidge()V
aload 0
iconst_0
putfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mIsSwitch Z
return
L2:
aload 1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mpubNumBottomFragment Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;
invokevirtual android/support/v4/app/FragmentTransaction/show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
goto L3
L1:
aload 0
iconst_0
putfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mCurFragmentType I
aload 1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mpubNumBottomFragment Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;
invokevirtual android/support/v4/app/FragmentTransaction/hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mBottomFragment Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/isAdded()Z
ifne L5
aload 1
getstatic com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/BOTTOM_CONTAINER_ID I
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mBottomFragment Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
invokevirtual android/support/v4/app/FragmentTransaction/add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
L6:
aload 1
invokevirtual android/support/v4/app/FragmentTransaction/commit()I
pop
goto L4
L5:
aload 1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mBottomFragment Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
invokevirtual android/support/v4/app/FragmentTransaction/show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
goto L6
.limit locals 2
.limit stack 3
.end method

.method protected onDestroy()V
aload 0
invokespecial com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/onDestroy()V
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
sipush 1000
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mObserver Lcom/nd/android/u/controller/innerInterface/IMessageObserver;
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/unregistObserver(ILcom/nd/android/u/controller/innerInterface/IMessageObserver;)V
return
.limit locals 1
.limit stack 3
.end method

.method protected onPause()V
aload 0
invokespecial com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/onPause()V
invokestatic com/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager/getInstance()Lcom/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager;
invokevirtual com/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager/pauseAllAudio()V
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/isFinishing()Z
ifeq L0
invokestatic com/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager/getInstance()Lcom/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager;
invokevirtual com/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager/cleanAllAudioView()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public onResume()V
aload 0
invokespecial com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/onResume()V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mMenuInfo Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo;
ifnonnull L0
return
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mMenuInfo Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo;
invokevirtual com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo/isExpired()Z
ifeq L1
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/synPspMenuInfo()V
L1:
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
sipush 1000
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/mObserver Lcom/nd/android/u/controller/innerInterface/IMessageObserver;
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/registObserver(ILcom/nd/android/u/controller/innerInterface/IMessageObserver;)V
return
.limit locals 1
.limit stack 3
.end method

.method public refresh()V
return
.limit locals 1
.limit stack 0
.end method

.method public rightBtnHandle()V
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 2
ldc "generalid"
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/generalId J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 1
aload 2
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 1
aload 0
ldc com/nd/android/u/publicNumber/ui/activity/PspInformationActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 0
aload 1
sipush 1001
invokevirtual com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/startActivityForResult(Landroid/content/Intent;I)V
return
.limit locals 3
.limit stack 4
.end method

.method public showPopQuickReply(II)V
return
.limit locals 3
.limit stack 0
.end method
