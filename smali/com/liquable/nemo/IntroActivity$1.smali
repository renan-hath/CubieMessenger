.class Lcom/liquable/nemo/IntroActivity$1;
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
    .line 106
    iput-object p1, p0, Lcom/liquable/nemo/IntroActivity$1;->this$0:Lcom/liquable/nemo/IntroActivity;

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V
    .locals 6
    .param p1, "animation"    # Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    .prologue
    const/4 v5, 0x2

    .line 109
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorListenerAdapter;->onAnimationEnd(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V

    .line 111
    iget-object v2, p0, Lcom/liquable/nemo/IntroActivity$1;->this$0:Lcom/liquable/nemo/IntroActivity;

    # getter for: Lcom/liquable/nemo/IntroActivity;->titleTextView:Lcom/liquable/nemo/widget/AutoResizeTextView;
    invoke-static {v2}, Lcom/liquable/nemo/IntroActivity;->access$400(Lcom/liquable/nemo/IntroActivity;)Lcom/liquable/nemo/widget/AutoResizeTextView;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/IntroActivity$1;->this$0:Lcom/liquable/nemo/IntroActivity;

    # getter for: Lcom/liquable/nemo/IntroActivity;->titlesOfIntro:[I
    invoke-static {v3}, Lcom/liquable/nemo/IntroActivity;->access$200(Lcom/liquable/nemo/IntroActivity;)[I

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/IntroActivity$1;->this$0:Lcom/liquable/nemo/IntroActivity;

    # getter for: Lcom/liquable/nemo/IntroActivity;->currentIntroIndex:I
    invoke-static {v4}, Lcom/liquable/nemo/IntroActivity;->access$300(Lcom/liquable/nemo/IntroActivity;)I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/widget/AutoResizeTextView;->setText(I)V

    .line 112
    iget-object v2, p0, Lcom/liquable/nemo/IntroActivity$1;->this$0:Lcom/liquable/nemo/IntroActivity;

    # getter for: Lcom/liquable/nemo/IntroActivity;->titleTextView:Lcom/liquable/nemo/widget/AutoResizeTextView;
    invoke-static {v2}, Lcom/liquable/nemo/IntroActivity;->access$400(Lcom/liquable/nemo/IntroActivity;)Lcom/liquable/nemo/widget/AutoResizeTextView;

    move-result-object v2

    const-string/jumbo v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    .line 114
    .local v1, "textFadeIn":Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/liquable/nemo/IntroActivity$1;->this$0:Lcom/liquable/nemo/IntroActivity;

    # getter for: Lcom/liquable/nemo/IntroActivity;->descriptionTextView:Lcom/liquable/nemo/widget/AutoResizeTextView;
    invoke-static {v2}, Lcom/liquable/nemo/IntroActivity;->access$600(Lcom/liquable/nemo/IntroActivity;)Lcom/liquable/nemo/widget/AutoResizeTextView;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/IntroActivity$1;->this$0:Lcom/liquable/nemo/IntroActivity;

    # getter for: Lcom/liquable/nemo/IntroActivity;->descriptionsOfIntro:[I
    invoke-static {v3}, Lcom/liquable/nemo/IntroActivity;->access$500(Lcom/liquable/nemo/IntroActivity;)[I

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/IntroActivity$1;->this$0:Lcom/liquable/nemo/IntroActivity;

    # getter for: Lcom/liquable/nemo/IntroActivity;->currentIntroIndex:I
    invoke-static {v4}, Lcom/liquable/nemo/IntroActivity;->access$300(Lcom/liquable/nemo/IntroActivity;)I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/widget/AutoResizeTextView;->setText(I)V

    .line 115
    iget-object v2, p0, Lcom/liquable/nemo/IntroActivity$1;->this$0:Lcom/liquable/nemo/IntroActivity;

    # getter for: Lcom/liquable/nemo/IntroActivity;->descriptionTextView:Lcom/liquable/nemo/widget/AutoResizeTextView;
    invoke-static {v2}, Lcom/liquable/nemo/IntroActivity;->access$600(Lcom/liquable/nemo/IntroActivity;)Lcom/liquable/nemo/widget/AutoResizeTextView;

    move-result-object v2

    const-string/jumbo v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    .line 120
    .local v0, "descriptionTextFadeIn":Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/liquable/nemo/IntroActivity$1;->this$0:Lcom/liquable/nemo/IntroActivity;

    # getter for: Lcom/liquable/nemo/IntroActivity;->fadeDuration:I
    invoke-static {v2}, Lcom/liquable/nemo/IntroActivity;->access$700(Lcom/liquable/nemo/IntroActivity;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    .line 121
    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->start()V

    .line 122
    iget-object v2, p0, Lcom/liquable/nemo/IntroActivity$1;->this$0:Lcom/liquable/nemo/IntroActivity;

    # getter for: Lcom/liquable/nemo/IntroActivity;->fadeDuration:I
    invoke-static {v2}, Lcom/liquable/nemo/IntroActivity;->access$700(Lcom/liquable/nemo/IntroActivity;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    .line 123
    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->start()V

    .line 124
    return-void

    .line 112
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 115
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
