.class final synthetic Lcom/liquable/nemo/chat/widget/MediaWidget$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/liquable/nemo/chat/widget/MediaWidget;

.field private final arg$2:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/chat/widget/MediaWidget;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/MediaWidget$$Lambda$2;->arg$1:Lcom/liquable/nemo/chat/widget/MediaWidget;

    iput-object p2, p0, Lcom/liquable/nemo/chat/widget/MediaWidget$$Lambda$2;->arg$2:Landroid/content/Context;

    return-void
.end method

.method private static get$Lambda(Lcom/liquable/nemo/chat/widget/MediaWidget;Landroid/content/Context;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/chat/widget/MediaWidget$$Lambda$2;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/chat/widget/MediaWidget$$Lambda$2;-><init>(Lcom/liquable/nemo/chat/widget/MediaWidget;Landroid/content/Context;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/liquable/nemo/chat/widget/MediaWidget;Landroid/content/Context;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/chat/widget/MediaWidget$$Lambda$2;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/chat/widget/MediaWidget$$Lambda$2;-><init>(Lcom/liquable/nemo/chat/widget/MediaWidget;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/MediaWidget$$Lambda$2;->arg$1:Lcom/liquable/nemo/chat/widget/MediaWidget;

    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/MediaWidget$$Lambda$2;->arg$2:Landroid/content/Context;

    # invokes: Lcom/liquable/nemo/chat/widget/MediaWidget;->lambda$new$27(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/chat/widget/MediaWidget;->access$lambda$1(Lcom/liquable/nemo/chat/widget/MediaWidget;Landroid/content/Context;)V

    return-void
.end method
