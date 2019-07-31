.bytecode 50.0
.class public synchronized com/nd/rj/common/suggest/NdSuggestplatform
.super java/lang/Object

.field private static '_instance' Lcom/nd/rj/common/suggest/NdSuggestplatform;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getInstance()Lcom/nd/rj/common/suggest/NdSuggestplatform;
getstatic com/nd/rj/common/suggest/NdSuggestplatform/_instance Lcom/nd/rj/common/suggest/NdSuggestplatform;
ifnonnull L0
new com/nd/rj/common/suggest/NdSuggestplatform
dup
invokespecial com/nd/rj/common/suggest/NdSuggestplatform/<init>()V
putstatic com/nd/rj/common/suggest/NdSuggestplatform/_instance Lcom/nd/rj/common/suggest/NdSuggestplatform;
L0:
getstatic com/nd/rj/common/suggest/NdSuggestplatform/_instance Lcom/nd/rj/common/suggest/NdSuggestplatform;
areturn
.limit locals 0
.limit stack 2
.end method

.method public getNewSuggestCount(Landroid/content/Context;JLjava/lang/String;)I
aload 1
invokestatic com/nd/rj/common/suggest/SuggestPro/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/suggest/SuggestPro;
aload 1
aload 4
lload 2
invokevirtual com/nd/rj/common/suggest/SuggestPro/downSuggestList(Landroid/content/Context;Ljava/lang/String;J)I
ireturn
.limit locals 5
.limit stack 5
.end method

.method public showSuggestSubmit(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
new android/content/Intent
dup
aload 1
ldc com/nd/rj/common/suggest/view/UISubmitOpinionAty
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 6
aload 6
ldc "USER_ID"
lload 2
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 6
ldc "PROD_ID"
aload 4
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 6
ldc "PROD_NAME"
aload 5
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
aload 6
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 7
.limit stack 4
.end method
