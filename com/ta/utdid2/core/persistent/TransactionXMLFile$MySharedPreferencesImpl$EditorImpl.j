.bytecode 50.0
.class public final synchronized com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl
.super java/lang/Object
.implements com/ta/utdid2/core/persistent/MySharedPreferences$MyEditor
.inner class private static final MySharedPreferencesImpl inner com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl outer com/ta/utdid2/core/persistent/TransactionXMLFile
.inner class public final EditorImpl inner com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl outer com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl

.field private 'mClear' Z

.field private final 'mModified' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"

.field final synthetic 'this$0' Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;

.method public <init>(Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;)V
aload 0
aload 1
putfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl/this$0 Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl/mModified Ljava/util/Map;
aload 0
iconst_0
putfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl/mClear Z
return
.limit locals 2
.limit stack 3
.end method

.method public final clear()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
iconst_1
putfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl/mClear Z
aload 0
monitorexit
L1:
aload 0
areturn
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 2
.end method

.method public final commit()Z
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L4 to L5 using L2
.catch all from L5 to L6 using L7
.catch all from L6 to L8 using L7
.catch all from L8 to L9 using L7
.catch all from L10 to L11 using L7
.catch all from L12 to L13 using L7
.catch all from L14 to L2 using L2
.catch all from L15 to L16 using L7
.catch all from L17 to L18 using L7
.catch all from L18 to L19 using L2
.catch all from L20 to L21 using L2
.catch all from L21 to L22 using L2
iconst_0
istore 1
invokestatic com/ta/utdid2/core/persistent/TransactionXMLFile/access$100()Ljava/lang/Object;
astore 5
aload 5
monitorenter
L0:
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl/this$0 Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
invokestatic com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/access$200(Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;)Ljava/util/WeakHashMap;
invokevirtual java/util/WeakHashMap/size()I
ifle L23
L1:
iconst_1
istore 1
L23:
iload 1
ifeq L24
L3:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
new java/util/HashSet
dup
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl/this$0 Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
invokestatic com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/access$200(Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;)Ljava/util/WeakHashMap;
invokevirtual java/util/WeakHashMap/keySet()Ljava/util/Set;
invokespecial java/util/HashSet/<init>(Ljava/util/Collection;)V
astore 3
L4:
aload 0
monitorenter
L5:
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl/mClear Z
ifeq L6
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl/this$0 Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
invokestatic com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/access$300(Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;)Ljava/util/Map;
invokeinterface java/util/Map/clear()V 0
aload 0
iconst_0
putfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl/mClear Z
L6:
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl/mModified Ljava/util/Map;
invokeinterface java/util/Map/entrySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 6
L8:
aload 6
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L17
aload 6
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 8
aload 8
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast java/lang/String
astore 7
aload 8
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
astore 8
L9:
aload 8
aload 0
if_acmpne L15
L10:
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl/this$0 Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
invokestatic com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/access$300(Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;)Ljava/util/Map;
aload 7
invokeinterface java/util/Map/remove(Ljava/lang/Object;)Ljava/lang/Object; 1
pop
L11:
iload 1
ifeq L8
L12:
aload 4
aload 7
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L13:
goto L8
L7:
astore 3
L14:
aload 0
monitorexit
aload 3
athrow
L2:
astore 3
aload 5
monitorexit
aload 3
athrow
L15:
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl/this$0 Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
invokestatic com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/access$300(Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;)Ljava/util/Map;
aload 7
aload 8
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L16:
goto L11
L17:
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl/mModified Ljava/util/Map;
invokeinterface java/util/Map/clear()V 0
aload 0
monitorexit
L18:
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl/this$0 Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
invokestatic com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/access$400(Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;)Z
istore 2
L19:
iload 2
ifeq L21
L20:
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl/this$0 Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
iconst_1
invokevirtual com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl/setHasChange(Z)V
L21:
aload 5
monitorexit
L22:
iload 1
ifeq L25
aload 4
invokeinterface java/util/List/size()I 0
iconst_1
isub
istore 1
L26:
iload 1
iflt L25
aload 4
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast java/lang/String
astore 5
aload 3
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 6
L27:
aload 6
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L28
aload 6
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/ta/utdid2/core/persistent/MySharedPreferences$OnSharedPreferenceChangeListener
astore 7
aload 7
ifnull L27
aload 7
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl/this$0 Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
aload 5
invokeinterface com/ta/utdid2/core/persistent/MySharedPreferences$OnSharedPreferenceChangeListener/onSharedPreferenceChanged(Lcom/ta/utdid2/core/persistent/MySharedPreferences;Ljava/lang/String;)V 2
goto L27
L28:
iload 1
iconst_1
isub
istore 1
goto L26
L25:
iload 2
ireturn
L24:
aconst_null
astore 3
aconst_null
astore 4
goto L4
.limit locals 9
.limit stack 3
.end method

.method public final putBoolean(Ljava/lang/String;Z)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl/mModified Ljava/util/Map;
aload 1
iload 2
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 0
monitorexit
L1:
aload 0
areturn
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 3
.limit stack 3
.end method

.method public final putFloat(Ljava/lang/String;F)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl/mModified Ljava/util/Map;
aload 1
fload 2
invokestatic java/lang/Float/valueOf(F)Ljava/lang/Float;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 0
monitorexit
L1:
aload 0
areturn
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 3
.limit stack 3
.end method

.method public final putInt(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl/mModified Ljava/util/Map;
aload 1
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 0
monitorexit
L1:
aload 0
areturn
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 3
.limit stack 3
.end method

.method public final putLong(Ljava/lang/String;J)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl/mModified Ljava/util/Map;
aload 1
lload 2
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 0
monitorexit
L1:
aload 0
areturn
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 4
.limit stack 4
.end method

.method public final putString(Ljava/lang/String;Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl/mModified Ljava/util/Map;
aload 1
aload 2
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 0
monitorexit
L1:
aload 0
areturn
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 3
.limit stack 3
.end method

.method public final remove(Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl/mModified Ljava/util/Map;
aload 1
aload 0
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 0
monitorexit
L1:
aload 0
areturn
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 3
.end method
