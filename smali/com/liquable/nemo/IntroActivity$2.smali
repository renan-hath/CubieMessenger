.class Lcom/liquable/nemo/IntroActivity$2;
.super Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorListenerAdapter;
.source "IntroActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/IntroActivity;->animate(I)V
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
    .line 127
    iput-object p1, p0, Lcom/liquable/nemo/IntroActivity$2;->this$0:Lcom/liquable/nemo/IntroActivity;

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/liquable/nemo/IntroActivity$2;->this$0:Lcom/liquable/nemo/IntroActivity;

    const/4 v1, 0x0

    # setter for: Lcom/liquable/nemo/IntroActivity;->pageAnimationSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;
    invoke-static {v0, v1}, Lcom/liquable/nemo/IntroActivity;->access$802(Lcom/liquable/nemo/IntroActivity;Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    .line 131
    iget-object v0, p0, Lcom/liquable/nemo/IntroActivity$2;->this$0:Lcom/liquable/nemo/IntroActivity;

    # getter for: Lcom/liquable/nemo/IntroActivity;->backImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/liquable/nemo/IntroActivity;->access$900(Lcom/liquable/nemo/IntroActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    return-void
.end method
