.class public final Lcom/aviary/android/feather/library/plugins/PluginFetchTask$Result;
.super Ljava/lang/Object;
.source "PluginFetchTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/plugins/PluginFetchTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final delta:Landroid/os/Bundle;

.field public final installed:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/aviary/android/feather/library/plugins/ApplicationType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/aviary/android/feather/library/plugins/ApplicationType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "original":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/aviary/android/feather/library/plugins/ApplicationType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFetchTask$Result;->delta:Landroid/os/Bundle;

    .line 36
    iput-object p1, p0, Lcom/aviary/android/feather/library/plugins/PluginFetchTask$Result;->installed:Ljava/util/Map;

    .line 37
    return-void
.end method
