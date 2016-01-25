.class public final Lcom/liquable/nemo/opus/OpusJniLoader;
.super Ljava/lang/Object;
.source "OpusJniLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/opus/OpusJniLoader$LazyLoader;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadShareLibrary()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/opus/OpusException;
        }
    .end annotation

    .prologue
    .line 16
    :try_start_0
    sget-object v1, Lcom/liquable/nemo/opus/OpusJniLoader$LazyLoader;->INSTANCE:Lcom/liquable/nemo/opus/OpusJniLoader$LazyLoader;

    invoke-virtual {v1}, Lcom/liquable/nemo/opus/OpusJniLoader$LazyLoader;->name()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return-void

    .line 17
    :catch_0
    move-exception v0

    .line 18
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/liquable/nemo/opus/OpusException;

    const-string/jumbo v2, "Load Opus share library failed"

    invoke-direct {v1, v2}, Lcom/liquable/nemo/opus/OpusException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
