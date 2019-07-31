.bytecode 50.0
.class public synchronized com/nd/teamfile/activity/FMLocalFileActivity
.super com/nd/teamfile/activity/HeaderActivity
.inner class inner com/nd/teamfile/activity/FMLocalFileActivity$1

.field public static final 'PATH_DIRS' Ljava/lang/String; = "PATH_DIRS"

.field private final 'SECOND_REQUEST_CODE' I

.field private 'listviewItemClickListener' Landroid/widget/AdapterView$OnItemClickListener;

.field private 'mInfoList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/teamfile/sdk/type/FileInfo;>;"

.field private 'mPathDirs' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"

.method public <init>()V
aload 0
invokespecial com/nd/teamfile/activity/HeaderActivity/<init>()V
aload 0
iconst_2
putfield com/nd/teamfile/activity/FMLocalFileActivity/SECOND_REQUEST_CODE I
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/teamfile/activity/FMLocalFileActivity/mInfoList Ljava/util/ArrayList;
aload 0
new com/nd/teamfile/activity/FMLocalFileActivity$1
dup
aload 0
invokespecial com/nd/teamfile/activity/FMLocalFileActivity$1/<init>(Lcom/nd/teamfile/activity/FMLocalFileActivity;)V
putfield com/nd/teamfile/activity/FMLocalFileActivity/listviewItemClickListener Landroid/widget/AdapterView$OnItemClickListener;
return
.limit locals 1
.limit stack 4
.end method

.method private getIntentData()V
aload 0
invokevirtual com/nd/teamfile/activity/FMLocalFileActivity/getIntent()Landroid/content/Intent;
astore 3
aload 3
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
ifnull L0
aload 0
aload 3
ldc "PATH_DIRS"
invokevirtual android/content/Intent/getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
checkcast java/util/HashMap
putfield com/nd/teamfile/activity/FMLocalFileActivity/mPathDirs Ljava/util/HashMap;
L0:
aload 0
getfield com/nd/teamfile/activity/FMLocalFileActivity/mPathDirs Ljava/util/HashMap;
ifnull L1
aload 0
getfield com/nd/teamfile/activity/FMLocalFileActivity/mPathDirs Ljava/util/HashMap;
invokevirtual java/util/HashMap/size()I
ifne L2
L1:
aload 0
getstatic com/nd/teamfile/R$string/get_file_failure I
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
aload 0
invokevirtual com/nd/teamfile/activity/FMLocalFileActivity/finish()V
L3:
return
L2:
aload 0
getfield com/nd/teamfile/activity/FMLocalFileActivity/mPathDirs Ljava/util/HashMap;
sipush 256
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifeq L4
new com/nd/teamfile/sdk/type/FileInfo
dup
invokespecial com/nd/teamfile/sdk/type/FileInfo/<init>()V
astore 3
aload 3
aload 0
getfield com/nd/teamfile/activity/FMLocalFileActivity/mPathDirs Ljava/util/HashMap;
sipush 256
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setFilepath(Ljava/lang/String;)V
aload 3
aload 0
getstatic com/nd/teamfile/R$string/file_phone_memory I
invokevirtual com/nd/teamfile/activity/FMLocalFileActivity/getString(I)Ljava/lang/String;
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setName(Ljava/lang/String;)V
aload 3
getstatic com/nd/teamfile/R$drawable/file_phone_memory I
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setState(I)V
aload 0
getfield com/nd/teamfile/activity/FMLocalFileActivity/mInfoList Ljava/util/ArrayList;
aload 3
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/nd/teamfile/activity/FMLocalFileActivity/mPathDirs Ljava/util/HashMap;
sipush 256
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield com/nd/teamfile/activity/FMLocalFileActivity/mPathDirs Ljava/util/HashMap;
invokevirtual java/util/HashMap/size()I
ifeq L3
L4:
aload 0
getfield com/nd/teamfile/activity/FMLocalFileActivity/mPathDirs Ljava/util/HashMap;
sipush 257
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifeq L5
new com/nd/teamfile/sdk/type/FileInfo
dup
invokespecial com/nd/teamfile/sdk/type/FileInfo/<init>()V
astore 3
aload 3
aload 0
getfield com/nd/teamfile/activity/FMLocalFileActivity/mPathDirs Ljava/util/HashMap;
sipush 257
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setFilepath(Ljava/lang/String;)V
aload 3
aload 0
getstatic com/nd/teamfile/R$string/file_sd_memory I
invokevirtual com/nd/teamfile/activity/FMLocalFileActivity/getString(I)Ljava/lang/String;
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setName(Ljava/lang/String;)V
aload 3
getstatic com/nd/teamfile/R$drawable/file_sd_memory I
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setState(I)V
aload 0
getfield com/nd/teamfile/activity/FMLocalFileActivity/mInfoList Ljava/util/ArrayList;
aload 3
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/nd/teamfile/activity/FMLocalFileActivity/mPathDirs Ljava/util/HashMap;
sipush 257
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield com/nd/teamfile/activity/FMLocalFileActivity/mPathDirs Ljava/util/HashMap;
invokevirtual java/util/HashMap/size()I
ifeq L3
L5:
aload 0
getfield com/nd/teamfile/activity/FMLocalFileActivity/mPathDirs Ljava/util/HashMap;
invokevirtual java/util/HashMap/values()Ljava/util/Collection;
invokeinterface java/util/Collection/toArray()[Ljava/lang/Object; 0
astore 3
aload 3
arraylength
istore 2
iconst_0
istore 1
L6:
iload 1
iload 2
if_icmpge L3
aload 3
iload 1
aaload
checkcast java/lang/String
astore 4
new com/nd/teamfile/sdk/type/FileInfo
dup
invokespecial com/nd/teamfile/sdk/type/FileInfo/<init>()V
astore 5
aload 5
aload 4
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setFilepath(Ljava/lang/String;)V
aload 5
aload 0
getstatic com/nd/teamfile/R$string/file_exsd_memory I
invokevirtual com/nd/teamfile/activity/FMLocalFileActivity/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
iload 1
iconst_1
iadd
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setName(Ljava/lang/String;)V
aload 5
getstatic com/nd/teamfile/R$drawable/file_exsd_memory I
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setState(I)V
aload 0
getfield com/nd/teamfile/activity/FMLocalFileActivity/mInfoList Ljava/util/ArrayList;
aload 5
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 1
iconst_1
iadd
istore 1
goto L6
.limit locals 6
.limit stack 7
.end method

.method protected _onCreate(Landroid/os/Bundle;)Z
aload 0
aload 1
invokespecial com/nd/teamfile/activity/HeaderActivity/_onCreate(Landroid/os/Bundle;)Z
ifeq L0
aload 0
getstatic com/nd/teamfile/R$layout/fm_localfile I
invokevirtual com/nd/teamfile/activity/FMLocalFileActivity/setContentView(I)V
aload 0
invokespecial com/nd/teamfile/activity/FMLocalFileActivity/getIntentData()V
aload 0
invokevirtual com/nd/teamfile/activity/FMLocalFileActivity/initComponent()V
aload 0
invokespecial com/nd/teamfile/activity/HeaderActivity/initEvent()V
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method protected initComponent()V
aload 0
invokespecial com/nd/teamfile/activity/HeaderActivity/initComponent()V
aload 0
getstatic com/nd/teamfile/R$id/fm_localfile_lv I
invokevirtual com/nd/teamfile/activity/FMLocalFileActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
astore 1
aload 1
iconst_0
invokevirtual android/widget/ListView/setCacheColorHint(I)V
aload 1
aconst_null
invokevirtual android/widget/ListView/setDivider(Landroid/graphics/drawable/Drawable;)V
aload 1
new com/nd/teamfile/adapter/FMLocalFileAdapter
dup
aload 0
aload 0
getfield com/nd/teamfile/activity/FMLocalFileActivity/mInfoList Ljava/util/ArrayList;
invokespecial com/nd/teamfile/adapter/FMLocalFileAdapter/<init>(Landroid/content/Context;Ljava/util/ArrayList;)V
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 1
aload 0
getfield com/nd/teamfile/activity/FMLocalFileActivity/listviewItemClickListener Landroid/widget/AdapterView$OnItemClickListener;
invokevirtual android/widget/ListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getfield com/nd/teamfile/activity/FMLocalFileActivity/titleText Landroid/widget/TextView;
aload 0
getstatic com/nd/teamfile/R$string/file_local_file I
invokevirtual com/nd/teamfile/activity/FMLocalFileActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 5
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
aload 0
iload 1
iload 2
aload 3
invokespecial com/nd/teamfile/activity/HeaderActivity/onActivityResult(IILandroid/content/Intent;)V
iload 1
iconst_2
if_icmpne L0
iload 2
iconst_m1
if_icmpne L0
aload 0
iconst_1
aload 3
invokevirtual com/nd/teamfile/activity/FMLocalFileActivity/setResult(ILandroid/content/Intent;)V
aload 0
invokevirtual com/nd/teamfile/activity/FMLocalFileActivity/finish()V
L1:
return
L0:
aload 0
getfield com/nd/teamfile/activity/FMLocalFileActivity/mInfoList Ljava/util/ArrayList;
ifnull L2
aload 0
getfield com/nd/teamfile/activity/FMLocalFileActivity/mInfoList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
if_icmpne L1
L2:
aload 0
invokevirtual com/nd/teamfile/activity/FMLocalFileActivity/finish()V
return
.limit locals 4
.limit stack 4
.end method
