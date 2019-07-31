.bytecode 50.0
.class public synchronized com/nd/rj/common/login/NdMiscCallbackListener
.super java/lang/Object
.inner class public static abstract interface IGetCheckcodeListener inner com/nd/rj/common/login/NdMiscCallbackListener$IGetCheckcodeListener outer com/nd/rj/common/login/NdMiscCallbackListener
.inner class public static abstract interface ILoginProcessListener inner com/nd/rj/common/login/NdMiscCallbackListener$ILoginProcessListener outer com/nd/rj/common/login/NdMiscCallbackListener
.inner class public static abstract interface IProcessListener inner com/nd/rj/common/login/NdMiscCallbackListener$IProcessListener outer com/nd/rj/common/login/NdMiscCallbackListener

.field private static 'mOnCheckcodeListener' Lcom/nd/rj/common/login/NdMiscCallbackListener$IGetCheckcodeListener;

.field private static 'mOnLoginProcessListener' Lcom/nd/rj/common/login/NdMiscCallbackListener$ILoginProcessListener;

.field private static 'mOnProcessListener' Lcom/nd/rj/common/login/NdMiscCallbackListener$IProcessListener;

.method static <clinit>()V
aconst_null
putstatic com/nd/rj/common/login/NdMiscCallbackListener/mOnProcessListener Lcom/nd/rj/common/login/NdMiscCallbackListener$IProcessListener;
aconst_null
putstatic com/nd/rj/common/login/NdMiscCallbackListener/mOnLoginProcessListener Lcom/nd/rj/common/login/NdMiscCallbackListener$ILoginProcessListener;
aconst_null
putstatic com/nd/rj/common/login/NdMiscCallbackListener/mOnCheckcodeListener Lcom/nd/rj/common/login/NdMiscCallbackListener$IGetCheckcodeListener;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static onBeforeFinishLoginProcess(Lcom/product/android/business/bean/UserInfo;)V
getstatic com/nd/rj/common/login/NdMiscCallbackListener/mOnProcessListener Lcom/nd/rj/common/login/NdMiscCallbackListener$IProcessListener;
ifnull L0
getstatic com/nd/rj/common/login/NdMiscCallbackListener/mOnProcessListener Lcom/nd/rj/common/login/NdMiscCallbackListener$IProcessListener;
aload 0
invokeinterface com/nd/rj/common/login/NdMiscCallbackListener$IProcessListener/onBeforeFinishLoginProcess(Lcom/product/android/business/bean/UserInfo;)V 1
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public static onDeleteUser(Lcom/product/android/business/bean/UserInfo;)V
getstatic com/nd/rj/common/login/NdMiscCallbackListener/mOnLoginProcessListener Lcom/nd/rj/common/login/NdMiscCallbackListener$ILoginProcessListener;
ifnull L0
getstatic com/nd/rj/common/login/NdMiscCallbackListener/mOnLoginProcessListener Lcom/nd/rj/common/login/NdMiscCallbackListener$ILoginProcessListener;
aload 0
invokeinterface com/nd/rj/common/login/NdMiscCallbackListener$ILoginProcessListener/onDeleteUser(Lcom/product/android/business/bean/UserInfo;)V 1
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public static onFinishLoginProcess(Lcom/product/android/business/bean/UserInfo;)V
getstatic com/nd/rj/common/login/NdMiscCallbackListener/mOnProcessListener Lcom/nd/rj/common/login/NdMiscCallbackListener$IProcessListener;
ifnull L0
getstatic com/nd/rj/common/login/NdMiscCallbackListener/mOnProcessListener Lcom/nd/rj/common/login/NdMiscCallbackListener$IProcessListener;
aload 0
invokeinterface com/nd/rj/common/login/NdMiscCallbackListener$IProcessListener/onFinishLoginProcess(Lcom/product/android/business/bean/UserInfo;)V 1
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public static onGetCheckcodeFinish(Landroid/graphics/drawable/Drawable;)V
getstatic com/nd/rj/common/login/NdMiscCallbackListener/mOnCheckcodeListener Lcom/nd/rj/common/login/NdMiscCallbackListener$IGetCheckcodeListener;
ifnull L0
getstatic com/nd/rj/common/login/NdMiscCallbackListener/mOnCheckcodeListener Lcom/nd/rj/common/login/NdMiscCallbackListener$IGetCheckcodeListener;
aload 0
invokeinterface com/nd/rj/common/login/NdMiscCallbackListener$IGetCheckcodeListener/onGetCheckcodeFinish(Landroid/graphics/drawable/Drawable;)V 1
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public static onLoginProcess(Lcom/product/android/business/bean/UserInfo;)Z
getstatic com/nd/rj/common/login/NdMiscCallbackListener/mOnLoginProcessListener Lcom/nd/rj/common/login/NdMiscCallbackListener$ILoginProcessListener;
ifnull L0
getstatic com/nd/rj/common/login/NdMiscCallbackListener/mOnLoginProcessListener Lcom/nd/rj/common/login/NdMiscCallbackListener$ILoginProcessListener;
aload 0
invokeinterface com/nd/rj/common/login/NdMiscCallbackListener$ILoginProcessListener/onLoginProcess(Lcom/product/android/business/bean/UserInfo;)Z 1
ireturn
L0:
iconst_1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static setLoginProcessListener(Lcom/nd/rj/common/login/NdMiscCallbackListener$ILoginProcessListener;)V
aload 0
putstatic com/nd/rj/common/login/NdMiscCallbackListener/mOnLoginProcessListener Lcom/nd/rj/common/login/NdMiscCallbackListener$ILoginProcessListener;
return
.limit locals 1
.limit stack 1
.end method

.method public static setOnGetCheckcodeListener(Lcom/nd/rj/common/login/NdMiscCallbackListener$IGetCheckcodeListener;)V
aload 0
putstatic com/nd/rj/common/login/NdMiscCallbackListener/mOnCheckcodeListener Lcom/nd/rj/common/login/NdMiscCallbackListener$IGetCheckcodeListener;
return
.limit locals 1
.limit stack 1
.end method

.method public static setProcessListener(Lcom/nd/rj/common/login/NdMiscCallbackListener$IProcessListener;)V
aload 0
putstatic com/nd/rj/common/login/NdMiscCallbackListener/mOnProcessListener Lcom/nd/rj/common/login/NdMiscCallbackListener$IProcessListener;
return
.limit locals 1
.limit stack 1
.end method
