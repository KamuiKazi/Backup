import pygame
import time
import random

pygame.init()

white = (255, 255, 255)
yellow = (255, 255, 102)
black = (0, 0, 0)
red = (213, 50, 80)
green = (0, 255, 0)
blue = (0, 0, 255)

Ant_rotaion = 0

win_width = 600
win_height = 400

win = pygame.display.set_mode((win_width, win_height))
pygame.display.set_caption('Hungry Hungry Fire Ant')

clock = pygame.time.Clock()

Ant_block = 10
Ant_speed = 15

font_style = pygame.font.SysFont("Arial", 25)
score_font = pygame.font.SysFont("Arial", 35)

def score(score):
    value = score_font.render("Score: " + str(score), True, yellow)
    win.blit(value, [0, 0])

def txt(msg, color):
    mesg = font_style.render(msg, True, color)
    win.blit(mesg, [win_width / 6, win_height / 3])

def main(win):
    
    old_food = []
    Eaten_food = 0
    run = True
    game_close = False

    x1 = win_width / 2
    y1 = win_height / 2

    x1_change = Ant_block
    y1_change = 0

    move_time = 0
    move_speed = 0.15
    clock = pygame.time.Clock()
    
    foodx = round(random.randrange(0, win_width - Ant_block) / 10.0) * 10.0
    foody = round(random.randrange(0, win_height - Ant_block) / 10.0) * 10.0

    while run:
        
        move_time += clock.get_rawtime()
        clock.tick()
        
        if move_time/1000 > move_speed:
            move_time = 0
            x1 += x1_change
            y1 += y1_change
        
        while game_close == True:
            
            win.fill(blue)
            txt("You Lost! Press Esc to quit, or R to restart", black)
            score(Eaten_food)
            pygame.display.update()
            
            for event in pygame.event.get():
                if event.type == pygame.KEYDOWN:
                    if event.key == pygame.K_ESCAPE:
                        run = False
                        game_close = False
                    if event.key == pygame.K_r:
                        main(win)

        for event in pygame.event.get():
            
            if event.type == pygame.QUIT:
                run = False
            if event.type == pygame.KEYDOWN:
                if event.key == pygame.K_LEFT:
                    x1_change = -Ant_block
                    y1_change = 0
                    
                elif event.key == pygame.K_RIGHT:
                    x1_change = Ant_block
                    y1_change = 0
                elif event.key == pygame.K_UP:
                    y1_change = -Ant_block
                    x1_change = 0
                elif event.key == pygame.K_DOWN:
                    y1_change = Ant_block
                    x1_change = 0

        if x1 >= win_width or x1 < 0 or y1 >= win_height or y1 < 0:
            game_close = True
        
        win.fill(blue)
        pygame.draw.rect(win, green, [foodx, foody, Ant_block, Ant_block])
        
        if x1 == foodx and y1 == foody:
            old_food.append([foodx, foody])
            Eaten_food += 1
            foodx = round(random.randrange(1, win_width - Ant_block) / 10.0) * 10.0
            foody = round(random.randrange(1, win_height - Ant_block) / 10.0) * 10.0
            
        if [foodx, foody] in old_food:
            foodx = round(random.randrange(1, win_width - Ant_block) / 10.0) * 10.0
            foody = round(random.randrange(1, win_height - Ant_block) / 10.0) * 10.0

        score(Eaten_food)
        pygame.draw.rect(win, red, [x1, y1, 10, 10])
        pygame.display.update()


    pygame.quit()
    quit()

main(win)