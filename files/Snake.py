import pygame
import random
import colors
pygame.init()
font = pygame.font.Font(None, 24)
clock = pygame.time.Clock()
screen = pygame.display.set_mode((800,600))
pygame.display.set_caption("Griff's Snake Game")
running = True
grid = {
    "g": [20,20],
    "c": (30,30,30),
    "s": 5,
    "p": [0,0]
}
player = {
    "d": -1,
    "l": 21,
    "s": 0,
    "c": (colors.lime)
}
cells_in_use = []
for i in range(0,player["l"]):
    cells_in_use.append([grid["g"][0]//2+i,grid["g"][1]//2])
old_size = 3
fruitLocation = [random.randint(0,grid["g"][0]-1),random.randint(0,grid["g"][1]-1)]
while running:
    old_size = player["l"]
    if fruitLocation in cells_in_use:
        fruitLocation = [random.randint(0,grid["g"][0]-1),random.randint(0,grid["g"][1]-1)]
        player["l"] += 1
    for event in pygame.event.get():
        if event.type == pygame.KEYDOWN:
            if event.key == pygame.K_ESCAPE:
                running = False
        if event.type == pygame.QUIT:
            running = False
    key = pygame.key.get_pressed()
    if key[pygame.K_UP] and player["d"] != 2:
        player["d"] = 0
    if key[pygame.K_RIGHT] and (player["d"] != 3 and player["d"] != -1):
        player["d"] = 1
    if key[pygame.K_DOWN] and player["d"] != 0:
        player["d"] = 2
    if key[pygame.K_LEFT] and player["d"] != 1:
        player["d"] = 3
    screen.fill(colors.black)  
    temp = cells_in_use[0]
    match player["d"]:
        case 0:
            if old_size == player["l"]:
                cells_in_use.pop()
            if [temp[0],temp[1]-1] not in cells_in_use:
                cells_in_use.insert(0,[temp[0],temp[1]-1])
            else:
                player["c"] = colors.maroon
                running = False
        case 1:
            if old_size == player["l"]:
                cells_in_use.pop()
            if [temp[0]+1,temp[1]] not in cells_in_use:
                cells_in_use.insert(0,[temp[0]+1,temp[1]])
            else:
                player["c"] = colors.maroon
                running = False
        case 2:
            if old_size == player["l"]:
                cells_in_use.pop()
            if [temp[0],temp[1]+1] not in cells_in_use:
                cells_in_use.insert(0,[temp[0],temp[1]+1])
            else:
                player["c"] = colors.maroon
                running = False
        case 3:
            if old_size == player["l"]:
                cells_in_use.pop()
            if [temp[0]-1,temp[1]] not in cells_in_use:
                cells_in_use.insert(0,[temp[0]-1,temp[1]])
            else:
                player["c"] = colors.maroon
                running = False
    grid["p"] = [400-(grid["g"][0]*grid["s"]),300-(grid["g"][1]*grid["s"])]
    for i in range(0,grid["g"][0]):
        grid["p"][0] += grid["s"]*2 + 1
        grid["p"][1] = 300-(grid["g"][1]*grid["s"])
        for j in range(0,grid["g"][1]):
            grid["p"][1] += grid["s"]*2 + 1
            for k in range(0,len(cells_in_use)):
                cells_in_use[k][0] %= grid["g"][0]
                cells_in_use[k][1] %= grid["g"][1]
            if [i,j] == fruitLocation:
                pygame.draw.circle(screen,colors.red,grid["p"],grid["s"])
            elif [i,j] not in cells_in_use:
                pygame.draw.circle(screen,grid["c"],grid["p"],grid["s"])
            else:
                pygame.draw.circle(screen,player["c"],grid["p"],grid["s"])
    text = font.render("Length: "+str(player["l"]), True, colors.white) 
    screen.blit(text,(5,5))
    pygame.display.flip()
    if player["l"] < grid["g"][0]//2:
        clock.tick(10)
    else:
        clock.tick(10*player["l"]//grid["g"][0]*2)
pygame.quit()
