.class Lcom/liquable/nemo/IntroActivity$3;
.super Ljava/lang/Object;
.source "IntroActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/IntroActivity;->demoIntro()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/IntroActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/IntroActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/IntroActivity;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/liquable/nemo/IntroActivity$3;->this$0:Lcom/liquable/nemo/IntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/liquable/nemo/IntroActivity$3;->this$0:Lcom/liquable/nemo/IntroActivity;

    # getter for: Lcom/liquable/nemo/IntroActivity;->autoPlayIntro:Z
    invoke-static {v0}, Lcom/liquable/nemo/IntroActivity;->access$1000(Lcom/liquable/nemo/IntroActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/liquable/nemo/IntroActivity$3;->this$0:Lcom/liquable/nemo/IntroActivity;

    const/4 v1, 0x1

    # invokes: Lcom/liquable/nemo/IntroActivity;->animate(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/IntroActivity;->access$1100(Lcom/liquable/nemo/IntroActivity;I)V

    .line 146
    iget-object v0, p0, Lcom/liquable/nemo/IntroActivity$3;->this$0:Lcom/liquable/nemo/IntroActivity;

    # invokes: Lcom/liquable/nemo/IntroActivity;->demoIntro()V
    invoke-static {v0}, Lcom/liquable/nemo/IntroActivity;->access$1200(Lcom/liquable/nemo/IntroActivity;)V

    .line 148
    :cond_0
    return-void
.end method
