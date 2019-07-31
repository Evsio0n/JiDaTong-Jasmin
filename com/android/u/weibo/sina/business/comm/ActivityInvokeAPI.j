.bytecode 50.0
.class public synchronized com/android/u/weibo/sina/business/comm/ActivityInvokeAPI
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static openContact(Landroid/app/Activity;)V
aload 0
ifnonnull L0
return
L0:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 1
ldc "android.intent.action.VIEW"
invokevirtual android/content/Intent/setAction(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
ldc "android.intent.category.DEFAULT"
invokevirtual android/content/Intent/addCategory(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
ldc "sinaweibo://contact"
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
invokevirtual android/content/Intent/setData(Landroid/net/Uri;)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 2
.end method

.method public static openDetail(Landroid/app/Activity;Ljava/lang/String;)V
aload 0
ifnonnull L0
return
L0:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 2
aload 2
ldc "android.intent.action.VIEW"
invokevirtual android/content/Intent/setAction(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
ldc "android.intent.category.DEFAULT"
invokevirtual android/content/Intent/addCategory(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "sinaweibo://detail?mblogid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
invokevirtual android/content/Intent/setData(Landroid/net/Uri;)Landroid/content/Intent;
pop
aload 0
aload 2
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 3
.end method

.method public static openMessageListByNickName(Landroid/app/Activity;Ljava/lang/String;)V
aload 0
ifnonnull L0
return
L0:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 2
aload 2
ldc "android.intent.action.VIEW"
invokevirtual android/content/Intent/setAction(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
ldc "android.intent.category.DEFAULT"
invokevirtual android/content/Intent/addCategory(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "sinaweibo://messagelist?nick="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
invokevirtual android/content/Intent/setData(Landroid/net/Uri;)Landroid/content/Intent;
pop
aload 0
aload 2
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 3
.end method

.method public static openMessageListByUid(Landroid/app/Activity;Ljava/lang/String;)V
aload 0
ifnonnull L0
return
L0:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 2
aload 2
ldc "android.intent.action.VIEW"
invokevirtual android/content/Intent/setAction(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
ldc "android.intent.category.DEFAULT"
invokevirtual android/content/Intent/addCategory(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "sinaweibo://messagelist?uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
invokevirtual android/content/Intent/setData(Landroid/net/Uri;)Landroid/content/Intent;
pop
aload 0
aload 2
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 3
.end method

.method public static openNearbyPeople(Landroid/app/Activity;)V
aload 0
ifnonnull L0
return
L0:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 1
ldc "android.intent.action.VIEW"
invokevirtual android/content/Intent/setAction(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
ldc "android.intent.category.DEFAULT"
invokevirtual android/content/Intent/addCategory(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
ldc "sinaweibo://nearbypeople"
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
invokevirtual android/content/Intent/setData(Landroid/net/Uri;)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 2
.end method

.method public static openNearbyWeibo(Landroid/app/Activity;)V
aload 0
ifnonnull L0
return
L0:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 1
ldc "android.intent.action.VIEW"
invokevirtual android/content/Intent/setAction(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
ldc "android.intent.category.DEFAULT"
invokevirtual android/content/Intent/addCategory(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
ldc "sinaweibo://nearbyweibo"
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
invokevirtual android/content/Intent/setData(Landroid/net/Uri;)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 2
.end method

.method public static openSendWeibo(Landroid/app/Activity;Ljava/lang/String;)V
aload 0
ifnull L0
aload 1
ifnonnull L1
L0:
return
L1:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 2
aload 2
ldc "android.intent.action.VIEW"
invokevirtual android/content/Intent/setAction(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
ldc "android.intent.category.DEFAULT"
invokevirtual android/content/Intent/addCategory(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "sinaweibo://sendweibo?content="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokestatic java/net/URLEncoder/encode(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
invokevirtual android/content/Intent/setData(Landroid/net/Uri;)Landroid/content/Intent;
pop
aload 0
aload 2
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 3
.end method

.method public static openSendWeibo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 0
ifnonnull L0
return
L0:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 7
aload 7
ldc "android.intent.action.VIEW"
invokevirtual android/content/Intent/setAction(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 7
ldc "android.intent.category.DEFAULT"
invokevirtual android/content/Intent/addCategory(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "sinaweibo://sendweibo?content="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&xid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&poiid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&poiname="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&longitude="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&latitude="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
invokevirtual android/content/Intent/setData(Landroid/net/Uri;)Landroid/content/Intent;
pop
aload 0
aload 7
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
return
.limit locals 8
.limit stack 3
.end method

.method public static openShake(Landroid/app/Activity;)V
aload 0
ifnonnull L0
return
L0:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 1
ldc "android.intent.action.VIEW"
invokevirtual android/content/Intent/setAction(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
ldc "android.intent.category.DEFAULT"
invokevirtual android/content/Intent/addCategory(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
ldc "sinaweibo://shake"
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
invokevirtual android/content/Intent/setData(Landroid/net/Uri;)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 2
.end method

.method public static openUserInfoByNickName(Landroid/app/Activity;Ljava/lang/String;)V
aload 0
ifnonnull L0
return
L0:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 2
aload 2
ldc "android.intent.action.VIEW"
invokevirtual android/content/Intent/setAction(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
ldc "android.intent.category.DEFAULT"
invokevirtual android/content/Intent/addCategory(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "sinaweibo://userinfo?nick="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
invokevirtual android/content/Intent/setData(Landroid/net/Uri;)Landroid/content/Intent;
pop
aload 0
aload 2
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 3
.end method

.method public static openUserInfoByUid(Landroid/app/Activity;Ljava/lang/String;)V
aload 0
ifnonnull L0
return
L0:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 2
aload 2
ldc "android.intent.action.VIEW"
invokevirtual android/content/Intent/setAction(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
ldc "android.intent.category.DEFAULT"
invokevirtual android/content/Intent/addCategory(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "sinaweibo://userinfo?uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
invokevirtual android/content/Intent/setData(Landroid/net/Uri;)Landroid/content/Intent;
pop
aload 0
aload 2
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 3
.end method

.method public static openUserTrends(Landroid/app/Activity;Ljava/lang/String;)V
aload 0
ifnonnull L0
return
L0:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 2
aload 2
ldc "android.intent.action.VIEW"
invokevirtual android/content/Intent/setAction(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
ldc "android.intent.category.DEFAULT"
invokevirtual android/content/Intent/addCategory(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "sinaweibo://usertrends?uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
invokevirtual android/content/Intent/setData(Landroid/net/Uri;)Landroid/content/Intent;
pop
aload 0
aload 2
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 3
.end method

.method public static openWeibo(Landroid/app/Activity;)V
aload 0
ifnonnull L0
return
L0:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 1
ldc "android.intent.action.VIEW"
invokevirtual android/content/Intent/setAction(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
ldc "android.intent.category.DEFAULT"
invokevirtual android/content/Intent/addCategory(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
ldc "sinaweibo://splash"
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
invokevirtual android/content/Intent/setData(Landroid/net/Uri;)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 2
.end method

.method public static openWeiboBrowser(Landroid/app/Activity;Ljava/lang/String;)V
aload 0
ifnonnull L0
return
L0:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 2
aload 2
ldc "android.intent.action.VIEW"
invokevirtual android/content/Intent/setAction(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
ldc "android.intent.category.DEFAULT"
invokevirtual android/content/Intent/addCategory(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "sinaweibo://browser?url="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
invokevirtual android/content/Intent/setData(Landroid/net/Uri;)Landroid/content/Intent;
pop
aload 0
aload 2
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 3
.end method
