.bytecode 50.0
.class synchronized com/common/android/utils/smiley/Smileyhelper$MyUrlSpan
.super android/text/style/URLSpan
.inner class MyUrlSpan inner com/common/android/utils/smiley/Smileyhelper$MyUrlSpan outer com/common/android/utils/smiley/Smileyhelper

.field final synthetic 'this$0' Lcom/common/android/utils/smiley/Smileyhelper;

.method public <init>(Lcom/common/android/utils/smiley/Smileyhelper;Ljava/lang/String;)V
aload 0
aload 1
putfield com/common/android/utils/smiley/Smileyhelper$MyUrlSpan/this$0 Lcom/common/android/utils/smiley/Smileyhelper;
aload 0
aload 2
invokespecial android/text/style/URLSpan/<init>(Ljava/lang/String;)V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getTag()Ljava/lang/Object;
ifnull L0
aload 1
aconst_null
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
return
L0:
aload 1
invokevirtual android/view/View/getContext()Landroid/content/Context;
astore 1
aload 0
invokevirtual com/common/android/utils/smiley/Smileyhelper$MyUrlSpan/getURL()Ljava/lang/String;
astore 2
aload 0
getfield com/common/android/utils/smiley/Smileyhelper$MyUrlSpan/this$0 Lcom/common/android/utils/smiley/Smileyhelper;
invokestatic com/common/android/utils/smiley/Smileyhelper/access$000(Lcom/common/android/utils/smiley/Smileyhelper;)Z
ifeq L1
aload 1
new android/content/Intent
dup
ldc "android.intent.action.VIEW"
aload 2
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
invokespecial android/content/Intent/<init>(Ljava/lang/String;Landroid/net/Uri;)V
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
L1:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 3
aload 3
aload 1
ldc "com.product.android.ui.activity.WebViewActivity"
invokevirtual android/content/Intent/setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 3
ldc "com.android.browser.application_id"
aload 1
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 3
ldc "extars_webview_url"
aload 2
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
aload 3
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 4
.limit stack 5
.end method
