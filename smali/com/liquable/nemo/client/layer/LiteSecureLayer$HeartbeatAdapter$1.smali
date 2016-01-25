.class Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter$1;
.super Ljava/util/LinkedHashMap;
.source "LiteSecureLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/liquable/nemo/endpoint/frame/Heartbeat;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x318ebd013e151ff0L


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter$1;->this$0:Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/liquable/nemo/endpoint/frame/Heartbeat;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/liquable/nemo/endpoint/frame/Heartbeat;>;"
    invoke-virtual {p0}, Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter$1;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
