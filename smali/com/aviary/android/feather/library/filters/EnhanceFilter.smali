.class public Lcom/aviary/android/feather/library/filters/EnhanceFilter;
.super Lcom/aviary/android/feather/headless/filters/NativeFilter;
.source "EnhanceFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/library/filters/EnhanceFilter$Types;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "enhance"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/aviary/android/feather/headless/filters/NativeFilter;-><init>([Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/aviary/android/feather/library/filters/EnhanceFilter$Types;->HiDef:Lcom/aviary/android/feather/library/filters/EnhanceFilter$Types;

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/library/filters/EnhanceFilter;->setType(Lcom/aviary/android/feather/library/filters/EnhanceFilter$Types;)V

    .line 28
    return-void
.end method


# virtual methods
.method public executeInPlace(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "src"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "NotImplemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setType(Lcom/aviary/android/feather/library/filters/EnhanceFilter$Types;)V
    .locals 4
    .param p1, "type"    # Lcom/aviary/android/feather/library/filters/EnhanceFilter$Types;

    .prologue
    .line 37
    monitor-enter p0

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/aviary/android/feather/library/filters/EnhanceFilter;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->get(I)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    const-string/jumbo v1, "name"

    invoke-virtual {p1}, Lcom/aviary/android/feather/library/filters/EnhanceFilter$Types;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    monitor-exit p0

    .line 40
    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
