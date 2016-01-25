.class Lcom/liquable/nemo/status/view/WatchMessageDetector$LazyHolder;
.super Ljava/lang/Object;
.source "WatchMessageDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/status/view/WatchMessageDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field public static INSTANCE:Lcom/liquable/nemo/status/view/WatchMessageDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/liquable/nemo/status/view/WatchMessageDetector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/liquable/nemo/status/view/WatchMessageDetector;-><init>(Lcom/liquable/nemo/status/view/WatchMessageDetector$1;)V

    sput-object v0, Lcom/liquable/nemo/status/view/WatchMessageDetector$LazyHolder;->INSTANCE:Lcom/liquable/nemo/status/view/WatchMessageDetector;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
