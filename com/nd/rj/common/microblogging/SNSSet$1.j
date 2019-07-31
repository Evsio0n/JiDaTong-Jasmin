.bytecode 50.0
.class synchronized com/nd/rj/common/microblogging/SNSSet$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/rj/common/microblogging/SNSSet
.inner class inner com/nd/rj/common/microblogging/SNSSet$1

.field final synthetic 'this$0' Lcom/nd/rj/common/microblogging/SNSSet;

.method <init>(Lcom/nd/rj/common/microblogging/SNSSet;)V
aload 0
aload 1
putfield com/nd/rj/common/microblogging/SNSSet$1/this$0 Lcom/nd/rj/common/microblogging/SNSSet;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/rj/common/microblogging/SNSSet$1/this$0 Lcom/nd/rj/common/microblogging/SNSSet;
invokestatic com/nd/rj/common/microblogging/SNSSet/access$000(Lcom/nd/rj/common/microblogging/SNSSet;)Lcom/nd/rj/common/microblogging/SNSItemSetAdapter;
ifnull L0
aload 0
getfield com/nd/rj/common/microblogging/SNSSet$1/this$0 Lcom/nd/rj/common/microblogging/SNSSet;
invokestatic com/nd/rj/common/microblogging/SNSSet/access$000(Lcom/nd/rj/common/microblogging/SNSSet;)Lcom/nd/rj/common/microblogging/SNSItemSetAdapter;
invokevirtual com/nd/rj/common/microblogging/SNSItemSetAdapter/hasAssociated()Z
ifeq L0
getstatic com/nd/rj/common/microblogging/SNSSet/PARAMS Ljava/util/HashMap;
ifnull L0
invokestatic com/nd/rj/common/microblogging/SNSShare/getInstance()Lcom/nd/rj/common/microblogging/SNSShare;
aload 0
getfield com/nd/rj/common/microblogging/SNSSet$1/this$0 Lcom/nd/rj/common/microblogging/SNSSet;
getstatic com/nd/rj/common/microblogging/SNSSet/PARAMS Ljava/util/HashMap;
getstatic com/nd/rj/common/microblogging/SNSSet/APP_ID I
getstatic com/nd/rj/common/microblogging/SNSSet/APP_CODE Ljava/lang/String;
getstatic com/nd/rj/common/microblogging/SNSSet/CONTENT Ljava/lang/String;
getstatic com/nd/rj/common/microblogging/SNSSet/BMP Landroid/graphics/Bitmap;
getstatic com/nd/rj/common/microblogging/SNSSet/DOWNLOAD_URL Ljava/lang/String;
invokevirtual com/nd/rj/common/microblogging/SNSShare/SendTextAndImage(Landroid/content/Context;Ljava/util/HashMap;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
L0:
invokestatic com/nd/rj/common/microblogging/SNSSet/access$100()V
aload 0
getfield com/nd/rj/common/microblogging/SNSSet$1/this$0 Lcom/nd/rj/common/microblogging/SNSSet;
iconst_m1
aconst_null
invokevirtual com/nd/rj/common/microblogging/SNSSet/setResult(ILandroid/content/Intent;)V
aload 0
getfield com/nd/rj/common/microblogging/SNSSet$1/this$0 Lcom/nd/rj/common/microblogging/SNSSet;
invokevirtual com/nd/rj/common/microblogging/SNSSet/finish()V
return
.limit locals 2
.limit stack 8
.end method
