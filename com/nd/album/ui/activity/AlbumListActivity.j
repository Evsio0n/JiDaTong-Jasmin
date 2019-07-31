.bytecode 50.0
.class public synchronized com/nd/album/ui/activity/AlbumListActivity
.super com/common/android/ui/CommonLoadingActivity
.implements android/view/View$OnClickListener
.inner class inner com/nd/album/ui/activity/AlbumListActivity$1
.inner class GetAlbumListTask inner com/nd/album/ui/activity/AlbumListActivity$GetAlbumListTask outer com/nd/album/ui/activity/AlbumListActivity

.field private final 'TO_ALBUM_BROWSER' I

.field private 'isMySelf' Z

.field private 'listener' Landroid/widget/AdapterView$OnItemClickListener;

.field private 'mAlbumAdater' Lcom/nd/album/ui/adapter/AlbumListAdapter;

.field private 'mAlbumGrid' Landroid/widget/GridView;

.field private 'mAlbumList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/album/bean/AlbumInfo;>;"

.field private 'task' Lcom/nd/album/ui/activity/AlbumListActivity$GetAlbumListTask;

.field private 'userOapId' J

.field private 'userUapId' J

.method public <init>()V
aload 0
invokespecial com/common/android/ui/CommonLoadingActivity/<init>()V
aload 0
sipush 4097
putfield com/nd/album/ui/activity/AlbumListActivity/TO_ALBUM_BROWSER I
aload 0
new com/nd/album/ui/activity/AlbumListActivity$1
dup
aload 0
invokespecial com/nd/album/ui/activity/AlbumListActivity$1/<init>(Lcom/nd/album/ui/activity/AlbumListActivity;)V
putfield com/nd/album/ui/activity/AlbumListActivity/listener Landroid/widget/AdapterView$OnItemClickListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/album/ui/activity/AlbumListActivity;)J
aload 0
getfield com/nd/album/ui/activity/AlbumListActivity/userOapId J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/album/ui/activity/AlbumListActivity;)J
aload 0
getfield com/nd/album/ui/activity/AlbumListActivity/userUapId J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/album/ui/activity/AlbumListActivity;)Ljava/util/ArrayList;
aload 0
getfield com/nd/album/ui/activity/AlbumListActivity/mAlbumList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$202(Lcom/nd/album/ui/activity/AlbumListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
aload 0
aload 1
putfield com/nd/album/ui/activity/AlbumListActivity/mAlbumList Ljava/util/ArrayList;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/nd/album/ui/activity/AlbumListActivity;)V
aload 0
invokevirtual com/nd/album/ui/activity/AlbumListActivity/showLoadingLayout()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/album/ui/activity/AlbumListActivity;)Z
aload 0
getfield com/nd/album/ui/activity/AlbumListActivity/isMySelf Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/album/ui/activity/AlbumListActivity;)V
aload 0
invokevirtual com/nd/album/ui/activity/AlbumListActivity/showRetryLayout()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/album/ui/activity/AlbumListActivity;I)V
aload 0
iload 1
invokevirtual com/nd/album/ui/activity/AlbumListActivity/showNoData(I)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$700(Lcom/nd/album/ui/activity/AlbumListActivity;)V
aload 0
invokevirtual com/nd/album/ui/activity/AlbumListActivity/hideAllCommonView()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/album/ui/activity/AlbumListActivity;)Landroid/widget/GridView;
aload 0
getfield com/nd/album/ui/activity/AlbumListActivity/mAlbumGrid Landroid/widget/GridView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/nd/album/ui/activity/AlbumListActivity;)Lcom/nd/album/ui/adapter/AlbumListAdapter;
aload 0
getfield com/nd/album/ui/activity/AlbumListActivity/mAlbumAdater Lcom/nd/album/ui/adapter/AlbumListAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method private doBack()V
getstatic com/product/android/business/broadcast/PersonInfoBroadHelper/INSTANCE Lcom/product/android/business/broadcast/PersonInfoBroadHelper;
aload 0
aload 0
getfield com/nd/album/ui/activity/AlbumListActivity/userUapId J
getstatic com/nd/album/db/dao/AlbumDAOImpl/INSTANCE Lcom/nd/album/db/dao/AlbumDAOImpl;
aload 0
getfield com/nd/album/ui/activity/AlbumListActivity/userOapId J
iconst_4
invokevirtual com/nd/album/db/dao/AlbumDAOImpl/getImageListByCreatorId(JI)Ljava/util/ArrayList;
invokevirtual com/product/android/business/broadcast/PersonInfoBroadHelper/sendModifyAlbumBroadCast(Landroid/content/Context;JLjava/util/ArrayList;)V
aload 0
invokevirtual com/nd/album/ui/activity/AlbumListActivity/finish()V
return
.limit locals 1
.limit stack 8
.end method

.method private initDate(Landroid/os/Bundle;)V
aload 1
ifnonnull L0
aload 0
aload 0
invokevirtual com/nd/album/ui/activity/AlbumListActivity/getIntent()Landroid/content/Intent;
ldc "OAP_ID"
lconst_0
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
putfield com/nd/album/ui/activity/AlbumListActivity/userOapId J
aload 0
aload 0
invokevirtual com/nd/album/ui/activity/AlbumListActivity/getIntent()Landroid/content/Intent;
ldc "UAP_ID"
lconst_0
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
putfield com/nd/album/ui/activity/AlbumListActivity/userUapId J
aload 0
getfield com/nd/album/ui/activity/AlbumListActivity/userOapId J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L1
iconst_1
istore 2
L2:
aload 0
iload 2
putfield com/nd/album/ui/activity/AlbumListActivity/isMySelf Z
L3:
aload 0
new com/nd/album/ui/adapter/AlbumListAdapter
dup
aload 0
invokespecial com/nd/album/ui/adapter/AlbumListAdapter/<init>(Landroid/content/Context;)V
putfield com/nd/album/ui/activity/AlbumListActivity/mAlbumAdater Lcom/nd/album/ui/adapter/AlbumListAdapter;
aload 0
getfield com/nd/album/ui/activity/AlbumListActivity/mAlbumGrid Landroid/widget/GridView;
aload 0
getfield com/nd/album/ui/activity/AlbumListActivity/mAlbumAdater Lcom/nd/album/ui/adapter/AlbumListAdapter;
invokevirtual android/widget/GridView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L4
getstatic com/nd/album/R$string/network_error_to_set_network I
invokestatic com/common/android/utils/ToastUtils/display(I)V
aload 0
invokevirtual com/nd/album/ui/activity/AlbumListActivity/showRetryLayout()V
return
L1:
iconst_0
istore 2
goto L2
L0:
aload 0
aload 1
ldc "OAP_ID"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
putfield com/nd/album/ui/activity/AlbumListActivity/userOapId J
aload 0
aload 1
ldc "UAP_ID"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
putfield com/nd/album/ui/activity/AlbumListActivity/userUapId J
aload 0
aload 1
ldc "isMySelf"
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;)Z
putfield com/nd/album/ui/activity/AlbumListActivity/isMySelf Z
goto L3
L4:
aload 0
invokevirtual com/nd/album/ui/activity/AlbumListActivity/doOrRetry()V
return
.limit locals 3
.limit stack 5
.end method

.method protected doOrRetry()V
aload 0
getfield com/nd/album/ui/activity/AlbumListActivity/task Lcom/nd/album/ui/activity/AlbumListActivity$GetAlbumListTask;
ifnull L0
aload 0
getfield com/nd/album/ui/activity/AlbumListActivity/task Lcom/nd/album/ui/activity/AlbumListActivity$GetAlbumListTask;
invokevirtual com/nd/album/ui/activity/AlbumListActivity$GetAlbumListTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/album/ui/activity/AlbumListActivity$GetAlbumListTask
dup
aload 0
invokespecial com/nd/album/ui/activity/AlbumListActivity$GetAlbumListTask/<init>(Lcom/nd/album/ui/activity/AlbumListActivity;)V
putfield com/nd/album/ui/activity/AlbumListActivity/task Lcom/nd/album/ui/activity/AlbumListActivity$GetAlbumListTask;
aload 0
getfield com/nd/album/ui/activity/AlbumListActivity/task Lcom/nd/album/ui/activity/AlbumListActivity$GetAlbumListTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/album/ui/activity/AlbumListActivity$GetAlbumListTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 1
.limit stack 4
.end method

.method protected initComponent()V
aload 0
invokespecial com/common/android/ui/CommonLoadingActivity/initComponent()V
aload 0
aload 0
getstatic com/nd/album/R$id/gvAlbumList I
invokevirtual com/nd/album/ui/activity/AlbumListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/GridView
putfield com/nd/album/ui/activity/AlbumListActivity/mAlbumGrid Landroid/widget/GridView;
aload 0
aload 0
getstatic com/nd/album/R$id/pbLoading I
invokevirtual com/nd/album/ui/activity/AlbumListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/nd/album/ui/activity/AlbumListActivity/pbLoading Landroid/widget/ProgressBar;
return
.limit locals 1
.limit stack 3
.end method

.method protected initEvent()V
aload 0
getstatic com/nd/album/R$id/ivBack I
invokevirtual com/nd/album/ui/activity/AlbumListActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/album/ui/activity/AlbumListActivity/mAlbumGrid Landroid/widget/GridView;
aload 0
getfield com/nd/album/ui/activity/AlbumListActivity/listener Landroid/widget/AdapterView$OnItemClickListener;
invokevirtual android/widget/GridView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
iload 2
iconst_m1
if_icmpne L0
iload 1
sipush 4097
if_icmpne L0
aload 0
getfield com/nd/album/ui/activity/AlbumListActivity/mAlbumList Ljava/util/ArrayList;
ifnull L0
aload 3
ldc "album_id"
lconst_0
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
lstore 4
aload 3
ldc "size"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
istore 1
aload 0
getfield com/nd/album/ui/activity/AlbumListActivity/mAlbumList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 3
L1:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/album/bean/AlbumInfo
astore 6
aload 6
getfield com/nd/album/bean/AlbumInfo/mAlbumId J
lload 4
lcmp
ifne L1
aload 6
iload 1
putfield com/nd/album/bean/AlbumInfo/mPicNum I
aload 0
getfield com/nd/album/ui/activity/AlbumListActivity/mAlbumAdater Lcom/nd/album/ui/adapter/AlbumListAdapter;
invokevirtual com/nd/album/ui/adapter/AlbumListAdapter/notifyDataSetChanged()V
L0:
return
.limit locals 7
.limit stack 4
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/album/R$id/ivBack I
if_icmpne L0
aload 0
invokespecial com/nd/album/ui/activity/AlbumListActivity/doBack()V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/common/android/ui/CommonLoadingActivity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/nd/album/R$layout/album_list_activity I
invokevirtual com/nd/album/ui/activity/AlbumListActivity/setContentView(I)V
aload 0
invokevirtual com/nd/album/ui/activity/AlbumListActivity/initComponent()V
aload 0
invokevirtual com/nd/album/ui/activity/AlbumListActivity/initEvent()V
aload 0
aload 1
invokespecial com/nd/album/ui/activity/AlbumListActivity/initDate(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
aload 2
invokevirtual android/view/KeyEvent/getKeyCode()I
iconst_4
if_icmpne L0
aload 2
invokevirtual android/view/KeyEvent/getRepeatCount()I
ifne L0
aload 0
invokespecial com/nd/album/ui/activity/AlbumListActivity/doBack()V
iconst_1
ireturn
L0:
aload 0
iload 1
aload 2
invokespecial com/common/android/ui/CommonLoadingActivity/onKeyDown(ILandroid/view/KeyEvent;)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/common/android/ui/CommonLoadingActivity/onSaveInstanceState(Landroid/os/Bundle;)V
aload 1
ldc "OAP_ID"
aload 0
getfield com/nd/album/ui/activity/AlbumListActivity/userOapId J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/os/Bundle/putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
aload 1
ldc "UAP_ID"
aload 0
getfield com/nd/album/ui/activity/AlbumListActivity/userUapId J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/os/Bundle/putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
aload 1
ldc "isMySelf"
aload 0
getfield com/nd/album/ui/activity/AlbumListActivity/isMySelf Z
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokevirtual android/os/Bundle/putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
return
.limit locals 2
.limit stack 4
.end method
