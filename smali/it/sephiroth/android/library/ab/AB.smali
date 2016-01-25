.class public Lit/sephiroth/android/library/ab/AB;
.super Ljava/lang/Object;
.source "AB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/sephiroth/android/library/ab/AB$Group;
    }
.end annotation


# static fields
.field private static instance:Lit/sephiroth/android/library/ab/AB;


# instance fields
.field private group:Lit/sephiroth/android/library/ab/AB$Group;

.field private final hashCode:I

.field private final manager:Lit/sephiroth/android/library/ab/ABSettingsFactory$ABSettingsManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/ab/AB;->setup(Landroid/content/Context;)Lit/sephiroth/android/library/ab/ABSettingsFactory$ABSettingsManager;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/ab/AB;->manager:Lit/sephiroth/android/library/ab/ABSettingsFactory$ABSettingsManager;

    .line 32
    iget-object v0, p0, Lit/sephiroth/android/library/ab/AB;->manager:Lit/sephiroth/android/library/ab/ABSettingsFactory$ABSettingsManager;

    invoke-virtual {v0}, Lit/sephiroth/android/library/ab/ABSettingsFactory$ABSettingsManager;->getUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/ab/AB;->hashCode:I

    .line 38
    return-void
.end method

.method private generateGroup()Lit/sephiroth/android/library/ab/AB$Group;
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lit/sephiroth/android/library/ab/AB;->hashCode:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 68
    sget-object v0, Lit/sephiroth/android/library/ab/AB$Group;->GroupA:Lit/sephiroth/android/library/ab/AB$Group;

    .line 70
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lit/sephiroth/android/library/ab/AB$Group;->GroupB:Lit/sephiroth/android/library/ab/AB$Group;

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lit/sephiroth/android/library/ab/AB;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    sget-object v1, Lit/sephiroth/android/library/ab/AB;->instance:Lit/sephiroth/android/library/ab/AB;

    if-nez v1, :cond_1

    .line 85
    const-class v2, Lit/sephiroth/android/library/ab/AB;

    monitor-enter v2

    .line 86
    :try_start_0
    sget-object v0, Lit/sephiroth/android/library/ab/AB;->instance:Lit/sephiroth/android/library/ab/AB;

    .line 87
    .local v0, "inst":Lit/sephiroth/android/library/ab/AB;
    if-nez v0, :cond_0

    .line 88
    const-class v3, Lit/sephiroth/android/library/ab/AB;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 89
    :try_start_1
    new-instance v1, Lit/sephiroth/android/library/ab/AB;

    invoke-direct {v1, p0}, Lit/sephiroth/android/library/ab/AB;-><init>(Landroid/content/Context;)V

    sput-object v1, Lit/sephiroth/android/library/ab/AB;->instance:Lit/sephiroth/android/library/ab/AB;

    .line 88
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :cond_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 94
    .end local v0    # "inst":Lit/sephiroth/android/library/ab/AB;
    :cond_1
    sget-object v1, Lit/sephiroth/android/library/ab/AB;->instance:Lit/sephiroth/android/library/ab/AB;

    return-object v1

    .line 88
    .restart local v0    # "inst":Lit/sephiroth/android/library/ab/AB;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 85
    .end local v0    # "inst":Lit/sephiroth/android/library/ab/AB;
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private setup(Landroid/content/Context;)Lit/sephiroth/android/library/ab/ABSettingsFactory$ABSettingsManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-static {p1}, Lit/sephiroth/android/library/ab/ABSettingsFactory;->create(Landroid/content/Context;)Lit/sephiroth/android/library/ab/ABSettingsFactory$ABSettingsManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getGroup()Lit/sephiroth/android/library/ab/AB$Group;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lit/sephiroth/android/library/ab/AB;->group:Lit/sephiroth/android/library/ab/AB$Group;

    if-nez v0, :cond_0

    .line 46
    invoke-direct {p0}, Lit/sephiroth/android/library/ab/AB;->generateGroup()Lit/sephiroth/android/library/ab/AB$Group;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/ab/AB;->group:Lit/sephiroth/android/library/ab/AB$Group;

    .line 48
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/ab/AB;->group:Lit/sephiroth/android/library/ab/AB$Group;

    return-object v0
.end method
