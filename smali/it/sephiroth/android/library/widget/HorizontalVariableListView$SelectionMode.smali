.class public final enum Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;
.super Ljava/lang/Enum;
.source "HorizontalVariableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/widget/HorizontalVariableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SelectionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;

.field public static final enum Multiple:Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;

.field public static final enum Single:Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;

    const-string/jumbo v1, "Single"

    invoke-direct {v0, v1, v2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;->Single:Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;

    new-instance v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;

    const-string/jumbo v1, "Multiple"

    invoke-direct {v0, v1, v3}, Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;->Multiple:Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;

    sget-object v1, Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;->Single:Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;

    aput-object v1, v0, v2

    sget-object v1, Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;->Multiple:Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;

    aput-object v1, v0, v3

    sput-object v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;->ENUM$VALUES:[Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;

    return-object v0
.end method

.method public static values()[Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;->ENUM$VALUES:[Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;

    array-length v1, v0

    new-array v2, v1, [Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
