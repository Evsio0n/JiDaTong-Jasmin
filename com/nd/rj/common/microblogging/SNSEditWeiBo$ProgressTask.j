.bytecode 50.0
.class synchronized com/nd/rj/common/microblogging/SNSEditWeiBo$ProgressTask
.super android/os/AsyncTask
.signature "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Integer;Ljava/lang/Integer;>;"
.inner class private ProgressTask inner com/nd/rj/common/microblogging/SNSEditWeiBo$ProgressTask outer com/nd/rj/common/microblogging/SNSEditWeiBo

.field 'snsModleMgr' Lcom/nd/rj/common/microblogging/SNSModleMgr;

.field final synthetic 'this$0' Lcom/nd/rj/common/microblogging/SNSEditWeiBo;

.method private <init>(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)V
aload 0
aload 1
putfield com/nd/rj/common/microblogging/SNSEditWeiBo$ProgressTask/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
aload 0
invokespecial android/os/AsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;Lcom/nd/rj/common/microblogging/SNSEditWeiBo$1;)V
aload 0
aload 1
invokespecial com/nd/rj/common/microblogging/SNSEditWeiBo$ProgressTask/<init>(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
iconst_0
istore 2
iconst_0
istore 3
L4:
iload 3
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$ProgressTask/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$800(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L5
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$ProgressTask/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$800(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)Ljava/util/ArrayList;
iload 3
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
astore 1
aload 1
instanceof com/nd/rj/common/microblogging/SNSItem
ifeq L6
aload 1
checkcast com/nd/rj/common/microblogging/SNSItem
getfield com/nd/rj/common/microblogging/SNSItem/Type I
istore 4
L7:
iload 2
istore 5
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$ProgressTask/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$900(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)Lcom/nd/rj/common/microblogging/help/ConfigSet;
iload 4
iconst_0
invokevirtual com/nd/rj/common/microblogging/help/ConfigSet/getBindState(IZ)Z
ifeq L8
iload 4
invokestatic com/nd/rj/common/microblogging/SNSShare/getFromWhere(I)Ljava/lang/String;
astore 7
aload 7
invokestatic com/nd/rj/common/microblogging/help/StrFun/getSNSStringLength(Ljava/lang/String;)I
istore 5
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$ProgressTask/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$200(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
astore 6
aload 6
astore 1
aload 6
invokestatic com/nd/rj/common/microblogging/help/StrFun/getSNSStringLength(Ljava/lang/String;)I
iload 5
iadd
sipush 140
if_icmpgt L9
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 6
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 7
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
L9:
bipush -5
istore 5
iconst_2
anewarray java/lang/Integer
astore 6
aload 6
iconst_0
iload 4
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
L0:
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$ProgressTask/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$1000(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)Landroid/graphics/Bitmap;
ifnull L1
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$ProgressTask/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$1100(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)Ljava/io/File;
ifnonnull L1
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$ProgressTask/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$ProgressTask/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$ProgressTask/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$1000(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)Landroid/graphics/Bitmap;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$1200(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;Landroid/graphics/Bitmap;)Ljava/io/File;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$1102(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;Ljava/io/File;)Ljava/io/File;
pop
L1:
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$ProgressTask/snsModleMgr Lcom/nd/rj/common/microblogging/SNSModleMgr;
iload 4
aload 1
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$ProgressTask/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$1100(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)Ljava/io/File;
invokevirtual com/nd/rj/common/microblogging/SNSModleMgr/SendContent(ILjava/lang/String;Ljava/io/File;)I
istore 4
L3:
iload 4
ifne L10
iconst_1
istore 2
aload 6
iconst_1
iconst_0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
L11:
aload 0
aload 6
invokevirtual com/nd/rj/common/microblogging/SNSEditWeiBo$ProgressTask/publishProgress([Ljava/lang/Object;)V
iload 2
istore 5
L8:
iload 3
iconst_1
iadd
istore 3
iload 5
istore 2
goto L4
L6:
aload 1
checkcast com/nd/rj/common/microblogging/SNSType
getfield com/nd/rj/common/microblogging/SNSType/snstype I
istore 4
goto L7
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
iload 5
istore 4
goto L3
L10:
iload 4
sipush 424
if_icmpne L12
iconst_1
istore 2
aload 6
iconst_1
iconst_1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
goto L11
L12:
aload 6
iconst_1
iconst_m1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
goto L11
L5:
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$ProgressTask/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$1000(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)Landroid/graphics/Bitmap;
ifnull L13
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$ProgressTask/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$1000(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/recycle()V
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$ProgressTask/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
aconst_null
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$1002(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
pop
L13:
iload 2
istore 4
iload 2
ifne L14
iconst_0
istore 3
L15:
iload 2
istore 4
iload 3
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$ProgressTask/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$800(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L14
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$ProgressTask/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$800(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)Ljava/util/ArrayList;
iload 3
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
astore 1
aload 1
instanceof com/nd/rj/common/microblogging/SNSItem
ifeq L16
aload 1
checkcast com/nd/rj/common/microblogging/SNSItem
getfield com/nd/rj/common/microblogging/SNSItem/Type I
istore 4
L17:
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$ProgressTask/snsModleMgr Lcom/nd/rj/common/microblogging/SNSModleMgr;
iload 4
invokevirtual com/nd/rj/common/microblogging/SNSModleMgr/querybind(I)I
ifne L18
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$ProgressTask/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$900(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)Lcom/nd/rj/common/microblogging/help/ConfigSet;
iload 4
iconst_0
invokevirtual com/nd/rj/common/microblogging/help/ConfigSet/getBindState(IZ)Z
ifne L19
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$ProgressTask/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$900(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)Lcom/nd/rj/common/microblogging/help/ConfigSet;
iload 4
iconst_1
invokevirtual com/nd/rj/common/microblogging/help/ConfigSet/saveBindState(IZ)V
L19:
iconst_1
istore 2
L18:
iload 3
iconst_1
iadd
istore 3
goto L15
L16:
aload 1
checkcast com/nd/rj/common/microblogging/SNSType
getfield com/nd/rj/common/microblogging/SNSType/snstype I
istore 4
goto L17
L14:
iload 4
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
.limit locals 8
.limit stack 4
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/rj/common/microblogging/SNSEditWeiBo$ProgressTask/doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
aload 1
invokevirtual java/lang/Integer/intValue()I
ifne L0
invokestatic com/nd/rj/common/microblogging/SNSShare/getInstance()Lcom/nd/rj/common/microblogging/SNSShare;
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$ProgressTask/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$ProgressTask/snsModleMgr Lcom/nd/rj/common/microblogging/SNSModleMgr;
invokevirtual com/nd/rj/common/microblogging/SNSModleMgr/GetAppId()I
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$ProgressTask/snsModleMgr Lcom/nd/rj/common/microblogging/SNSModleMgr;
invokevirtual com/nd/rj/common/microblogging/SNSModleMgr/getAppCode()Ljava/lang/String;
aconst_null
aconst_null
aconst_null
aconst_null
invokevirtual com/nd/rj/common/microblogging/SNSShare/ShowSnsSet(Landroid/content/Context;ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
L0:
return
.limit locals 2
.limit stack 8
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/lang/Integer
invokevirtual com/nd/rj/common/microblogging/SNSEditWeiBo$ProgressTask/onPostExecute(Ljava/lang/Integer;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPreExecute()V
aload 0
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$ProgressTask/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
invokevirtual com/nd/rj/common/microblogging/SNSEditWeiBo/getApplicationContext()Landroid/content/Context;
invokestatic com/nd/rj/common/microblogging/SNSModleMgr/GetInstance(Landroid/content/Context;)Lcom/nd/rj/common/microblogging/SNSModleMgr;
putfield com/nd/rj/common/microblogging/SNSEditWeiBo$ProgressTask/snsModleMgr Lcom/nd/rj/common/microblogging/SNSModleMgr;
return
.limit locals 1
.limit stack 2
.end method

.method protected transient onProgressUpdate([Ljava/lang/Integer;)V
aload 1
iconst_0
aaload
invokevirtual java/lang/Integer/intValue()I
istore 4
aload 1
iconst_1
aaload
invokevirtual java/lang/Integer/intValue()I
istore 5
iconst_0
istore 2
L0:
iload 2
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$ProgressTask/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$800(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L1
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$ProgressTask/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$800(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
astore 1
aload 1
instanceof com/nd/rj/common/microblogging/SNSItem
ifeq L2
aload 1
checkcast com/nd/rj/common/microblogging/SNSItem
astore 6
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$ProgressTask/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
aload 6
getfield com/nd/rj/common/microblogging/SNSItem/nameRes I
invokevirtual com/nd/rj/common/microblogging/SNSEditWeiBo/getString(I)Ljava/lang/String;
astore 1
aload 6
getfield com/nd/rj/common/microblogging/SNSItem/Type I
istore 3
L3:
iload 3
iload 4
if_icmpne L4
invokestatic com/nd/rj/common/microblogging/SNSShare/getInstance()Lcom/nd/rj/common/microblogging/SNSShare;
invokevirtual com/nd/rj/common/microblogging/SNSShare/getShareProcessListener()Lcom/nd/rj/common/microblogging/SNSShare$OnShareProcessListener;
astore 6
aload 6
ifnull L4
aload 6
iload 3
aload 1
iload 5
invokeinterface com/nd/rj/common/microblogging/SNSShare$OnShareProcessListener/OnItemFinishRes(ILjava/lang/String;I)V 3
L4:
iload 2
iconst_1
iadd
istore 2
goto L0
L2:
aload 1
checkcast com/nd/rj/common/microblogging/SNSType
astore 6
aload 6
getfield com/nd/rj/common/microblogging/SNSType/snsname Ljava/lang/String;
astore 1
aload 6
getfield com/nd/rj/common/microblogging/SNSType/snstype I
istore 3
goto L3
L1:
return
.limit locals 7
.limit stack 4
.end method

.method protected volatile synthetic onProgressUpdate([Ljava/lang/Object;)V
aload 0
aload 1
checkcast [Ljava/lang/Integer;
invokevirtual com/nd/rj/common/microblogging/SNSEditWeiBo$ProgressTask/onProgressUpdate([Ljava/lang/Integer;)V
return
.limit locals 2
.limit stack 2
.end method
