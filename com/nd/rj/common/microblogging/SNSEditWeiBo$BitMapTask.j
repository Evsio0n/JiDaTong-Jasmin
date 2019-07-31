.bytecode 50.0
.class synchronized com/nd/rj/common/microblogging/SNSEditWeiBo$BitMapTask
.super android/os/AsyncTask
.signature "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Integer;Ljava/lang/Integer;>;"
.inner class private BitMapTask inner com/nd/rj/common/microblogging/SNSEditWeiBo$BitMapTask outer com/nd/rj/common/microblogging/SNSEditWeiBo

.field final synthetic 'this$0' Lcom/nd/rj/common/microblogging/SNSEditWeiBo;

.method private <init>(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)V
aload 0
aload 1
putfield com/nd/rj/common/microblogging/SNSEditWeiBo$BitMapTask/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
aload 0
invokespecial android/os/AsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;Lcom/nd/rj/common/microblogging/SNSEditWeiBo$1;)V
aload 0
aload 1
invokespecial com/nd/rj/common/microblogging/SNSEditWeiBo$BitMapTask/<init>(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
.catch java/lang/OutOfMemoryError from L0 to L1 using L2
.catch java/lang/Exception from L0 to L1 using L3
.catch java/lang/OutOfMemoryError from L1 to L4 using L2
.catch java/lang/Exception from L1 to L4 using L3
.catch java/lang/OutOfMemoryError from L4 to L5 using L2
.catch java/lang/Exception from L4 to L5 using L3
L0:
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$BitMapTask/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$BitMapTask/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
invokestatic com/nd/rj/common/microblogging/SNSModleMgr/GetInstance(Landroid/content/Context;)Lcom/nd/rj/common/microblogging/SNSModleMgr;
invokevirtual com/nd/rj/common/microblogging/SNSModleMgr/GetBitMap()Landroid/graphics/Bitmap;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$1002(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
pop
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$BitMapTask/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$1000(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)Landroid/graphics/Bitmap;
ifnonnull L4
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$BitMapTask/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$1100(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)Ljava/io/File;
ifnull L1
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$BitMapTask/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$BitMapTask/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$BitMapTask/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$1100(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)Ljava/io/File;
invokevirtual java/io/File/getPath()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$BitMapTask/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$100(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)Landroid/widget/ImageView;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$1400(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$1302(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
pop
L1:
aload 0
iconst_1
anewarray java/lang/Integer
dup
iconst_0
iconst_1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokevirtual com/nd/rj/common/microblogging/SNSEditWeiBo$BitMapTask/publishProgress([Ljava/lang/Object;)V
iconst_1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
L4:
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$BitMapTask/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$BitMapTask/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$BitMapTask/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$1000(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)Landroid/graphics/Bitmap;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$1500(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$1302(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
pop
L5:
goto L1
L2:
astore 1
iconst_0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
L3:
astore 1
iconst_0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 5
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/rj/common/microblogging/SNSEditWeiBo$BitMapTask/doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected transient onProgressUpdate([Ljava/lang/Integer;)V
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$BitMapTask/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$1300(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)Landroid/graphics/Bitmap;
ifnull L0
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$BitMapTask/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$100(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)Landroid/widget/ImageView;
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$BitMapTask/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$1300(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)Landroid/graphics/Bitmap;
invokevirtual android/widget/ImageView/setImageBitmap(Landroid/graphics/Bitmap;)V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic onProgressUpdate([Ljava/lang/Object;)V
aload 0
aload 1
checkcast [Ljava/lang/Integer;
invokevirtual com/nd/rj/common/microblogging/SNSEditWeiBo$BitMapTask/onProgressUpdate([Ljava/lang/Integer;)V
return
.limit locals 2
.limit stack 2
.end method
