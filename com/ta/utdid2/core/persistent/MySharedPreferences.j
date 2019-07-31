.bytecode 50.0
.class public abstract interface com/ta/utdid2/core/persistent/MySharedPreferences
.super java/lang/Object
.inner class public static abstract interface MyEditor inner com/ta/utdid2/core/persistent/MySharedPreferences$MyEditor outer com/ta/utdid2/core/persistent/MySharedPreferences
.inner class public static abstract interface OnSharedPreferenceChangeListener inner com/ta/utdid2/core/persistent/MySharedPreferences$OnSharedPreferenceChangeListener outer com/ta/utdid2/core/persistent/MySharedPreferences

.method public abstract checkFile()Z
.end method

.method public abstract contains(Ljava/lang/String;)Z
.end method

.method public abstract edit()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
.end method

.method public abstract getAll()Ljava/util/Map;
.signature "()Ljava/util/Map<Ljava/lang/String;*>;"
.end method

.method public abstract getBoolean(Ljava/lang/String;Z)Z
.end method

.method public abstract getFloat(Ljava/lang/String;F)F
.end method

.method public abstract getInt(Ljava/lang/String;I)I
.end method

.method public abstract getLong(Ljava/lang/String;J)J
.end method

.method public abstract getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract registerOnSharedPreferenceChangeListener(Lcom/ta/utdid2/core/persistent/MySharedPreferences$OnSharedPreferenceChangeListener;)V
.end method

.method public abstract unregisterOnSharedPreferenceChangeListener(Lcom/ta/utdid2/core/persistent/MySharedPreferences$OnSharedPreferenceChangeListener;)V
.end method
