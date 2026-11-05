<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Valorant Protocol - Agents Gallery</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="index.html">VALORANT PROTOCOL</a>
            <div class="collapse navbar-collapse">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link active" href="index.html">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="details.html">Details</a></li>
                    <li class="nav-item"><a class="nav-link" href="about.html">About</a></li>
                    <li class="nav-item"><a class="nav-link" href="new-character-form.html">Add a Character</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container my-5">
        <h1 class="text-center mb-2 fw-bold" style="color: #ff4655;">VALORANT AGENTS</h1>
        <p class="text-center text-light mb-4">Explore the roster of elite agents with unique tactical abilities.</p>
        
        <!-- Search Bar -->
        <div class="row justify-content-center mb-5">
            <div class="col-md-6">
                <form onsubmit="return false;" class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Search Agent by name or role..." aria-label="Search">
                    <button class="btn btn-primary" type="button">Search</button>
                </form>
            </div>
        </div>

        <!-- 5 Valorant Characters -->
        <div class="row g-4">
            <!-- Jett -->
            <div class="col-md-4">
                <div class="card character-card h-100 shadow">
                    <img src="images/jett.jfif" class="card-img-top" alt="Jett">
                    <div class="card-body">
                        <h4 class="card-title fw-bold text-white">Jett</h4>
                        <p class="card-text"><span class="badge badge-duelist">Duelist</span></p>
                        <p class="card-text text-light"><strong>Origin:</strong> South Korea</p>
                        <p class="card-text text-light">Agile duelist using wind abilities to outmaneuver opponents quickly.</p>
                        <a href="details.html" class="btn btn-primary w-100 mt-2">View Details</a>
                    </div>
                </div>
            </div>

            <!-- Reyna -->
            <div class="col-md-4">
                <div class="card character-card h-100 shadow">
                    <img src="images/reyna.png" class="card-img-top" alt="Reyna">
                    <div class="card-body">
                        <h4 class="card-title fw-bold text-white">Reyna</h4>
                        <p class="card-text"><span class="badge badge-duelist">Duelist</span></p>
                        <p class="card-text text-light"><strong>Origin:</strong> Mexico</p>
                        <p class="card-text text-light">Dominates single combat, thriving on every kill she scores.</p>
                        <a href="details-reyna.html" class="btn btn-primary w-100 mt-2">View Details</a>
                    </div>
                </div>
            </div>

            <!-- Sova -->
            <div class="col-md-4">
                <div class="card character-card h-100 shadow">
                    <img src="images/sova.png" class="card-img-top" alt="Sova">
                    <div class="card-body">
                        <h4 class="card-title fw-bold text-white">Sova</h4>
                        <p class="card-text"><span class="badge badge-initiator">Initiator</span></p>
                        <p class="card-text text-light"><strong>Origin:</strong> Russia</p>
                        <p class="card-text text-light">Tracks, finds, and eliminates enemies with ruthless efficiency.</p>
                        <a href="details-sova.html" class="btn btn-primary w-100 mt-2">View Details</a>
                    </div>
                </div>
            </div>

            <!-- Omen -->
            <div class="col-md-4">
                <div class="card character-card h-100 shadow">
                    <img src="images/omen.jfif" class="card-img-top" alt="Omen">
                    <div class="card-body">
                        <h4 class="card-title fw-bold text-white">Omen</h4>
                        <p class="card-text"><span class="badge badge-controller">Controller</span></p>
                        <p class="card-text text-light"><strong>Origin:</strong> Unknown</p>
                        <p class="card-text text-light">Hunts in the shadows, blinding foes and teleporting across the map.</p>
                        <a href="details-omen.html" class="btn btn-primary w-100 mt-2">View Details</a>
                    </div>
                </div>
            </div>

            <!-- Killjoy -->
            <div class="col-md-4">
                <div class="card character-card h-100 shadow">
                    <img src="images/killjoy.jfif" class="card-img-top" alt="Killjoy">
                    <div class="card-body">
                        <h4 class="card-title fw-bold text-white">Killjoy</h4>
                        <p class="card-text"><span class="badge badge-sentinel">Sentinel</span></p>
                        <p class="card-text text-light"><strong>Origin:</strong> Germany</p>
                        <p class="card-text text-light">Secures key positions easily with an arsenal of devices and turrets.</p>
                        <a href="details-killjoy.html" class="btn btn-primary w-100 mt-2">View Details</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>