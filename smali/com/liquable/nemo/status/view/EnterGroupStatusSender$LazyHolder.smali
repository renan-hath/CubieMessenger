.class Lcom/liquable/nemo/status/view/EnterGroupStatusSender$LazyHolder;
.super Ljava/lang/Object;
.source "EnterGroupStatusSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/status/view/EnterGroupStatusSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field public static INSTANCE:Lcom/liquable/nemo/status/view/EnterGroupStatusSender;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lcom/liquable/nemo/status/view/EnterGroupStatusSender;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/liquable/nemo/status/view/EnterGroupStatusSender;-><init>(Lcom/liquable/nemo/status/view/EnterGroupStatusSender$1;)V

    sput-object v0, Lcom/liquable/nemo/status/view/EnterGroupStatusSender$LazyHolder;->INSTANCE:Lcom/liquable/nemo/status/view/EnterGroupStatusSender;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
