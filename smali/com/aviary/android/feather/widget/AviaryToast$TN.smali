.class Lcom/aviary/android/feather/widget/AviaryToast$TN;
.super Ljava/lang/Object;
.source "AviaryToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/widget/AviaryToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TN"
.end annotation


# instance fields
.field final mHide:Ljava/lang/Runnable;

.field mParams:Landroid/view/WindowManager$LayoutParams;

.field final mShow:Ljava/lang/Runnable;

.field mWm:Landroid/view/WindowManager;

.field final synthetic this$0:Lcom/aviary/android/feather/widget/AviaryToast;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/widget/AviaryToast;)V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 124
    iput-object p1, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN;->this$0:Lcom/aviary/android/feather/widget/AviaryToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v1, Lcom/aviary/android/feather/widget/AviaryToast$TN$1;

    invoke-direct {v1, p0}, Lcom/aviary/android/feather/widget/AviaryToast$TN$1;-><init>(Lcom/aviary/android/feather/widget/AviaryToast$TN;)V

    iput-object v1, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN;->mShow:Ljava/lang/Runnable;

    .line 112
    new-instance v1, Lcom/aviary/android/feather/widget/AviaryToast$TN$2;

    invoke-direct {v1, p0}, Lcom/aviary/android/feather/widget/AviaryToast$TN$2;-><init>(Lcom/aviary/android/feather/widget/AviaryToast$TN;)V

    iput-object v1, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN;->mHide:Ljava/lang/Runnable;

    .line 120
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 125
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 126
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 127
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 128
    const/16 v1, 0x98

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 130
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 131
    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 132
    sget v1, Lcom/aviary/android/feather/R$style;->AviaryAnimations_AviaryToast:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 133
    const-string/jumbo v1, "Toast"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 134
    return-void
.end method


# virtual methods
.method public handleHide()V
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryToast$TN;->removeView()V

    .line 178
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN;->this$0:Lcom/aviary/android/feather/widget/AviaryToast;

    # getter for: Lcom/aviary/android/feather/widget/AviaryToast;->mLayoutListener:Lcom/aviary/android/feather/widget/AviaryToast$LayoutListener;
    invoke-static {v0}, Lcom/aviary/android/feather/widget/AviaryToast;->access$000(Lcom/aviary/android/feather/widget/AviaryToast;)Lcom/aviary/android/feather/widget/AviaryToast$LayoutListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN;->this$0:Lcom/aviary/android/feather/widget/AviaryToast;

    # getter for: Lcom/aviary/android/feather/widget/AviaryToast;->mLayoutListener:Lcom/aviary/android/feather/widget/AviaryToast$LayoutListener;
    invoke-static {v0}, Lcom/aviary/android/feather/widget/AviaryToast;->access$000(Lcom/aviary/android/feather/widget/AviaryToast;)Lcom/aviary/android/feather/widget/AviaryToast$LayoutListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/aviary/android/feather/widget/AviaryToast$LayoutListener;->onHidden()V

    .line 181
    :cond_0
    return-void
.end method

.method public handleShow()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 146
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN;->this$0:Lcom/aviary/android/feather/widget/AviaryToast;

    iget-object v1, v1, Lcom/aviary/android/feather/widget/AviaryToast;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN;->this$0:Lcom/aviary/android/feather/widget/AviaryToast;

    iget-object v2, v2, Lcom/aviary/android/feather/widget/AviaryToast;->mNextView:Landroid/view/View;

    if-eq v1, v2, :cond_3

    .line 147
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryToast$TN;->handleHide()V

    .line 148
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN;->this$0:Lcom/aviary/android/feather/widget/AviaryToast;

    iget-object v2, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN;->this$0:Lcom/aviary/android/feather/widget/AviaryToast;

    iget-object v2, v2, Lcom/aviary/android/feather/widget/AviaryToast;->mNextView:Landroid/view/View;

    iput-object v2, v1, Lcom/aviary/android/feather/widget/AviaryToast;->mView:Landroid/view/View;

    .line 149
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN;->this$0:Lcom/aviary/android/feather/widget/AviaryToast;

    iget v0, v1, Lcom/aviary/android/feather/widget/AviaryToast;->mGravity:I

    .line 150
    .local v0, "gravity":I
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 151
    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 152
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    .line 154
    :cond_0
    and-int/lit8 v1, v0, 0x70

    const/16 v2, 0x70

    if-ne v1, v2, :cond_1

    .line 155
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN;->this$0:Lcom/aviary/android/feather/widget/AviaryToast;

    iget v2, v2, Lcom/aviary/android/feather/widget/AviaryToast;->mX:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 158
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN;->this$0:Lcom/aviary/android/feather/widget/AviaryToast;

    iget v2, v2, Lcom/aviary/android/feather/widget/AviaryToast;->mY:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 159
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN;->this$0:Lcom/aviary/android/feather/widget/AviaryToast;

    iget v2, v2, Lcom/aviary/android/feather/widget/AviaryToast;->mVerticalMargin:F

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 160
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN;->this$0:Lcom/aviary/android/feather/widget/AviaryToast;

    iget v2, v2, Lcom/aviary/android/feather/widget/AviaryToast;->mHorizontalMargin:F

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 162
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN;->this$0:Lcom/aviary/android/feather/widget/AviaryToast;

    iget-object v1, v1, Lcom/aviary/android/feather/widget/AviaryToast;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 163
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN;->this$0:Lcom/aviary/android/feather/widget/AviaryToast;

    iget-object v1, v1, Lcom/aviary/android/feather/widget/AviaryToast;->mView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 164
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN;->this$0:Lcom/aviary/android/feather/widget/AviaryToast;

    iget-object v2, v2, Lcom/aviary/android/feather/widget/AviaryToast;->mView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 167
    :cond_2
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN;->this$0:Lcom/aviary/android/feather/widget/AviaryToast;

    iget-object v2, v2, Lcom/aviary/android/feather/widget/AviaryToast;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN;->this$0:Lcom/aviary/android/feather/widget/AviaryToast;

    iget-object v1, v1, Lcom/aviary/android/feather/widget/AviaryToast;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 170
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN;->this$0:Lcom/aviary/android/feather/widget/AviaryToast;

    # getter for: Lcom/aviary/android/feather/widget/AviaryToast;->mLayoutListener:Lcom/aviary/android/feather/widget/AviaryToast$LayoutListener;
    invoke-static {v1}, Lcom/aviary/android/feather/widget/AviaryToast;->access$000(Lcom/aviary/android/feather/widget/AviaryToast;)Lcom/aviary/android/feather/widget/AviaryToast$LayoutListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 171
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN;->this$0:Lcom/aviary/android/feather/widget/AviaryToast;

    # getter for: Lcom/aviary/android/feather/widget/AviaryToast;->mLayoutListener:Lcom/aviary/android/feather/widget/AviaryToast$LayoutListener;
    invoke-static {v1}, Lcom/aviary/android/feather/widget/AviaryToast;->access$000(Lcom/aviary/android/feather/widget/AviaryToast;)Lcom/aviary/android/feather/widget/AviaryToast$LayoutListener;

    move-result-object v1

    iget-object v2, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN;->this$0:Lcom/aviary/android/feather/widget/AviaryToast;

    iget-object v2, v2, Lcom/aviary/android/feather/widget/AviaryToast;->mView:Landroid/view/View;

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/widget/AviaryToast$LayoutListener;->onShown(Landroid/view/View;)V

    .line 174
    .end local v0    # "gravity":I
    :cond_3
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN;->this$0:Lcom/aviary/android/feather/widget/AviaryToast;

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AviaryToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 142
    return-void
.end method

.method removeView()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN;->this$0:Lcom/aviary/android/feather/widget/AviaryToast;

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AviaryToast;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN;->this$0:Lcom/aviary/android/feather/widget/AviaryToast;

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AviaryToast;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN;->this$0:Lcom/aviary/android/feather/widget/AviaryToast;

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AviaryToast;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN;->mWm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN;->this$0:Lcom/aviary/android/feather/widget/AviaryToast;

    iget-object v1, v1, Lcom/aviary/android/feather/widget/AviaryToast;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN;->this$0:Lcom/aviary/android/feather/widget/AviaryToast;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/aviary/android/feather/widget/AviaryToast;->mView:Landroid/view/View;

    .line 191
    :cond_1
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN;->this$0:Lcom/aviary/android/feather/widget/AviaryToast;

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AviaryToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 138
    return-void
.end method
