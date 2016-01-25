.class public abstract Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;
.super Ljava/lang/Object;
.source "PluginFactory.java"

# interfaces
.implements Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/plugins/PluginFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "InternalPlugin"
.end annotation


# instance fields
.field private applicationInfo:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private isExternal:Z

.field protected itemsCache:[Ljava/lang/String;

.field private packageManager:Landroid/content/pm/PackageManager;

.field private packagename:Ljava/lang/String;

.field private packageversioncode:I

.field private resourceIdentifierCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private resources:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pack"    # Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->resourceIdentifierCache:Ljava/util/HashMap;

    .line 191
    invoke-virtual {p2}, Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->packagename:Ljava/lang/String;

    .line 192
    invoke-virtual {p2}, Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;->getPackageVersionCode()I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->packageversioncode:I

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->packageManager:Landroid/content/pm/PackageManager;

    .line 194
    iget-object v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->packagename:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->isExternal:Z

    .line 195
    return-void

    .line 194
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadDefaultAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 326
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 327
    iget-object v1, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 329
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 396
    iput-object v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->packageManager:Landroid/content/pm/PackageManager;

    .line 397
    iput-object v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->applicationInfo:Ljava/lang/ref/WeakReference;

    .line 398
    iput-object v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->resources:Ljava/lang/ref/WeakReference;

    .line 399
    iput-object v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->itemsCache:[Ljava/lang/String;

    .line 400
    iget-object v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->resourceIdentifierCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 401
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->dispose()V

    .line 406
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 407
    return-void
.end method

.method protected final getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 5

    .prologue
    .line 241
    iget-object v1, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->applicationInfo:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->applicationInfo:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 243
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->packagename:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->applicationInfo:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :cond_1
    iget-object v1, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->applicationInfo:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    :goto_0
    return-object v1

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 246
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected final getDrawable(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "useDefaultIcon"    # Z

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 316
    .local v0, "res":Landroid/content/res/Resources;
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->loadDefaultAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 321
    :goto_0
    return-object v2

    .line 318
    :cond_0
    const-string/jumbo v2, "drawable"

    invoke-virtual {p0, v0, p1, v2}, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 319
    .local v1, "resid":I
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->packagename:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 320
    :cond_1
    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->loadDefaultAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 321
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected final getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 299
    iget-object v2, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->resourceIdentifierCache:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 300
    iget-object v2, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->resourceIdentifierCache:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, p3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    :cond_0
    iget-object v2, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->resourceIdentifierCache:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 305
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 306
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 311
    :goto_0
    return v0

    .line 309
    :cond_1
    iget-object v2, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->packagename:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 310
    .local v0, "id":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public abstract getPackageIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->packagename:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageVersionCode()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->packageversioncode:I

    return v0
.end method

.method public abstract getResourceLabel(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 253
    iget-object v4, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->resources:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->resources:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 255
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_2

    .line 258
    :try_start_0
    iget-object v4, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 262
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->resources:Ljava/lang/ref/WeakReference;

    .line 267
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_1
    iget-object v3, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->resources:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    :cond_2
    :goto_0
    return-object v3

    .line 259
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method protected final getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 340
    .local v1, "res":Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    .line 341
    const-string/jumbo v2, "array"

    invoke-virtual {p0, v1, p1, v2}, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 342
    .local v0, "identifier":I
    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 346
    .end local v0    # "identifier":I
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public installed()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 227
    :try_start_0
    iget-object v2, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->packagename:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 231
    :cond_0
    :goto_0
    return v1

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public isExternal()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->isExternal:Z

    return v0
.end method

.method protected final listAssets(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 356
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 357
    .local v2, "res":Landroid/content/res/Resources;
    if-nez v2, :cond_0

    new-array v1, v4, [Ljava/lang/String;

    .line 365
    :goto_0
    return-object v1

    .line 361
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 362
    .local v1, "filelist":[Ljava/lang/String;
    goto :goto_0

    .line 363
    .end local v1    # "filelist":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 365
    new-array v1, v4, [Ljava/lang/String;

    goto :goto_0
.end method

.method protected final loadDefaultAppLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 294
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 295
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected final loadLabel(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/CharSequence;

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 272
    .local v0, "res":Landroid/content/res/Resources;
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->loadDefaultAppLabel()Ljava/lang/CharSequence;

    move-result-object p2

    .line 280
    .end local p2    # "defaultValue":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object p2

    .line 273
    .restart local p2    # "defaultValue":Ljava/lang/CharSequence;
    :cond_1
    const-string/jumbo v2, "string"

    invoke-virtual {p0, v0, p1, v2}, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 274
    .local v1, "resid":I
    if-eqz v1, :cond_2

    .line 275
    iget-object v2, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->packagename:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0

    .line 277
    :cond_2
    if-nez p2, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->loadDefaultAppLabel()Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0
.end method

.method protected final openAsset(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 390
    .local v0, "res":Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    .line 391
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected final openRawResource(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 371
    .local v1, "res":Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    .line 372
    const-string/jumbo v2, "raw"

    invoke-virtual {p0, v1, p1, v2}, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 374
    .local v0, "identifier":I
    if-eqz v0, :cond_0

    .line 375
    new-instance v2, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    return-object v2

    .line 378
    .end local v0    # "identifier":I
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "no resource found for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
