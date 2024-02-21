SELECT *
FROM dbo.spotify

SELECT COUNT(*) AS Total_Records
FROM dbo.spotify

-- Top 10 Artists by stream
SELECT TOP 10 [Artists Name],Streams
FROM dbo.spotify
WHERE Streams > 800000000
GROUP BY Streams,[Artists Name]
ORDER BY Streams DESC;


-- Number of songs released in the year 2023
SELECT COUNT([Track Name]) AS Total_Records_in_2023
FROM dbo.spotify
WHERE [Released Year] = '2023';

-- Top Artists and their tracks by In Spotify Playlists
SELECT TOP 10 [Artists Name], [Track Name], [In Spotify Playlists]
FROM dbo.spotify
WHERE [In Spotify Playlists] > 40000
GROUP BY [Track Name],[Artists Name],[In Spotify Playlists]
ORDER BY [In Spotify Playlists] DESC;

-- Top Artists and their tracks by In Apple Playlists
SELECT TOP 10 [Artists Name], [Track Name], [In Apple Playlists]
FROM dbo.spotify
WHERE [In Apple Playlists] > 400
GROUP BY [Track Name],[Artists Name],[In Apple Playlists]
ORDER BY [In Apple Playlists] DESC;

-- Top Artists and their tracks by In Deezer Playlists
SELECT TOP 10 [Artists Name], [Track Name], [In Deezer Playlists]
FROM dbo.spotify
WHERE [In Deezer Playlists] > 4000
GROUP BY [Track Name],[Artists Name],[In Deezer Playlists]
ORDER BY [In Deezer Playlists] DESC;
 
-- Tracks that has the highest BPM
SELECT TOP 10 [Track Name],BPM
FROM dbo.spotify
WHERE BPM > 150
GROUP BY BPM, [Track Name]
ORDER BY BPM DESC;

-- Number of songs released in each year
SELECT TOP 10 [Released Year], COUNT([Track Name]) AS [Number of Songs]
FROM dbo.spotify
GROUP BY [Released Year]
ORDER BY [Number of Songs] DESC;

-- Which tracks are better for dancing? (Here you have to use danceability %)
SELECT TOP 5 [Track Name], [Danceability_%]
FROM dbo.spotify
WHERE [Danceability_%] > 50
ORDER BY [Danceability_%] DESC;

-- Which tracks has the highest acousticness?
SELECT TOP 5 [Track Name], [acousticness_%]
FROM dbo.spotify
WHERE [acousticness_%] > 50
ORDER BY [acousticness_%] DESC;

-- Which mode has more songs(Major or Minor)?
SELECT Mode,COUNT([Track Name]) AS [Number of Songs]
FROM dbo.spotify
GROUP BY Mode

-- Which tracks has the highest energy% ?
SELECT TOP 5 [Track Name], [energy_%]
FROM dbo.spotify
WHERE [energy_%] > 50
ORDER BY [energy_%] DESC;
