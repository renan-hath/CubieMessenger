.class final synthetic Lcom/liquable/nemo/chat/widget/MediaWidget$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/liquable/nemo/chat/widget/MediaWidget;

.field private final arg$2:Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

.field private final arg$3:Landroid/widget/ImageButton;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/chat/widget/MediaWidget;Lcom/liquable/nemo/chat/widget/MediaWidget$Action;Landroid/widget/ImageButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/MediaWidget$$Lambda$1;->arg$1:Lcom/liquable/nemo/chat/widget/MediaWidget;

    iput-object p2, p0, Lcom/liquable/nemo/chat/widget/MediaWidget$$Lambda$1;->arg$2:Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    iput-object p3, p0, Lcom/liquable/nemo/chat/widget/MediaWidget$$Lambda$1;->arg$3:Landroid/widget/ImageButton;

    return-void
.end method

.method private static get$Lambda(Lcom/liquable/nemo/chat/widget/MediaWidget;Lcom/liquable/nemo/chat/widget/MediaWidget$Action;Landroid/widget/ImageButton;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/chat/widget/MediaWidget$$Lambda$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/liquable/nemo/chat/widget/MediaWidget$$Lambda$1;-><init>(Lcom/liquable/nemo/chat/widget/MediaWidget;Lcom/liquable/nemo/chat/widget/MediaWidget$Action;Landroid/widget/ImageButton;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/liquable/nemo/chat/widget/MediaWidget;Lcom/liquable/nemo/chat/widget/MediaWidget$Action;Landroid/widget/ImageButton;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/chat/widget/MediaWidget$$Lambda$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/liquable/nemo/chat/widget/MediaWidget$$Lambda$1;-><init>(Lcom/liquable/nemo/chat/widget/MediaWidget;Lcom/liquable/nemo/chat/widget/MediaWidget$Action;Landroid/widget/ImageButton;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/MediaWidget$$Lambda$1;->arg$1:Lcom/liquable/nemo/chat/widget/MediaWidget;

    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/MediaWidget$$Lambda$1;->arg$2:Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    iget-object v2, p0, Lcom/liquable/nemo/chat/widget/MediaWidget$$Lambda$1;->arg$3:Landroid/widget/ImageButton;

    # invokes: Lcom/liquable/nemo/chat/widget/MediaWidget;->lambda$new$26(Lcom/liquable/nemo/chat/widget/MediaWidget$Action;Landroid/widget/ImageButton;Landroid/view/View;)V
    invoke-static {v0, v1, v2, p1}, Lcom/liquable/nemo/chat/widget/MediaWidget;->access$lambda$0(Lcom/liquable/nemo/chat/widget/MediaWidget;Lcom/liquable/nemo/chat/widget/MediaWidget$Action;Landroid/widget/ImageButton;Landroid/view/View;)V

    return-void
.end method
