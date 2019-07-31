.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/controller/PublicNumberController
.super java/lang/Object
.inner class static final inner com/nd/android/u/publicNumber/controller/PublicNumberController$1
.inner class static final inner com/nd/android/u/publicNumber/controller/PublicNumberController$2
.inner class static final inner com/nd/android/u/publicNumber/controller/PublicNumberController$3

.field private static final 'MAX_THREAD_COUNT' I = 10


.field private static 'mExecutorService' Ljava/util/concurrent/ExecutorService;

.method static <clinit>()V
bipush 10
invokestatic java/util/concurrent/Executors/newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;
putstatic com/nd/android/u/publicNumber/controller/PublicNumberController/mExecutorService Ljava/util/concurrent/ExecutorService;
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

.method public static appendSidUidToUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
aload 0
ifnonnull L0
L1:
aload 0
areturn
L0:
aload 0
astore 3
aload 0
ldc "{sid}"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L2
aload 0
ldc "{sid}"
aload 1
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
astore 3
L2:
aload 3
astore 0
aload 3
ldc "{SID}"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L3
aload 3
ldc "{SID}"
aload 1
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
astore 0
L3:
aload 0
astore 1
aload 0
ldc "{uid}"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L4
aload 0
ldc "{uid}"
aload 2
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
astore 1
L4:
aload 1
astore 0
aload 1
ldc "{cid}"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L1
aload 1
ldc "{cid}"
getstatic com/product/android/business/config/Configuration/CLOUNDID Ljava/lang/String;
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
areturn
.limit locals 4
.limit stack 3
.end method

.method public static deletePublicNumber(Ljava/lang/String;)V
new com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo
dup
aload 0
invokespecial com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/<init>(Ljava/lang/String;)V
astore 1
aload 1
aload 0
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/pspid Ljava/lang/String;
invokestatic com/nd/android/u/controller/factory/ChatDaoFactory/getInstance()Lcom/nd/android/u/controller/factory/ChatDaoFactory;
bipush 101
invokevirtual com/nd/android/u/controller/factory/ChatDaoFactory/get(I)Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/delete(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z 1
ifne L0
ldc "public"
ldc "delete info fail"
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
L0:
getstatic com/nd/android/u/imSdk/GroupLoginManager/INSTANCE Lcom/nd/android/u/imSdk/GroupLoginManager;
aload 1
invokevirtual com/nd/android/u/imSdk/GroupLoginManager/remove(Lims/outInterface/IGroup;)V
aload 0
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberPermissionManager/removeFixPspGroupSetType(Ljava/lang/String;)V
aload 0
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/getMenuFromDb(Ljava/lang/String;)Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo;
astore 2
invokestatic com/nd/android/u/controller/factory/ChatDaoFactory/getInstance()Lcom/nd/android/u/controller/factory/ChatDaoFactory;
bipush 102
invokevirtual com/nd/android/u/controller/factory/ChatDaoFactory/get(I)Lcom/nd/android/u/controller/innerInterface/IDbOperation;
astore 3
aload 2
invokevirtual com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo/hasMenu()Z
ifeq L1
aload 3
aload 2
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/delete(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z 1
ifne L1
ldc "public"
ldc "delete menuinfo fail"
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
L1:
aload 0
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/deletePublicNumebrMessage(Ljava/lang/String;)V
aload 0
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/deletePublicNumberContact(Ljava/lang/String;)V
aload 1
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/logo_url Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L2
aload 1
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/logo_url Ljava/lang/String;
invokestatic com/product/android/business/headImage/HeadImageLoader/removePspCache(Ljava/lang/String;)V
L2:
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 1
aload 1
bipush 18
putfield android/os/Message/what I
aload 1
aload 0
putfield android/os/Message/obj Ljava/lang/Object;
aload 1
sipush 200
putfield android/os/Message/arg1 I
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
iconst_5
aload 1
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifyOtherMessage(ILandroid/os/Message;)V
return
.limit locals 4
.limit stack 3
.end method

.method public static deletePublicNumberContact(Ljava/lang/String;)V
getstatic com/nd/android/u/controller/factory/ContactFactory/INSTANCE Lcom/nd/android/u/controller/factory/ContactFactory;
iconst_5
invokevirtual com/nd/android/u/controller/factory/ContactFactory/getRecentContactItem(I)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
astore 1
aload 1
aload 0
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setId(Ljava/lang/String;)V
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
aload 1
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/deleteItem(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)V
return
.limit locals 2
.limit stack 2
.end method

.method public static deletePublicNumebrMessage(Ljava/lang/String;)V
iconst_0
istore 1
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
iconst_5
aload 0
iconst_0
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getMessage(ILjava/lang/String;I)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDbOperationSupport()Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier; 0
astore 0
invokestatic com/nd/android/u/controller/factory/ChatDaoFactory/getInstance()Lcom/nd/android/u/controller/factory/ChatDaoFactory;
iconst_5
invokevirtual com/nd/android/u/controller/factory/ChatDaoFactory/get(I)Lcom/nd/android/u/controller/innerInterface/IDbOperation;
astore 2
aload 2
aload 0
ldc2_w -1L
iconst_1
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/getEarlierMessage(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;JI)Landroid/database/Cursor; 4
astore 3
aload 3
ifnull L0
aload 2
aload 0
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/deleteAll(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z 1
ifne L1
ldc "public"
ldc "delete message fail"
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
L1:
aload 3
invokeinterface android/database/Cursor/close()V 0
L0:
aload 2
aload 0
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/getAll(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Landroid/database/Cursor; 1
astore 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "after deletePublicNumebrMessage:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
astore 2
aload 0
ifnonnull L2
L3:
ldc "CHAT"
aload 2
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
return
L2:
aload 0
invokeinterface android/database/Cursor/getCount()I 0
istore 1
goto L3
.limit locals 4
.limit stack 5
.end method

.method private static getData(ILjava/lang/String;Ljava/util/ArrayList;)Z
.signature "(ILjava/lang/String;Ljava/util/ArrayList<Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;>;)Z"
.catch com/common/android/utils/http/ResponseException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L0 to L1 using L3
.catch org/json/JSONException from L0 to L1 using L4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/u/publicNumber/PublicNumberConst$PUBLIC_NUMBER_URL/BASE Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/91u/psp/sublist?sid=%s&type=0&start=%d&size=%d"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_3
anewarray java/lang/Object
dup
iconst_0
aload 1
aastore
dup
iconst_1
iload 0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_2
bipush 100
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 3
new com/common/android/utils/http/HttpComExt
dup
invokespecial com/common/android/utils/http/HttpComExt/<init>()V
astore 4
L0:
aload 4
aload 3
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
aload 2
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/parseData(Lorg/json/JSONObject;Ljava/util/ArrayList;)Z
ifeq L1
aload 2
invokevirtual java/util/ArrayList/size()I
bipush 100
if_icmplt L1
iload 0
bipush 100
iadd
aload 1
aload 2
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/getData(ILjava/lang/String;Ljava/util/ArrayList;)Z
pop
L1:
iconst_1
ireturn
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/ResponseException/printStackTrace()V
iconst_0
ireturn
L3:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
iconst_0
ireturn
L4:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
iconst_0
ireturn
.limit locals 5
.limit stack 5
.end method

.method public static getLocalPspSearch(Ljava/lang/String;)Ljava/util/List;
.signature "(Ljava/lang/String;)Ljava/util/List<Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;>;"
new java/util/LinkedList
dup
invokespecial java/util/LinkedList/<init>()V
astore 1
aload 1
invokeinterface java/util/List/clear()V 0
invokestatic com/nd/android/u/business/db/UDatabase/getInstance()Lcom/nd/android/u/business/db/UDatabase;
invokevirtual com/nd/android/u/business/db/UDatabase/getDb()Landroid/database/sqlite/SQLiteDatabase;
ldc "select * from public_number_info where name like ?"
iconst_1
anewarray java/lang/String
dup
iconst_0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aastore
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 0
aload 0
ifnull L0
L1:
aload 0
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L2
new com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo
dup
invokespecial com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/<init>()V
astore 2
aload 2
aload 0
aload 0
ldc "pspid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/pspid Ljava/lang/String;
aload 2
aload 0
aload 0
ldc "name"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/name Ljava/lang/String;
aload 2
aload 0
aload 0
ldc "description"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/description Ljava/lang/String;
aload 2
aload 0
aload 0
ldc "sub_status"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/sub_status I
aload 2
aload 0
aload 0
ldc "status"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/status I
aload 2
aload 0
aload 0
ldc "subscribers"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/subscribers Ljava/lang/String;
aload 2
aload 0
aload 0
ldc "subcount"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/subcount J
aload 2
aload 0
aload 0
ldc "is_receive"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/is_receive I
aload 2
aload 0
aload 0
ldc "is_add_dest"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/is_add_dest I
aload 2
aload 0
aload 0
ldc "logo_url"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/logo_url Ljava/lang/String;
aload 2
aload 0
aload 0
ldc "type"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/type I
aload 2
aload 0
aload 0
ldc "mode"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/mode I
aload 2
aload 0
aload 0
ldc "auth"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/auth I
aload 2
aload 0
aload 0
ldc "qu_url"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/qu_url Ljava/lang/String;
aload 2
aload 0
aload 0
ldc "subway"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/subway I
aload 2
aload 0
aload 0
ldc "sub_time"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/sub_time Ljava/lang/String;
aload 2
aload 0
aload 0
ldc "unsub_time"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/unsub_time Ljava/lang/String;
aload 2
aload 0
aload 0
ldc "logo_update_time"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/logo_update_time J
aload 2
aload 0
aload 0
ldc "data_complete"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/data_complete I
aload 2
aload 0
aload 0
ldc "regtype"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/regtype I
aload 1
aload 2
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L1
L2:
aload 0
invokeinterface android/database/Cursor/close()V 0
L0:
aload 1
areturn
.limit locals 3
.limit stack 7
.end method

.method public static getMenuFromDb(Ljava/lang/String;)Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo;
ldc "public"
ldc "getMenuFromDb"
invokestatic com/product/android/utils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
new com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo
dup
aload 0
invokespecial com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo/<init>(Ljava/lang/String;)V
astore 0
invokestatic com/nd/android/u/controller/factory/ChatDaoFactory/getInstance()Lcom/nd/android/u/controller/factory/ChatDaoFactory;
bipush 102
invokevirtual com/nd/android/u/controller/factory/ChatDaoFactory/get(I)Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 0
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/getData(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z 1
pop
aload 0
areturn
.limit locals 1
.limit stack 3
.end method

.method public static getMenuFromServer(Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo;)Z
.catch com/common/android/utils/http/ResponseException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L0 to L1 using L3
.catch com/common/android/utils/http/ResponseException from L4 to L5 using L2
.catch com/common/android/utils/http/HttpException from L4 to L5 using L3
.catch com/common/android/utils/http/ResponseException from L6 to L7 using L2
.catch com/common/android/utils/http/HttpException from L6 to L7 using L3
.catch com/common/android/utils/http/ResponseException from L8 to L9 using L2
.catch com/common/android/utils/http/HttpException from L8 to L9 using L3
.catch com/common/android/utils/http/ResponseException from L9 to L10 using L2
.catch com/common/android/utils/http/HttpException from L9 to L10 using L3
.catch com/common/android/utils/http/ResponseException from L11 to L12 using L2
.catch com/common/android/utils/http/HttpException from L11 to L12 using L3
.catch com/common/android/utils/http/ResponseException from L13 to L14 using L2
.catch com/common/android/utils/http/HttpException from L13 to L14 using L3
.catch com/common/android/utils/http/ResponseException from L15 to L16 using L2
.catch com/common/android/utils/http/HttpException from L15 to L16 using L3
ldc "public"
ldc "getMenuFromServer"
invokestatic com/product/android/utils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
invokevirtual ims/manager/IMSStateManager/isNetworkAvailable()Z
ifne L17
iconst_0
ireturn
L17:
aload 0
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo/pspid Ljava/lang/String;
astore 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/u/publicNumber/PublicNumberConst$PUBLIC_NUMBER_URL/BASE Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/91u/menu/get?sid=%s&pspid=%s"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_2
anewarray java/lang/Object
dup
iconst_0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getSid()Ljava/lang/String;
aastore
dup
iconst_1
aload 2
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 2
new com/common/android/utils/http/HttpComExt
dup
invokespecial com/common/android/utils/http/HttpComExt/<init>()V
astore 3
L0:
aload 3
aload 2
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 2
L1:
aload 2
ifnull L15
L4:
aload 2
ldc "code"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L15
aload 2
ldc "code"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
istore 1
L5:
iload 1
ifeq L8
L6:
ldc "public"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "error return code:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
ldc "msg"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
L7:
iconst_0
ireturn
L2:
astore 0
aload 0
invokevirtual com/common/android/utils/http/ResponseException/printStackTrace()V
iconst_0
ireturn
L8:
aload 2
ldc "menu"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L13
aload 0
aload 3
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo/data Ljava/lang/String;
aload 0
invokestatic java/lang/System/currentTimeMillis()J
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo/time J
aload 0
invokevirtual com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo/parseMenuData()Z
ifne L9
ldc "public"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "error parseMenuData:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
L9:
invokestatic com/nd/android/u/controller/factory/ChatDaoFactory/getInstance()Lcom/nd/android/u/controller/factory/ChatDaoFactory;
bipush 102
invokevirtual com/nd/android/u/controller/factory/ChatDaoFactory/get(I)Lcom/nd/android/u/controller/innerInterface/IDbOperation;
astore 3
aload 3
aload 0
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/isExist(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z 1
ifeq L11
aload 3
aload 0
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/update(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z 1
ifne L18
ldc "public"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "error save data:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
L10:
iconst_0
ireturn
L3:
astore 0
aload 0
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
iconst_0
ireturn
L11:
aload 3
aload 0
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/insert(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z 1
ifne L18
ldc "public"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "error save data:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
L12:
iconst_0
ireturn
L13:
ldc "public"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "error return data:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
L14:
iconst_0
ireturn
L15:
ldc "public"
ldc "error json data"
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
L16:
iconst_0
ireturn
L18:
iconst_1
ireturn
.limit locals 4
.limit stack 5
.end method

.method public static getMyFocusPublicNumberFromDb()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;>;"
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L7 to L8 using L2
.catch all from L9 to L10 using L2
.catch all from L11 to L12 using L2
.catch all from L13 to L14 using L2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
invokestatic com/nd/android/u/controller/factory/ChatDaoFactory/getInstance()Lcom/nd/android/u/controller/factory/ChatDaoFactory;
bipush 101
invokevirtual com/nd/android/u/controller/factory/ChatDaoFactory/get(I)Lcom/nd/android/u/controller/innerInterface/IDbOperation;
astore 1
aload 1
ifnull L15
aconst_null
astore 0
L0:
aload 1
aconst_null
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/getAll(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Landroid/database/Cursor; 1
astore 1
L1:
aload 1
ifnonnull L16
aload 1
ifnull L15
aload 1
invokeinterface android/database/Cursor/close()V 0
L15:
aload 2
areturn
L16:
aload 1
astore 0
L3:
aload 1
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L17
L4:
aload 1
astore 0
L5:
new com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo
dup
invokespecial com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/<init>()V
astore 3
L6:
aload 1
astore 0
L7:
aload 3
aload 1
invokevirtual com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/parseFromCursor(Landroid/database/Cursor;)V
L8:
aload 1
astore 0
L9:
aload 3
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/sub_status I
iconst_1
if_icmpne L18
L10:
aload 1
astore 0
L11:
aload 2
aload 3
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L12:
goto L16
L2:
astore 1
aload 0
ifnull L19
aload 0
invokeinterface android/database/Cursor/close()V 0
L19:
aload 1
athrow
L18:
aload 1
astore 0
L13:
ldc "public number"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "get a no-focus psp:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/name Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
L14:
goto L16
L17:
aload 1
ifnull L15
aload 1
invokeinterface android/database/Cursor/close()V 0
aload 2
areturn
.limit locals 4
.limit stack 3
.end method

.method public static getMyFocusPublicNumberFromServer()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;>;"
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/getMyFocusPublicNumberFromDb()Ljava/util/ArrayList;
astore 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getSid()Ljava/lang/String;
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
L1:
aload 0
areturn
L0:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
iconst_0
aload 1
aload 2
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/getData(ILjava/lang/String;Ljava/util/ArrayList;)Z
ifeq L1
aload 0
aload 2
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/syncData(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/getMyFocusPublicNumberFromDb()Ljava/util/ArrayList;
areturn
.limit locals 3
.limit stack 3
.end method

.method public static getPspInfoFromServer(Ljava/lang/String;)V
getstatic com/nd/android/u/publicNumber/controller/PublicNumberController/mExecutorService Ljava/util/concurrent/ExecutorService;
new com/nd/android/u/publicNumber/controller/PublicNumberController$2
dup
aload 0
invokespecial com/nd/android/u/publicNumber/controller/PublicNumberController$2/<init>(Ljava/lang/String;)V
invokeinterface java/util/concurrent/ExecutorService/submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future; 1
pop
return
.limit locals 1
.limit stack 4
.end method

.method public static getPspLogoUrl(Ljava/lang/String;)Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/u/publicNumber/PublicNumberConst$PUBLIC_NUMBER_URL/BASE Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/91u/media/psplogo?pspid=%s&size==%d"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 0
aastore
dup
iconst_1
bipush 100
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 5
.end method

.method public static getPspSearchResultXY(Ljava/lang/String;Z)Ljava/util/List;
.signature "(Ljava/lang/String;Z)Ljava/util/List<Lcom/product/android/commonInterface/contact/LocalSearchResult;>;"
.catch java/lang/Exception from L0 to L1 using L2
aload 0
astore 8
iload 1
ifeq L3
aload 0
invokestatic com/common/android/utils/StringUtils/sqliteEscape(Ljava/lang/String;)Ljava/lang/String;
astore 8
L3:
new java/util/LinkedList
dup
invokespecial java/util/LinkedList/<init>()V
astore 0
aload 8
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/getLocalPspSearch(Ljava/lang/String;)Ljava/util/List;
astore 8
aload 8
invokeinterface java/util/List/size()I 0
istore 3
iconst_0
istore 2
L4:
iload 2
iload 3
if_icmpge L5
aload 8
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo
astore 10
new com/product/android/commonInterface/contact/LocalSearchResult
dup
invokespecial com/product/android/commonInterface/contact/LocalSearchResult/<init>()V
astore 9
aload 9
aload 10
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/name Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/setName(Ljava/lang/String;)V
lconst_0
lstore 4
L0:
aload 10
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/pspid Ljava/lang/String;
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
lstore 6
L1:
lload 6
lstore 4
L6:
aload 9
lload 4
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/setId(J)V
aload 9
getstatic com/product/android/commonInterface/contact/LocalSearchResult$ResultType/PSP Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/setType(Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;)V
aload 9
ldc "\u516c\u4f17\u53f7"
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/setTypeName(Ljava/lang/String;)V
new com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public
dup
aload 10
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/pspid Ljava/lang/String;
invokespecial com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/<init>(Ljava/lang/String;)V
astore 10
invokestatic com/nd/android/u/controller/factory/ChatDaoFactory/getInstance()Lcom/nd/android/u/controller/factory/ChatDaoFactory;
iconst_5
invokevirtual com/nd/android/u/controller/factory/ChatDaoFactory/get(I)Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 10
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/getLastMessage(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z 1
pop
aload 9
aload 10
invokevirtual com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/getDisplayContent()Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/setDescription(Ljava/lang/String;)V
aload 9
aload 10
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/generateId Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/setDisplayId(Ljava/lang/String;)V
aload 0
aload 9
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 2
iconst_1
iadd
istore 2
goto L4
L2:
astore 11
aload 11
invokevirtual java/lang/Exception/printStackTrace()V
goto L6
L5:
aload 0
new com/nd/android/u/publicNumber/controller/PublicNumberController$3
dup
invokespecial com/nd/android/u/publicNumber/controller/PublicNumberController$3/<init>()V
invokestatic com/nd/android/u/chatUiUtils/SortUtil/sort(Ljava/util/List;Lcom/nd/android/u/chatUiUtils/SortUtil$ICompare;)V
aload 0
areturn
.limit locals 12
.limit stack 3
.end method

.method public static getPublicNumberInfo(Ljava/lang/String;)Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
new com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo
dup
aload 0
invokespecial com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/<init>(Ljava/lang/String;)V
astore 0
invokestatic com/nd/android/u/controller/factory/ChatDaoFactory/getInstance()Lcom/nd/android/u/controller/factory/ChatDaoFactory;
bipush 101
invokevirtual com/nd/android/u/controller/factory/ChatDaoFactory/get(I)Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 0
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/getData(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z 1
ifeq L0
aload 0
areturn
L0:
aconst_null
areturn
.limit locals 1
.limit stack 3
.end method

.method public static getPublicNumberInfoFromServer(Ljava/lang/String;)V
getstatic com/nd/android/u/publicNumber/controller/PublicNumberController/mExecutorService Ljava/util/concurrent/ExecutorService;
new com/nd/android/u/publicNumber/controller/PublicNumberController$1
dup
aload 0
invokespecial com/nd/android/u/publicNumber/controller/PublicNumberController$1/<init>(Ljava/lang/String;)V
invokeinterface java/util/concurrent/ExecutorService/submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future; 1
pop
return
.limit locals 1
.limit stack 4
.end method

.method public static getPublicNumberName(Ljava/lang/String;)Ljava/lang/String;
aload 0
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/getPublicNumberNameFromDb(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 1
ifnull L0
aload 1
areturn
L0:
aload 0
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/getPublicNumberInfoFromServer(Ljava/lang/String;)V
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method

.method private static getPublicNumberNameFromDb(Ljava/lang/String;)Ljava/lang/String;
aload 0
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/getPublicNumberInfo(Ljava/lang/String;)Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
astore 0
aload 0
ifnull L0
aload 0
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/name Ljava/lang/String;
areturn
L0:
aconst_null
areturn
.limit locals 1
.limit stack 1
.end method

.method public static isDimissed(Ljava/lang/String;)Z
aload 0
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/getPublicNumberInfo(Ljava/lang/String;)Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
astore 0
aload 0
ifnonnull L0
L1:
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/status I
iconst_4
if_icmpne L1
iconst_1
ireturn
.limit locals 1
.limit stack 2
.end method

.method private static parseData(Lorg/json/JSONObject;Ljava/util/ArrayList;)Z
.signature "(Lorg/json/JSONObject;Ljava/util/ArrayList<Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;>;)Z"
.throws org/json/JSONException
aload 0
ldc "psp"
invokevirtual org/json/JSONObject/getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 4
iconst_0
istore 2
aload 4
invokevirtual org/json/JSONArray/length()I
istore 3
L0:
iload 2
iload 3
if_icmpge L1
aload 4
iload 2
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 5
new com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo
dup
invokespecial com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/<init>()V
astore 6
aload 6
aload 5
ldc "pspid"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/pspid Ljava/lang/String;
aload 6
aload 5
ldc "name"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/name Ljava/lang/String;
aload 6
aload 5
ldc "type"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/type I
aload 6
aload 5
ldc "sub_time"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/sub_time Ljava/lang/String;
aload 6
aload 5
ldc "unsub_time"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/unsub_time Ljava/lang/String;
aload 6
aload 5
ldc "status"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/sub_status I
aload 6
aload 5
ldc "description"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/description Ljava/lang/String;
aload 6
aload 5
ldc "subway"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/subway I
aload 6
aload 5
ldc "subcount"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/subcount J
aload 6
aload 5
ldc "regtype"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/regtype I
aload 1
aload 6
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
aload 0
ldc "total"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
aload 1
invokevirtual java/util/ArrayList/size()I
if_icmple L2
iconst_1
ireturn
L2:
iconst_0
ireturn
.limit locals 7
.limit stack 3
.end method

.method public static pspSubscribe(Ljava/lang/String;I)V
new ims/bean/NDMessage
dup
invokespecial ims/bean/NDMessage/<init>()V
astore 2
aload 2
ldc_w 65137
putfield ims/bean/NDMessage/IMSCmd I
aload 2
aload 0
putfield ims/bean/NDMessage/groupId Ljava/lang/String;
aload 2
iload 1
putfield ims/bean/NDMessage/groupType I
aload 2
invokestatic ims/IMSdk/sendMessage(Lims/bean/NDMessage;)V
return
.limit locals 3
.limit stack 2
.end method

.method public static pspUnsubscribe(Ljava/lang/String;I)V
new ims/bean/NDMessage
dup
invokespecial ims/bean/NDMessage/<init>()V
astore 2
aload 2
ldc_w 65138
putfield ims/bean/NDMessage/IMSCmd I
aload 2
aload 0
putfield ims/bean/NDMessage/groupId Ljava/lang/String;
aload 2
iload 1
putfield ims/bean/NDMessage/groupType I
aload 2
invokestatic ims/IMSdk/sendMessage(Lims/bean/NDMessage;)V
return
.limit locals 3
.limit stack 2
.end method

.method public static searchExPspDataById(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)I
.signature "(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList<Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;>;)I"
.catch com/common/android/utils/http/ResponseException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L0 to L1 using L3
.catch com/common/android/utils/http/ResponseException from L4 to L5 using L2
.catch com/common/android/utils/http/HttpException from L4 to L5 using L3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/u/publicNumber/PublicNumberConst$PUBLIC_NUMBER_URL/BASE Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/91u/psp/searchex?sid=%s&pspid=%s"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 1
aastore
dup
iconst_1
aload 0
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 0
new com/common/android/utils/http/HttpComExt
dup
invokespecial com/common/android/utils/http/HttpComExt/<init>()V
astore 1
L0:
aload 1
aload 0
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 0
L1:
aload 0
ifnull L6
L4:
aload 0
ldc "code"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
ifne L6
new com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo
dup
invokespecial com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/<init>()V
astore 1
aload 1
aload 0
ldc "auth"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/auth I
aload 1
aload 0
ldc "type"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/type I
aload 1
aload 0
ldc "name"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/name Ljava/lang/String;
aload 1
aload 0
ldc "subway"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/subway I
aload 1
aload 0
ldc "pspid"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/pspid Ljava/lang/String;
aload 1
aload 0
ldc "subcount"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/subcount J
aload 1
aload 0
ldc "description"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/description Ljava/lang/String;
aload 1
aload 0
ldc "mode"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/mode I
aload 2
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L5:
iconst_1
ireturn
L2:
astore 0
aload 0
invokevirtual com/common/android/utils/http/ResponseException/printStackTrace()V
iconst_0
ireturn
L3:
astore 0
aload 0
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
iconst_0
ireturn
L6:
iconst_0
ireturn
.limit locals 3
.limit stack 5
.end method

.method public static searchPspData(IILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)I
.signature "(IILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList<Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;>;)I"
.catch java/lang/Exception from L0 to L1 using L2
.catch com/common/android/utils/http/ResponseException from L3 to L4 using L5
.catch com/common/android/utils/http/HttpException from L3 to L4 using L6
.catch org/json/JSONException from L3 to L4 using L7
.catch com/common/android/utils/http/ResponseException from L8 to L9 using L5
.catch com/common/android/utils/http/HttpException from L8 to L9 using L6
.catch org/json/JSONException from L8 to L9 using L7
.catch com/common/android/utils/http/ResponseException from L10 to L11 using L5
.catch com/common/android/utils/http/HttpException from L10 to L11 using L6
.catch org/json/JSONException from L10 to L11 using L7
.catch com/common/android/utils/http/ResponseException from L12 to L13 using L5
.catch com/common/android/utils/http/HttpException from L12 to L13 using L6
.catch org/json/JSONException from L12 to L13 using L7
.catch com/common/android/utils/http/ResponseException from L14 to L15 using L5
.catch com/common/android/utils/http/HttpException from L14 to L15 using L6
.catch org/json/JSONException from L14 to L15 using L7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/u/publicNumber/PublicNumberConst$PUBLIC_NUMBER_URL/BASE Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/91u/psp/search?sid=%s&name=%s&type=0&start=%d&size=%d"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 6
L0:
aload 3
ldc "utf-8"
invokestatic java/net/URLEncoder/encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 5
L1:
aload 5
astore 3
L16:
aload 6
iconst_4
anewarray java/lang/Object
dup
iconst_0
aload 2
aastore
dup
iconst_1
aload 3
aastore
dup
iconst_2
iload 0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_3
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 2
new com/common/android/utils/http/HttpComExt
dup
invokespecial com/common/android/utils/http/HttpComExt/<init>()V
astore 3
L3:
aload 3
aload 2
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 2
L4:
aload 2
ifnull L17
L8:
aload 2
ldc "psp"
invokevirtual org/json/JSONObject/getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 3
L9:
iconst_0
istore 0
L10:
aload 3
invokevirtual org/json/JSONArray/length()I
istore 1
L11:
iload 0
iload 1
if_icmpge L14
L12:
aload 3
iload 0
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 5
new com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo
dup
invokespecial com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/<init>()V
astore 6
aload 6
aload 5
ldc "pspid"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/pspid Ljava/lang/String;
aload 6
aload 5
ldc "name"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/name Ljava/lang/String;
aload 6
aload 5
ldc "type"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/type I
aload 6
aload 5
ldc "subcount"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/subcount J
aload 6
aload 5
ldc "description"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/description Ljava/lang/String;
aload 6
aload 5
ldc "subway"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/subway I
aload 6
aload 5
ldc "auth"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/auth I
aload 4
aload 6
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L13:
iload 0
iconst_1
iadd
istore 0
goto L11
L2:
astore 5
aload 5
invokevirtual java/lang/Exception/printStackTrace()V
goto L16
L14:
aload 2
ldc "total"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
istore 0
L15:
iload 0
ireturn
L5:
astore 2
aload 2
invokevirtual com/common/android/utils/http/ResponseException/printStackTrace()V
iconst_0
ireturn
L6:
astore 2
aload 2
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
iconst_0
ireturn
L7:
astore 2
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
iconst_0
ireturn
L17:
iconst_0
ireturn
.limit locals 7
.limit stack 5
.end method

.method private static syncData(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;>;Ljava/util/ArrayList<Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;>;)V"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
aload 0
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 2
L0:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo
astore 4
aload 1
aload 4
invokevirtual java/util/ArrayList/contains(Ljava/lang/Object;)Z
ifne L0
aload 4
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/status I
iconst_4
if_icmpeq L0
aload 3
aload 4
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L0
L1:
invokestatic com/nd/android/u/controller/factory/ChatDaoFactory/getInstance()Lcom/nd/android/u/controller/factory/ChatDaoFactory;
bipush 101
invokevirtual com/nd/android/u/controller/factory/ChatDaoFactory/get(I)Lcom/nd/android/u/controller/innerInterface/IDbOperation;
astore 2
aload 3
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 3
L2:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/pspid Ljava/lang/String;
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/deletePublicNumber(Ljava/lang/String;)V
goto L2
L3:
aload 1
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L4:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L5
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo
astore 3
aload 0
aload 3
invokevirtual java/util/ArrayList/contains(Ljava/lang/Object;)Z
ifeq L6
aload 3
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/updateValues Landroid/content/ContentValues;
aload 3
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/updateValues Landroid/content/ContentValues;
ldc "name"
aload 3
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/name Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 3
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/updateValues Landroid/content/ContentValues;
ldc "type"
aload 3
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/type I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 3
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/updateValues Landroid/content/ContentValues;
ldc "description"
aload 3
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/description Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 3
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/updateValues Landroid/content/ContentValues;
ldc "sub_time"
aload 3
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/sub_time Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 3
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/updateValues Landroid/content/ContentValues;
ldc "unsub_time"
aload 3
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/unsub_time Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 3
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/updateValues Landroid/content/ContentValues;
ldc "description"
aload 3
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/description Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 3
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/updateValues Landroid/content/ContentValues;
ldc "subway"
aload 3
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/subway I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 3
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/updateValues Landroid/content/ContentValues;
ldc "subcount"
aload 3
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/subcount J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 3
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/updateValues Landroid/content/ContentValues;
ldc "regtype"
aload 3
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/regtype I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 3
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/updateValues Landroid/content/ContentValues;
ldc "logo_url"
aload 3
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/logo_url Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
aload 3
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/update(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z 1
pop
aload 3
aconst_null
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/updateValues Landroid/content/ContentValues;
goto L4
L6:
aload 2
aload 3
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/insert(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z 1
pop
goto L4
L5:
return
.limit locals 5
.limit stack 4
.end method
