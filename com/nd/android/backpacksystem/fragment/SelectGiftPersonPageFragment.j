.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment
.super com/nd/android/backpacksystem/fragment/BackpackBaseFragment
.inner class inner com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment$1
.inner class inner com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment$2
.inner class private GetPersonList inner com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment$GetPersonList outer com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment

.field private static final 'MTYPE' Ljava/lang/String; = "mType"

.field public static final 'TYPE_DEPARTMENT_PERSON' B = 3


.field public static final 'TYPE_FOLLOW_PERSON' B = 1


.field public static final 'TYPE_LAYTELY_PERSON' B = 2


.field private 'mAdapter' Lcom/nd/android/backpacksystem/adapter/SelectPersonListAdapter;

.field private 'mDialogCallBack' Lcom/nd/android/backpacksystem/listener/DialogCallBack;

.field private 'mLvPersonList' Landroid/widget/ListView;

.field private 'mType' I

.field private 'onItemClick' Landroid/widget/AdapterView$OnItemClickListener;

.method public <init>()V
aload 0
invokespecial com/nd/android/backpacksystem/fragment/BackpackBaseFragment/<init>()V
aload 0
new com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment$1
dup
aload 0
invokespecial com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment$1/<init>(Lcom/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment;)V
putfield com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment/onItemClick Landroid/widget/AdapterView$OnItemClickListener;
aload 0
new com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment$2
dup
aload 0
invokespecial com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment$2/<init>(Lcom/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment;)V
putfield com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment/mDialogCallBack Lcom/nd/android/backpacksystem/listener/DialogCallBack;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$100(Lcom/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment;)Lcom/nd/android/backpacksystem/adapter/SelectPersonListAdapter;
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment/mAdapter Lcom/nd/android/backpacksystem/adapter/SelectPersonListAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment;)Lcom/nd/android/backpacksystem/listener/DialogCallBack;
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment/mDialogCallBack Lcom/nd/android/backpacksystem/listener/DialogCallBack;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment;)I
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment/mType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method private initData()V
aload 0
new com/nd/android/backpacksystem/adapter/SelectPersonListAdapter
dup
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment/mActivity Landroid/app/Activity;
invokespecial com/nd/android/backpacksystem/adapter/SelectPersonListAdapter/<init>(Landroid/app/Activity;)V
putfield com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment/mAdapter Lcom/nd/android/backpacksystem/adapter/SelectPersonListAdapter;
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment/mLvPersonList Landroid/widget/ListView;
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment/mAdapter Lcom/nd/android/backpacksystem/adapter/SelectPersonListAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
new com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment$GetPersonList
dup
aload 0
aconst_null
invokespecial com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment$GetPersonList/<init>(Lcom/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment;Lcom/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment$1;)V
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment$GetPersonList/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 1
.limit stack 4
.end method

.method private initEvent()V
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment/mLvPersonList Landroid/widget/ListView;
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment/onItemClick Landroid/widget/AdapterView$OnItemClickListener;
invokevirtual android/widget/ListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method private initView()V
aload 0
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment/mRootView Landroid/view/View;
getstatic com/nd/android/backpacksystem/R$id/lvPersonList I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment/mLvPersonList Landroid/widget/ListView;
return
.limit locals 1
.limit stack 3
.end method

.method public static newInstance(I)Lcom/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment;
new com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment
dup
invokespecial com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment/<init>()V
astore 1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 2
ldc "mType"
iload 0
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 1
aload 2
invokevirtual com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment/setArguments(Landroid/os/Bundle;)V
aload 1
areturn
.limit locals 3
.limit stack 3
.end method

.method protected cancelRetry()V
aload 0
invokevirtual com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment/cancelDlgSendGiftWithMsg()V
return
.limit locals 1
.limit stack 1
.end method

.method protected doRetry()V
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment/mDlgSendGiftWithMsg Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
ifnull L0
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment/mDlgSendGiftWithMsg Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/isShowing()Z
ifeq L0
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment/mDlgSendGiftWithMsg Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/doSend()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/nd/android/backpacksystem/fragment/BackpackBaseFragment/onActivityCreated(Landroid/os/Bundle;)V
aload 0
invokespecial com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment/initView()V
aload 0
invokespecial com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment/initEvent()V
aload 0
invokespecial com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment/initData()V
return
.limit locals 2
.limit stack 2
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 0
invokevirtual com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment/getArguments()Landroid/os/Bundle;
ldc "mType"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment/mType I
aload 0
aload 1
invokespecial com/nd/android/backpacksystem/fragment/BackpackBaseFragment/onCreate(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
aload 0
aload 1
getstatic com/nd/android/backpacksystem/R$layout/select_gift_person_list I
aload 2
iconst_0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
putfield com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment/mRootView Landroid/view/View;
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment/mRootView Landroid/view/View;
areturn
.limit locals 4
.limit stack 5
.end method

.method protected requestSuccess()V
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/finish()V
return
.limit locals 1
.limit stack 1
.end method
