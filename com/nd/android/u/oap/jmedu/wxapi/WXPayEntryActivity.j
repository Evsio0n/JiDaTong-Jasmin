.bytecode 50.0
.class public synchronized com/nd/android/u/oap/jmedu/wxapi/WXPayEntryActivity
.super android/app/Activity
.implements com/tencent/mm/sdk/openapi/IWXAPIEventHandler

.field public static final 'LOG_TAG' Ljava/lang/String; = "xq_newcapec_pay"

.field private final 'TAG' Ljava/lang/String;

.field private 'api' Lcom/tencent/mm/sdk/openapi/IWXAPI;

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
aload 0
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putfield com/nd/android/u/oap/jmedu/wxapi/WXPayEntryActivity/TAG Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Activity/onCreate(Landroid/os/Bundle;)V
ldc "xq_newcapec_pay"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/oap/jmedu/wxapi/WXPayEntryActivity/TAG Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ",\u5fae\u4fe1\u652f\u4ed8\u56de\u8c03activity---->onCreate"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
invokevirtual com/nd/android/u/oap/jmedu/wxapi/WXPayEntryActivity/getResources()Landroid/content/res/Resources;
getstatic net/newcapec/pay/R$string/weixin_appid I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 1
ldc "xq_newcapec_pay"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/oap/jmedu/wxapi/WXPayEntryActivity/TAG Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ",\u5fae\u4fe1appId---->"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
aload 0
aload 1
invokestatic com/tencent/mm/sdk/openapi/WXAPIFactory/createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;
putfield com/nd/android/u/oap/jmedu/wxapi/WXPayEntryActivity/api Lcom/tencent/mm/sdk/openapi/IWXAPI;
aload 0
getfield com/nd/android/u/oap/jmedu/wxapi/WXPayEntryActivity/api Lcom/tencent/mm/sdk/openapi/IWXAPI;
aload 0
invokevirtual com/nd/android/u/oap/jmedu/wxapi/WXPayEntryActivity/getIntent()Landroid/content/Intent;
aload 0
invokeinterface com/tencent/mm/sdk/openapi/IWXAPI/handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z 2
pop
return
.limit locals 2
.limit stack 3
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
aload 0
aload 1
invokespecial android/app/Activity/onNewIntent(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)V
ldc "xq_newcapec_pay"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/oap/jmedu/wxapi/WXPayEntryActivity/TAG Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ",onReq "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
return
.limit locals 2
.limit stack 3
.end method

.method public onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V
ldc "xq_newcapec_pay"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/oap/jmedu/wxapi/WXPayEntryActivity/TAG Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ",weixin onPayFinish, errCode = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
getfield com/tencent/mm/sdk/modelbase/BaseResp/errCode I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 1
invokevirtual com/tencent/mm/sdk/modelbase/BaseResp/getType()I
iconst_5
if_icmpne L0
ldc "xq_newcapec_pay"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/oap/jmedu/wxapi/WXPayEntryActivity/TAG Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ",\u6536\u5230\u5fae\u4fe1\u652f\u4ed8\u7ed3\u679c\u56de\u8c03"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 2
aload 2
getstatic net/newcapec/pay/paymethod/WXPay/ReceiverExtraName Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
getfield com/tencent/mm/sdk/modelbase/BaseResp/errCode I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
getstatic net/newcapec/pay/paymethod/WXPay/ReceiverActionName Ljava/lang/String;
invokevirtual android/content/Intent/setAction(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
aload 2
invokevirtual com/nd/android/u/oap/jmedu/wxapi/WXPayEntryActivity/sendBroadcast(Landroid/content/Intent;)V
aload 0
invokevirtual com/nd/android/u/oap/jmedu/wxapi/WXPayEntryActivity/finish()V
L0:
return
.limit locals 3
.limit stack 4
.end method
