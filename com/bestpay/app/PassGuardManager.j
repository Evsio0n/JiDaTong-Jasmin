.bytecode 50.0
.class public synchronized com/bestpay/app/PassGuardManager
.super java/lang/Object
.inner class inner com/bestpay/app/PassGuardManager$1
.inner class inner com/bestpay/app/PassGuardManager$1$1
.inner class inner com/bestpay/app/PassGuardManager$2
.inner class inner com/bestpay/app/PassGuardManager$2$1

.field private static 'INSTANCE' Lcom/bestpay/app/PassGuardManager;

.field private static 'INSTANCE_LOCK' Ljava/lang/Object;

.field private static 'm_context' Landroid/content/Context;

.field 'manager' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/String;Lcn/passguard/PassGuardEdit;>;"

.field private 'passGuardEdit' Lcn/passguard/PassGuardEdit;

.field private 'webView' Landroid/webkit/WebView;

.method static <clinit>()V
new java/lang/Object
dup
invokespecial java/lang/Object/<init>()V
putstatic com/bestpay/app/PassGuardManager/INSTANCE_LOCK Ljava/lang/Object;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/bestpay/app/PassGuardManager/manager Ljava/util/HashMap;
return
.limit locals 1
.limit stack 3
.end method

.method static synthetic access$0()Landroid/content/Context;
getstatic com/bestpay/app/PassGuardManager/m_context Landroid/content/Context;
areturn
.limit locals 0
.limit stack 1
.end method

.method static synthetic access$1(Lcom/bestpay/app/PassGuardManager;)Landroid/webkit/WebView;
aload 0
getfield com/bestpay/app/PassGuardManager/webView Landroid/webkit/WebView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2(Lcom/bestpay/app/PassGuardManager;)Lcn/passguard/PassGuardEdit;
aload 0
getfield com/bestpay/app/PassGuardManager/passGuardEdit Lcn/passguard/PassGuardEdit;
areturn
.limit locals 1
.limit stack 1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/bestpay/app/PassGuardManager;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L5
.catch all from L6 to L7 using L2
.catch all from L8 to L9 using L5
getstatic com/bestpay/app/PassGuardManager/INSTANCE Lcom/bestpay/app/PassGuardManager;
ifnonnull L1
getstatic com/bestpay/app/PassGuardManager/INSTANCE_LOCK Ljava/lang/Object;
astore 1
aload 1
monitorenter
L0:
new com/bestpay/app/PassGuardManager
dup
invokespecial com/bestpay/app/PassGuardManager/<init>()V
putstatic com/bestpay/app/PassGuardManager/INSTANCE Lcom/bestpay/app/PassGuardManager;
aload 1
monitorexit
L1:
getstatic com/bestpay/app/PassGuardManager/INSTANCE_LOCK Ljava/lang/Object;
astore 1
aload 1
monitorenter
L3:
aload 0
putstatic com/bestpay/app/PassGuardManager/m_context Landroid/content/Context;
aload 1
monitorexit
L4:
getstatic com/bestpay/app/PassGuardManager/INSTANCE Lcom/bestpay/app/PassGuardManager;
areturn
L2:
astore 0
L6:
aload 1
monitorexit
L7:
aload 0
athrow
L5:
astore 0
L8:
aload 1
monitorexit
L9:
aload 0
athrow
.limit locals 2
.limit stack 2
.end method

.method public ClearPassGuardKeyBoard(Ljava/lang/String;)V
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
getfield com/bestpay/app/PassGuardManager/manager Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
pop
return
.limit locals 2
.limit stack 2
.end method

.method public EditTextAlwaysShow(Ljava/lang/String;Z)V
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
getfield com/bestpay/app/PassGuardManager/manager Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast cn/passguard/PassGuardEdit
iload 2
invokevirtual cn/passguard/PassGuardEdit/EditTextAlwaysShow(Z)V
return
.limit locals 3
.limit stack 2
.end method

.method public StartPassGuardKeyBoard(Ljava/lang/String;)V
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
aload 1
invokevirtual com/bestpay/app/PassGuardManager/StopPassGuardKeyBoardAllExceptID(Ljava/lang/String;)V
aload 0
getfield com/bestpay/app/PassGuardManager/manager Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast cn/passguard/PassGuardEdit
invokevirtual cn/passguard/PassGuardEdit/StartPassGuardKeyBoard()V
return
.limit locals 2
.limit stack 2
.end method

.method public StopPassGuardKeyBoard(Ljava/lang/String;)V
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
getfield com/bestpay/app/PassGuardManager/manager Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast cn/passguard/PassGuardEdit
invokevirtual cn/passguard/PassGuardEdit/StopPassGuardKeyBoard()V
return
.limit locals 2
.limit stack 2
.end method

.method public StopPassGuardKeyBoardAll()V
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
getfield com/bestpay/app/PassGuardManager/manager Ljava/util/HashMap;
invokevirtual java/util/HashMap/entrySet()Ljava/util/Set;
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L1
return
L1:
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 2
aload 2
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast cn/passguard/PassGuardEdit
invokevirtual cn/passguard/PassGuardEdit/isKeyBoardShowing()Z
ifeq L0
aload 2
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast cn/passguard/PassGuardEdit
invokevirtual cn/passguard/PassGuardEdit/StopPassGuardKeyBoard()V
goto L0
.limit locals 3
.limit stack 1
.end method

.method public StopPassGuardKeyBoardAllExceptID(Ljava/lang/String;)V
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
getfield com/bestpay/app/PassGuardManager/manager Ljava/util/HashMap;
invokevirtual java/util/HashMap/entrySet()Ljava/util/Set;
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 2
L0:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L1
return
L1:
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 3
aload 3
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast java/lang/String
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 3
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast cn/passguard/PassGuardEdit
invokevirtual cn/passguard/PassGuardEdit/isKeyBoardShowing()Z
ifeq L0
aload 3
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast cn/passguard/PassGuardEdit
invokevirtual cn/passguard/PassGuardEdit/StopPassGuardKeyBoard()V
goto L0
.limit locals 4
.limit stack 2
.end method

.method public checkMatch(Ljava/lang/String;)Z
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
getfield com/bestpay/app/PassGuardManager/manager Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast cn/passguard/PassGuardEdit
invokevirtual cn/passguard/PassGuardEdit/checkMatch()Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public clear(Ljava/lang/String;)V
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
getfield com/bestpay/app/PassGuardManager/manager Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast cn/passguard/PassGuardEdit
invokevirtual cn/passguard/PassGuardEdit/clear()V
return
.limit locals 2
.limit stack 2
.end method

.method public destory(Ljava/lang/String;)V
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
getfield com/bestpay/app/PassGuardManager/manager Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast cn/passguard/PassGuardEdit
invokevirtual cn/passguard/PassGuardEdit/destory()V
aload 0
getfield com/bestpay/app/PassGuardManager/manager Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
pop
return
.limit locals 2
.limit stack 2
.end method

.method public getOutput0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
getfield com/bestpay/app/PassGuardManager/manager Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast cn/passguard/PassGuardEdit
aload 2
aload 3
invokevirtual cn/passguard/PassGuardEdit/getOutput0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 4
.limit stack 3
.end method

.method public getOutput1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
getfield com/bestpay/app/PassGuardManager/manager Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast cn/passguard/PassGuardEdit
aload 2
invokevirtual cn/passguard/PassGuardEdit/getOutput1(Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 3
.limit stack 2
.end method

.method public getOutput2(Ljava/lang/String;)Ljava/lang/String;
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
getfield com/bestpay/app/PassGuardManager/manager Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast cn/passguard/PassGuardEdit
invokevirtual cn/passguard/PassGuardEdit/getOutput2()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getOutput3(Ljava/lang/String;)I
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
getfield com/bestpay/app/PassGuardManager/manager Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast cn/passguard/PassGuardEdit
invokevirtual cn/passguard/PassGuardEdit/getOutput3()I
ireturn
.limit locals 2
.limit stack 2
.end method

.method public getPassLevel(Ljava/lang/String;)I
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
getfield com/bestpay/app/PassGuardManager/manager Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast cn/passguard/PassGuardEdit
invokevirtual cn/passguard/PassGuardEdit/getPassLevel()[I
iconst_0
iaload
ireturn
.limit locals 2
.limit stack 2
.end method

.method public getText(Ljava/lang/String;)Ljava/lang/String;
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
getfield com/bestpay/app/PassGuardManager/manager Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast cn/passguard/PassGuardEdit
invokevirtual cn/passguard/PassGuardEdit/getText()Landroid/text/Editable;
invokeinterface android/text/Editable/toString()Ljava/lang/String; 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public hasKeyBoardShowing()Z
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
getfield com/bestpay/app/PassGuardManager/manager Ljava/util/HashMap;
invokevirtual java/util/HashMap/entrySet()Ljava/util/Set;
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L1
iconst_0
ireturn
L1:
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast cn/passguard/PassGuardEdit
invokevirtual cn/passguard/PassGuardEdit/isKeyBoardShowing()Z
ifeq L0
iconst_1
ireturn
.limit locals 2
.limit stack 1
.end method

.method public hasPassGuard(Ljava/lang/String;)Z
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
getfield com/bestpay/app/PassGuardManager/manager Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public initPassGuardKeyBoard(Ljava/lang/String;)V
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
getfield com/bestpay/app/PassGuardManager/manager Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast cn/passguard/PassGuardEdit
invokevirtual cn/passguard/PassGuardEdit/initPassGuardKeyBoard()V
return
.limit locals 2
.limit stack 2
.end method

.method public isKeyBoardShowing(Ljava/lang/String;)Z
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
getfield com/bestpay/app/PassGuardManager/manager Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast cn/passguard/PassGuardEdit
invokevirtual cn/passguard/PassGuardEdit/isKeyBoardShowing()Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public isSimple(Ljava/lang/String;)I
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
getfield com/bestpay/app/PassGuardManager/manager Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast cn/passguard/PassGuardEdit
invokevirtual cn/passguard/PassGuardEdit/getPassLevel()[I
iconst_1
iaload
ireturn
.limit locals 2
.limit stack 2
.end method

.method public newPassGuard(Ljava/lang/String;)V
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
new cn/passguard/PassGuardEdit
dup
getstatic com/bestpay/app/PassGuardManager/m_context Landroid/content/Context;
aconst_null
invokespecial cn/passguard/PassGuardEdit/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
putfield com/bestpay/app/PassGuardManager/passGuardEdit Lcn/passguard/PassGuardEdit;
aload 0
getfield com/bestpay/app/PassGuardManager/passGuardEdit Lcn/passguard/PassGuardEdit;
aload 1
putfield cn/passguard/PassGuardEdit/m_strid Ljava/lang/String;
aload 0
getfield com/bestpay/app/PassGuardManager/passGuardEdit Lcn/passguard/PassGuardEdit;
aload 0
getfield com/bestpay/app/PassGuardManager/webView Landroid/webkit/WebView;
putfield cn/passguard/PassGuardEdit/m_webview Landroid/webkit/WebView;
new com/bestpay/app/PassGuardManager$1
dup
aload 0
aload 1
invokespecial com/bestpay/app/PassGuardManager$1/<init>(Lcom/bestpay/app/PassGuardManager;Ljava/lang/String;)V
astore 2
new com/bestpay/app/PassGuardManager$2
dup
aload 0
invokespecial com/bestpay/app/PassGuardManager$2/<init>(Lcom/bestpay/app/PassGuardManager;)V
astore 3
aload 0
getfield com/bestpay/app/PassGuardManager/passGuardEdit Lcn/passguard/PassGuardEdit;
aload 2
invokevirtual cn/passguard/PassGuardEdit/setKeyBoardHideAction(Lcn/passguard/doAction;)V
aload 0
getfield com/bestpay/app/PassGuardManager/passGuardEdit Lcn/passguard/PassGuardEdit;
aload 3
invokevirtual cn/passguard/PassGuardEdit/setKeyBoardShowAction(Lcn/passguard/doAction;)V
aload 0
getfield com/bestpay/app/PassGuardManager/manager Ljava/util/HashMap;
aload 1
aload 0
getfield com/bestpay/app/PassGuardManager/passGuardEdit Lcn/passguard/PassGuardEdit;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
return
.limit locals 4
.limit stack 5
.end method

.method public setButtonPress(Ljava/lang/String;Z)V
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
getfield com/bestpay/app/PassGuardManager/manager Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast cn/passguard/PassGuardEdit
iload 2
invokevirtual cn/passguard/PassGuardEdit/setButtonPress(Z)V
return
.limit locals 3
.limit stack 2
.end method

.method public setCipherKey(Ljava/lang/String;Ljava/lang/String;)V
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
getfield com/bestpay/app/PassGuardManager/manager Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast cn/passguard/PassGuardEdit
aload 2
invokevirtual cn/passguard/PassGuardEdit/setCipherKey(Ljava/lang/String;)V
return
.limit locals 3
.limit stack 2
.end method

.method public setEncrypt(Ljava/lang/String;Z)V
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
getfield com/bestpay/app/PassGuardManager/manager Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast cn/passguard/PassGuardEdit
iload 2
invokevirtual cn/passguard/PassGuardEdit/setEncrypt(Z)V
return
.limit locals 3
.limit stack 2
.end method

.method public setInputRegex(Ljava/lang/String;Ljava/lang/String;)V
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
getfield com/bestpay/app/PassGuardManager/manager Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast cn/passguard/PassGuardEdit
aload 2
invokevirtual cn/passguard/PassGuardEdit/setInputRegex(Ljava/lang/String;)V
return
.limit locals 3
.limit stack 2
.end method

.method public setMatchRegex(Ljava/lang/String;Ljava/lang/String;)V
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
getfield com/bestpay/app/PassGuardManager/manager Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast cn/passguard/PassGuardEdit
aload 2
invokevirtual cn/passguard/PassGuardEdit/setMatchRegex(Ljava/lang/String;)V
return
.limit locals 3
.limit stack 2
.end method

.method public setMaxLength(Ljava/lang/String;I)V
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
getfield com/bestpay/app/PassGuardManager/manager Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast cn/passguard/PassGuardEdit
iload 2
invokevirtual cn/passguard/PassGuardEdit/setMaxLength(I)V
return
.limit locals 3
.limit stack 2
.end method

.method public setNumberORLetterPad(Ljava/lang/String;Z)V
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
getfield com/bestpay/app/PassGuardManager/manager Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast cn/passguard/PassGuardEdit
iload 2
invokevirtual cn/passguard/PassGuardEdit/setNumberORLetterPad(Z)V
return
.limit locals 3
.limit stack 2
.end method

.method public setPassword(Ljava/lang/String;Z)V
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
getfield com/bestpay/app/PassGuardManager/manager Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast cn/passguard/PassGuardEdit
iload 2
invokevirtual cn/passguard/PassGuardEdit/setShowPassword(Z)V
return
.limit locals 3
.limit stack 2
.end method

.method public setPublicKey(Ljava/lang/String;Ljava/lang/String;)V
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
getfield com/bestpay/app/PassGuardManager/manager Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast cn/passguard/PassGuardEdit
aload 2
invokevirtual cn/passguard/PassGuardEdit/setPublicKey(Ljava/lang/String;)V
return
.limit locals 3
.limit stack 2
.end method

.method public setReorder(Ljava/lang/String;I)V
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
getfield com/bestpay/app/PassGuardManager/manager Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast cn/passguard/PassGuardEdit
iload 2
invokevirtual cn/passguard/PassGuardEdit/setReorder(I)V
return
.limit locals 3
.limit stack 2
.end method

.method public setWatchOutside(Ljava/lang/String;Z)V
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
getfield com/bestpay/app/PassGuardManager/manager Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast cn/passguard/PassGuardEdit
iload 2
invokevirtual cn/passguard/PassGuardEdit/setWatchOutside(Z)V
return
.limit locals 3
.limit stack 2
.end method

.method public setWebView(Landroid/webkit/WebView;)V
aload 0
aload 1
putfield com/bestpay/app/PassGuardManager/webView Landroid/webkit/WebView;
return
.limit locals 2
.limit stack 2
.end method

.method public useNumberPad(Ljava/lang/String;Z)V
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
getfield com/bestpay/app/PassGuardManager/manager Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast cn/passguard/PassGuardEdit
iload 2
invokevirtual cn/passguard/PassGuardEdit/useNumberPad(Z)V
return
.limit locals 3
.limit stack 2
.end method
